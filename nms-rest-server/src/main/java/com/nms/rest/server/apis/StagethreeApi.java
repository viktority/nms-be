/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.rest.server.apis;


import com.nms.rest.server.models.ResponseModel;
import com.nms.rest.server.models.StageThree;
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
public interface StagethreeApi {

    @Operation(summary = "add a new Stage Three", description = "Adds add a new Stage Three to the system", tags={ "Stage Three Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Application created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "an existing Application already exists") })
    @RequestMapping(value = "/stagethree",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<ResponseModel> addStageThree(@Parameter(in = ParameterIn.DEFAULT, description = "Application to add", schema=@Schema()) @Valid @RequestBody StageThree body);


    @Operation(summary = "Delete a Application", description = "Delete Application", tags={ "Stage Three Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/stagethree/{stageThreeId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteStageThreenById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required=true, schema=@Schema()) @PathVariable("stageThreeId") Long stageThreeId);


    @Operation(summary = "get all applications", description = "", tags={ "Stage Three Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get all Stage Three from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = StageThree.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/stagethree",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<StageThree>> getStageThree();


    @Operation(summary = "Get an Application", description = "Get Application", tags={ "Stage Three Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = StageThree.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/stagethree/{stageThreeId}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<StageThree> getStageThreeById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required=true, schema=@Schema()) @PathVariable("stageThreeId") Long stageThreeId);


    @Operation(summary = "update StageThree", description = "Update StageThree", tags={ "Stage Three Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application updated.", content = @Content(schema = @Schema(implementation = StageThree.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/stagethree/{stageThreeId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<StageThree> updateStageThreeById(@Parameter(in = ParameterIn.PATH, description = "The StageThreeId used to update the service information", required=true, schema=@Schema()) @PathVariable("stageThreeId") Long stageThreeId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required=true, schema=@Schema()) @Valid @RequestBody StageThree body);

}

