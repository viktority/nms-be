package com.nms.controllers;

import com.nms.apis.RolesApi;
import com.nms.models.ResponseModel;
import com.nms.models.Role;
import com.nms.models.RoleDto;
import com.nms.models.helper.Response;
import com.nms.services.RolesService;
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

@Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")
@RestController
public class RolesApiController implements RolesApi {

    private static final Logger log = LoggerFactory.getLogger(RolesApiController.class);

    private final HttpServletRequest request;

    @Autowired
    private RolesService rolesService;

    @Autowired
    public RolesApiController(HttpServletRequest request) {
        this.request = request;
    }

    //@PreAuthorize("hasAuthority('WRITE_PRIVILEGE')")
    public ResponseEntity<Role> addRole(@Parameter(in = ParameterIn.DEFAULT, description = "Role to add", schema = @Schema()) @Valid @RequestBody RoleDto body) {
        String accept = request.getHeader("Accept");
        Role created = rolesService.addRole(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    //@PreAuthorize("hasAuthority('DELETE_PRIVILEGE')")
    public ResponseEntity<ResponseModel> deleteRoleById(@Parameter(in = ParameterIn.PATH, description = "The role Id.", required = true, schema = @Schema()) @PathVariable("roleId") Integer roleId) {
        boolean deleted = rolesService.deleteRole(roleId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    //@PreAuthorize("hasAuthority('READ_PRIVILEGE')")
    public ResponseEntity<Role> getRoleByName(@Parameter(in = ParameterIn.PATH, description = "The roleName used to update the service information", required = true, schema = @Schema()) @PathVariable("roleName") String roleName) {
        String accept = request.getHeader("Accept");
        //   if (accept != null && accept.contains("application/json")) {
        Role role = rolesService.getRoleByName(roleName);
        return new ResponseEntity(role == null ? ResponseModel.getModel(Response.ERROR) : role, HttpStatus.OK);
        //    }


    }

    //@PreAuthorize("hasAuthority('READ_PRIVILEGE')")
    public ResponseEntity<List<Role>> getRoles() {
        String accept = request.getHeader("Accept");
        // if (accept != null && accept.contains("application/json")) {
        List<Role> roles = rolesService.getAllRoles();
        return new ResponseEntity<List<Role>>(roles == null ? new ArrayList<>() : roles, HttpStatus.OK);

    }

   // @PreAuthorize("hasAuthority('EDIT_PRIVILEGE')")
    public ResponseEntity<Role> updateRoleByRoleId(@Parameter(in = ParameterIn.PATH, description = "The roleId used to update the service information", required = true, schema = @Schema()) @PathVariable("roleId") Integer roleId, @Parameter(in = ParameterIn.DEFAULT, description = "The role to update.", required = true, schema = @Schema()) @Valid @RequestBody RoleDto body) {
        String accept = request.getHeader("Accept");
        //   if (accept != null && accept.contains("application/json")) {
        Role role = rolesService.updateRoleByRoleId(roleId, body);
        return new ResponseEntity(role == null ? ResponseModel.getModel(Response.ERROR) : role, HttpStatus.OK);
    }

}
