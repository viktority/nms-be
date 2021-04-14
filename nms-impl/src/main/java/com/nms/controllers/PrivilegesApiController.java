package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.PrivilegesApi;
import com.nms.models.Privilege;
import com.nms.models.PrivilegeDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.PrivilegeService;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;


@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class PrivilegesApiController implements PrivilegesApi {

    private static final Logger log = LoggerFactory.getLogger(PrivilegesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    private PrivilegeService privilegeService;

    @org.springframework.beans.factory.annotation.Autowired
    public PrivilegesApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<Privilege> addPrivilege(@Parameter(in = ParameterIn.DEFAULT, description = "Role to add", schema = @Schema()) @Valid @RequestBody PrivilegeDto body) {
        String accept = request.getHeader("Accept");
        Privilege created = privilegeService.addPrivilege(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deletePrivilegeById(@Parameter(in = ParameterIn.PATH, description = "The Privilege Id.", required = true, schema = @Schema()) @PathVariable("privilegeId") Long privilegeId) {
        boolean deleted = privilegeService.deletePrivilegeById(privilegeId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<Privilege> getPrivilegeByName(@Parameter(in = ParameterIn.PATH, description = "The roleName used to update the service information", required = true, schema = @Schema()) @PathVariable("privilegeName") String privilegeName) {
        String accept = request.getHeader("Accept");
        //   if (accept != null && accept.contains("application/json")) {
        Privilege privilegeByName = privilegeService.getPrivilegeByName(privilegeName);
        return new ResponseEntity(privilegeByName == null ? ResponseModel.getModel(Response.ERROR) : privilegeByName, HttpStatus.OK);
        //    }

    }

    public ResponseEntity<List<Privilege>> getPrivileges() {
        String accept = request.getHeader("Accept");
        // if (accept != null && accept.contains("application/json")) {
        List<Privilege> privileges = privilegeService.getPrivileges();
        return new ResponseEntity<List<Privilege>>(privileges == null ? new ArrayList<>() : privileges, HttpStatus.OK);
    }


    public ResponseEntity<Privilege> updatePrivilegeById(@Parameter(in = ParameterIn.PATH, description = "The PrivilegeId used to update the service information", required = true, schema = @Schema()) @PathVariable("privilegeId") Long privilegeId, @Parameter(in = ParameterIn.DEFAULT, description = "The Privilege to update.", required = true, schema = @Schema()) @Valid @RequestBody PrivilegeDto body) {
        String accept = request.getHeader("Accept");
        //   if (accept != null && accept.contains("application/json")) {
        Privilege privilege = privilegeService.updatePrivilegeById(privilegeId, body);
        return new ResponseEntity(privilege == null ? ResponseModel.getModel(Response.ERROR) : privilege, HttpStatus.OK);
    }

}
