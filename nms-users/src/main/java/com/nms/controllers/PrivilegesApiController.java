package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.rest.server.apis.PrivilegesApi;
import com.nms.rest.server.models.Privilege;
import com.nms.rest.server.models.PrivilegeDto;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class PrivilegesApiController implements PrivilegesApi {

    private static final Logger log = LoggerFactory.getLogger(PrivilegesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public PrivilegesApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<Void> addPrivilege(@Parameter(in = ParameterIn.DEFAULT, description = "Role to add", schema=@Schema()) @Valid @RequestBody PrivilegeDto body) {
        String accept = request.getHeader("Accept");
        return new ResponseEntity<Void>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<Void> deletePrivilegeById(@Parameter(in = ParameterIn.PATH, description = "The Privilege Id.", required=true, schema=@Schema()) @PathVariable("privilegeId") Long privilegeId) {
        String accept = request.getHeader("Accept");
        return new ResponseEntity<Void>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<Privilege> getPrivilegeByName(@Parameter(in = ParameterIn.PATH, description = "The roleName used to update the service information", required=true, schema=@Schema()) @PathVariable("privilegeName") String privilegeName) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<Privilege>(objectMapper.readValue("{\n  \"updatedBy\" : \"abcd -123-dbff-dsds\",\n  \"createdBy\" : \"abcd -123-dbff-dsds\",\n  \"name\" : \"WRITE_PRIVILEGE\",\n  \"id\" : 1\n}", Privilege.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<Privilege>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<Privilege>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<List<Privilege>> getPrivileges() {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<List<Privilege>>(objectMapper.readValue("[ {\n  \"updatedBy\" : \"abcd -123-dbff-dsds\",\n  \"createdBy\" : \"abcd -123-dbff-dsds\",\n  \"name\" : \"WRITE_PRIVILEGE\",\n  \"id\" : 1\n}, {\n  \"updatedBy\" : \"abcd -123-dbff-dsds\",\n  \"createdBy\" : \"abcd -123-dbff-dsds\",\n  \"name\" : \"WRITE_PRIVILEGE\",\n  \"id\" : 1\n} ]", List.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<List<Privilege>>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<List<Privilege>>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<Privilege> updatePrivilegeById(@Parameter(in = ParameterIn.PATH, description = "The PrivilegeId used to update the service information", required=true, schema=@Schema()) @PathVariable("privilegeId") Long privilegeId,@Parameter(in = ParameterIn.DEFAULT, description = "The Privilege to update.", required=true, schema=@Schema()) @Valid @RequestBody PrivilegeDto body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<Privilege>(objectMapper.readValue("{\n  \"updatedBy\" : \"abcd -123-dbff-dsds\",\n  \"createdBy\" : \"abcd -123-dbff-dsds\",\n  \"name\" : \"WRITE_PRIVILEGE\",\n  \"id\" : 1\n}", Privilege.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<Privilege>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<Privilege>(HttpStatus.NOT_IMPLEMENTED);
    }

}
