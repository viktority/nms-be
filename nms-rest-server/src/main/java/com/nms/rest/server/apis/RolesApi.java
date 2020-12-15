/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.rest.server.apis;


import com.nms.rest.server.models.ResponseModel;
import com.nms.rest.server.models.Role;
import com.nms.rest.server.models.RoleDto;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")
public interface RolesApi {

    @Operation(summary = "add a new role", description = "Adds add a new role to the system", tags={ "Role Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "201", description = "role created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "an existing role already exists") })
    @RequestMapping(value = "/roles",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<Role> addRole(@Parameter(in = ParameterIn.DEFAULT, description = "Role to add", schema=@Schema()) @Valid @RequestBody RoleDto body);


    @Operation(summary = "Delete a role", description = "Delete role", tags={ "Role Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/roles/{roleId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteRoleById(@Parameter(in = ParameterIn.PATH, description = "The role Id.", required=true, schema=@Schema()) @PathVariable("roleId") Integer roleId);


    @Operation(summary = "searches for role by name", description = "", tags={ "Role Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "search results matching criteria", content = @Content(schema = @Schema(implementation = Role.class))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/roles/{roleName}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<Role> getRoleByName(@Parameter(in = ParameterIn.PATH, description = "The roleName used to update the service information", required=true, schema=@Schema()) @PathVariable("roleName") String roleName);


    @Operation(summary = "get all roles", description = "", tags={ "Role Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "Get all roles from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = Role.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/roles",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<Role>> getRoles();


    @Operation(summary = "update role", description = "Update role", tags={ "Role Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "Role updated.", content = @Content(schema = @Schema(implementation = Role.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/roles/{roleId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<Role> updateRoleByRoleId(@Parameter(in = ParameterIn.PATH, description = "The roleId used to update the service information", required=true, schema=@Schema()) @PathVariable("roleId") Integer roleId, @Parameter(in = ParameterIn.DEFAULT, description = "The role to update.", required=true, schema=@Schema()) @Valid @RequestBody RoleDto body);

}

