/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.rest.server.apis;


import com.nms.rest.server.models.Application;
import com.nms.rest.server.models.ApplicationDto;
import com.nms.rest.server.models.ResponseModel;
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

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")
public interface ApplicationApi {

    @Operation(summary = "add a new Application", description = "Adds add a new Application to the system", tags = {"Application Management"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Application created"),

            @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),

            @ApiResponse(responseCode = "409", description = "an existing Application already exists")})
    @RequestMapping(value = "/application",
            consumes = {"application/json"},
            method = RequestMethod.POST)
    ResponseEntity<Application> addApplication(@Parameter(in = ParameterIn.DEFAULT, description = "Application to add", schema = @Schema()) @Valid @RequestBody ApplicationDto body);


    @Operation(summary = "Delete a Application", description = "Delete Application", tags = {"Application Management"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Deleted."),

            @ApiResponse(responseCode = "400", description = "Unable to delete service.")})
    @RequestMapping(value = "/application/{applicationId}",
            method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteApplicationById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("applicationId") String applicationId);


    @Operation(summary = "Get an Application", description = "Get Application", tags = {"Application Management"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = Application.class))),

            @ApiResponse(responseCode = "400", description = "invalid input, object invalid")})
    @RequestMapping(value = "/application/{applicationId}",
            produces = {"application/json"},
            method = RequestMethod.GET)
    ResponseEntity<Application> getApplicationById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("applicationId") String applicationId);


    @Operation(summary = "get all applications", description = "", tags = {"Application Management"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Get all Applications from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = Application.class)))),

            @ApiResponse(responseCode = "400", description = "bad input parameter")})
    @RequestMapping(value = "/application",
            produces = {"application/json"},
            method = RequestMethod.GET)
    ResponseEntity<List<Application>> getApplications();


    @Operation(summary = "update Privilege", description = "Update Privilege", tags = {"Application Management"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application updated.", content = @Content(schema = @Schema(implementation = Application.class))),

            @ApiResponse(responseCode = "400", description = "invalid input, object invalid")})
    @RequestMapping(value = "/application/{applicationId}",
            produces = {"application/json"},
            consumes = {"application/json"},
            method = RequestMethod.PUT)
    ResponseEntity<Application> updateApplicationById(@Parameter(in = ParameterIn.PATH, description = "The PrivilegeId used to update the service information", required = true, schema = @Schema()) @PathVariable("applicationId") String applicationId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required = true, schema = @Schema()) @Valid @RequestBody ApplicationDto body);

}

