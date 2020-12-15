/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.rest.server.apis;


import com.nms.rest.server.models.ApplicationStatus;
import com.nms.rest.server.models.ApplicationStatusDto;
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

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
public interface ApplicationstatusApi {

    @Operation(summary = "add a new Status", description = "Adds a new Application Status to the system", tags={ "Application Status Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Application Status created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "An existing Application Status already exists") })
    @RequestMapping(value = "/applicationstatus",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<ApplicationStatus> addApplicationStatus(@Parameter(in = ParameterIn.DEFAULT, description = "Application Status to add", schema=@Schema()) @Valid @RequestBody ApplicationStatusDto body);


    @Operation(summary = "Delete a Application Status", description = "Delete Application Status", tags={ "Application Status Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/applicationstatus/{applicationStatusId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteApplicationStatusById(@Parameter(in = ParameterIn.PATH, description = "The Application Status Id.", required=true, schema=@Schema()) @PathVariable("applicationStatusId") Long applicationStatusId);


    @Operation(summary = "searches for Application Status by name", description = "", tags={ "Application Status Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "search results matching criteria", content = @Content(schema = @Schema(implementation = ApplicationStatus.class))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/applicationstatus/{applicationStatusName}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<ApplicationStatus> getApplicationStatusByName(@Parameter(in = ParameterIn.PATH, description = "The Application Status used to update the service information", required=true, schema=@Schema()) @PathVariable("applicationStatusName") String applicationStatusName);


    @Operation(summary = "get all Status", description = "", tags={ "Application Status Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get all Application Status from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = ApplicationStatus.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/applicationstatus",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<ApplicationStatus>> getApplicationStatuses();


    @Operation(summary = "update Application Status", description = "Update Application Status", tags={ "Application Status Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application Status updated.", content = @Content(schema = @Schema(implementation = ApplicationStatus.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/applicationstatus/{applicationStatusId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<ApplicationStatus> updateApplicationStatusById(@Parameter(in = ParameterIn.PATH, description = "The applicationStatusId used to update the service information", required=true, schema=@Schema()) @PathVariable("applicationStatusId") Long applicationStatusId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application Status to update.", required=true, schema=@Schema()) @Valid @RequestBody ApplicationStatusDto body);

}

