package com.nms.controllers;

import com.nms.entities.User;
import com.nms.models.AuthenticationRequest;
import com.nms.models.AuthenticationResponse;
import com.nms.security.AuthenticatedUser;
import com.nms.services.UsersService;
import com.nms.utils.JwtUtil;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

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


    @Autowired
    JwtUtil util;

    @Autowired
    AuthenticatedUser authenticatedUser;

    @GetMapping("/status/check")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @Secured({"ROLE_ADMIN"})
    public String status() {
        return "Working on port " + env.getProperty("local.server.port") + ", with token = "
                + env.getProperty("token.secret") + authenticatedUser.getName() + " \n" + authenticatedUser.getUser().getAppUserEmail();
    }

    @ApiOperation(value = "get all activity", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @GetMapping(value = "/{userId}", produces = {MediaType.APPLICATION_JSON_VALUE})
    // @PreAuthorize("hasAuthority('WRITE_PRIVILEGE')")
    @Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
    public ResponseEntity<User> getUser(@PathVariable("userId") String userId) {

        User userDto = usersService.getUserByUserId(userId);

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

    @ApiOperation(value = "get all activity", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<List<User>> getAllUser() {

        List<User> userDto = usersService.getUsers();

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

    @ApiOperation("User login")
    @ApiResponses(value = {@ApiResponse(code = 200, message = "Response Headers")})
    @PostMapping("/login")
    public ResponseEntity<?> Login(@RequestBody AuthenticationRequest request) throws Exception {
        String userName = "nms";
        String password = "password";
        User user = usersService.insertUser(request);
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(request.getAppUserEmail(), password));

        } catch (BadCredentialsException ex) {
            throw new Exception("Invalid Username or password");
        }
        final UserDetails userDetails = usersService.loadUserByUsername(user.getAppUserEmail());
        String s = util.generateToken(userDetails);
        AuthenticationResponse response = new AuthenticationResponse(s);

        return ResponseEntity.ok(response);
    }

    @ApiOperation(value = "get all activity", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    @PostMapping("/assignroletouser")
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<User> AssignRoleToUser(String userId, Long roleId) {

        User userDto = usersService.AssignRoleToUser(userId, roleId);

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

}
