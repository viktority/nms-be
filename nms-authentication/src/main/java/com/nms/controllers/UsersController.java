package com.nms.controllers;

import com.nms.entities.User;
import com.nms.rest.server.models.LoginDto;
import com.nms.rest.server.models.UserDto;
import com.nms.services.UsersService;
import io.swagger.annotations.*;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private Environment env;

    @Autowired
    UsersService usersService;

    @GetMapping("/status/check")
    @ApiImplicitParams({@ApiImplicitParam(name = "Authorization", value = "token", paramType = "header")})
    //@PreAuthorize("hasAuthority('WRITE_PRIVILEGE')")
    public String status() {
        return "Working on port " + env.getProperty("local.server.port") + ", with token = "
                + env.getProperty("token.secret");
    }

    @PostMapping(path = "/signup", consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = {
            MediaType.APPLICATION_JSON_VALUE})

    @ApiOperation(value = "get all activity", notes = "")
    public ResponseEntity<User> createUser(@RequestBody UserDto userDetails) {
        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        User createdUser = usersService.createUser(userDetails);

        return ResponseEntity.status(HttpStatus.CREATED).body(createdUser);
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
   // @PreAuthorize("hasAuthority('EDIT_PRIVILEGE')")
    public ResponseEntity<List<User>> getAllUser() {

        List<User> userDto = usersService.getUsers();

        return ResponseEntity.status(HttpStatus.OK).body(userDto);
    }

    @ApiOperation("User login")
    @ApiResponses(value = {@ApiResponse(code = 200, message = "Response Headers")})
    @PostMapping("/login")
    public void Login(@RequestBody LoginDto loginDto) {
        throw new IllegalStateException("This Method should not be called!");
    }

    @ApiOperation(value = "Activate account with generated Token!", notes = "")
    @GetMapping(path = "/activate", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<?> activateAccount(@RequestParam("token") String token) {

        return usersService.activateProfile(token);
    }


}
