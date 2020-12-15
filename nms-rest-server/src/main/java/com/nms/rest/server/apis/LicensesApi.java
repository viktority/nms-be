/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.rest.server.apis;


import com.nms.rest.server.models.License;
import com.nms.rest.server.models.LicenseDto;
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
public interface LicensesApi {

    @Operation(summary = "add a new License", description = "Adds add a new License to the system", tags={ "License Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "License created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "an existing License already exists") })
    @RequestMapping(value = "/licenses",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<License> addLicense(@Parameter(in = ParameterIn.DEFAULT, description = "License to add", schema=@Schema()) @Valid @RequestBody LicenseDto body);


    @Operation(summary = "Delete a License", description = "Delete License", tags={ "License Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/licenses/{licenseId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteLicenseById(@Parameter(in = ParameterIn.PATH, description = "The License Id.", required=true, schema=@Schema()) @PathVariable("licenseId") Long licenseId);


    @Operation(summary = "searches for License by name", description = "", tags={ "License Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "search results matching criteria", content = @Content(schema = @Schema(implementation = License.class))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/licenses/{licenseName}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<License> getLicenseByName(@Parameter(in = ParameterIn.PATH, description = "The LicenseName used to update the service information", required=true, schema=@Schema()) @PathVariable("licenseName") String licenseName);


    @Operation(summary = "get all licences", description = "", tags={ "License Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get all License from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = License.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/licenses",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<License>> getLicenses();


    @Operation(summary = "update License", description = "Update License", tags={ "License Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "License updated.", content = @Content(schema = @Schema(implementation = License.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/licenses/{licenseId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<License> updateLicenseById(@Parameter(in = ParameterIn.PATH, description = "The LicenseId used to update the service information", required=true, schema=@Schema()) @PathVariable("licenseId") Long licenseId, @Parameter(in = ParameterIn.DEFAULT, description = "The License to update.", required=true, schema=@Schema()) @Valid @RequestBody LicenseDto body);

}

