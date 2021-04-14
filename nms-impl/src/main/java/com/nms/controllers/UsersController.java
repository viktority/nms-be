package com.nms.controllers;

import com.nms.entities.User;
import com.nms.models.AuthenticationResponse;
import com.nms.models.LoginRequestModel;
import com.nms.security.AuthenticatedUser;
import com.nms.services.UsersService;
import com.nms.utils.JwtUtil;
import io.swagger.annotations.*;
import ncc.NccResponseModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.ResourceAccessException;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.List;


@RestController
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private Environment env;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    UsersService usersService;

    @Value("${nms.server.url:http://apps.showcase.com.ng/api-server/identity/validate/?token=}")
    private String nmsServerUrl;

    @Value("${nms.api.key:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhcHBsaWNhdGlvbklkIjoibnVtYmVyaW5nIiwiZXhwIjozNjg1MjgyNjIxLCJpYXQiOjE1Mzc3OTg5NzQsInVzZXJuYW1lIjoibnVtYmVyaW5nX2FkbWluIn0.EeMzWArhIMw0PnRjWX4oWlT985Id3DXHJS8mZzAqmz0}")
    private String apiKey;

    @Autowired
    JwtUtil util;

    @Autowired
    AuthenticatedUser authenticatedUser;

    @GetMapping("/status/check")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    public String status() {
        return "Working on port " + env.getProperty("local.server.port") + ", with token = "
                + env.getProperty("token.secret") + authenticatedUser.getName() + " \n" + authenticatedUser.getUser().getAppUserEmail();
    }

    @ApiOperation(value = "get all activity", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @GetMapping(value = "/{userId}", produces = {MediaType.APPLICATION_JSON_VALUE})
    // @PreAuthorize("hasAuthority('WRITE_PRIVILEGE')")
    public ResponseEntity<User> getUser(@PathVariable("userId") String userId) {

        User userDto = usersService.getUserByUserId(userId);

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

    @ApiOperation(value = "get all activity", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<User>> getAllUser() {

        List<User> userDto = usersService.getUsers();

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

    @ApiOperation("User login")
    @ApiResponses(value = {@ApiResponse(code = 200, message = "Response Headers")})
    @PostMapping("/login")
    public ResponseEntity<?> Login(@RequestBody LoginRequestModel request) throws Exception {

        String url = nmsServerUrl + request.getToken();
        HttpHeaders headers = new HttpHeaders();
        MediaType mediaType = MediaType.parseMediaType("application/json");
        headers.setContentType(mediaType);
        headers.set("Authorization", apiKey);
        headers.setAccept(Collections.singletonList(MediaType.ALL));
        HttpComponentsClientHttpRequestFactory clientHttpRequestFactory = new HttpComponentsClientHttpRequestFactory();
        clientHttpRequestFactory.setConnectTimeout(20000);

        HttpEntity<Object> serverRequest = new HttpEntity<>(headers);

        ResponseEntity<NccResponseModel> exchange;
        try {
            exchange = new RestTemplate(clientHttpRequestFactory).exchange(url, HttpMethod.GET, serverRequest, NccResponseModel.class);
        } catch (ResourceAccessException ex) {
            return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).build();
        }

        NccResponseModel authenticationRequest = exchange.getBody();

        if (authenticationRequest == null) {
            return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).build();
        }

        String userName = "nms";
        String password = "password";
        User user = usersService.insertUser(authenticationRequest);
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authenticationRequest.getAppUserEmail(), password));

        } catch (BadCredentialsException ex) {
            throw new Exception("Invalid Username or password");
        }
        final UserDetails userDetails = usersService.loadUserByUsername(user.getAppUserEmail());
        String s = util.generateToken(userDetails);
        authenticationRequest.setToken(s);
        AuthenticationResponse response = new AuthenticationResponse(s);

        return ResponseEntity.ok(authenticationRequest);
    }

    @ApiOperation(value = "get all activity", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @PostMapping("/assignroletouser")
    public ResponseEntity<User> AssignRoleToUser(String userId, Long roleId) {

        User userDto = usersService.AssignRoleToUser(userId, roleId);

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

}
