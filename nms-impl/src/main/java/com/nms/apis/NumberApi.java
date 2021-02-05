/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.apis;


import com.nms.models.Number;
import com.nms.models.NumberBlock;
import com.nms.models.NumberDto;
import com.nms.models.ResponseModel;
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
public interface NumberApi {

    @Operation(summary = "add a new Number", description = "Adds add a new Number to the system", tags={ "Number Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Number created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "an existing Number already exists") })
    @RequestMapping(value = "/number",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<Number> addNumber(@Parameter(in = ParameterIn.DEFAULT, description = "Number to add", schema=@Schema()) @Valid @RequestBody NumberDto body);


    @Operation(summary = "Delete a Application", description = "Delete Application", tags={ "Number Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/number/{numberId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteNumbernById(@Parameter(in = ParameterIn.PATH, description = "The Number Id.", required=true, schema=@Schema()) @PathVariable("numberId") Long numberId);


    @Operation(summary = "get all Number", description = "", tags={ "Number Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get all Number from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = Number.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/number",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<Number>> getNumber();


    @Operation(summary = "Get an Number", description = "Get Number", tags={ "Number Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = Number.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/number/{numberId}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<Number> getNumberById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required=true, schema=@Schema()) @PathVariable("numberId") Long numberId);


    @Operation(summary = "update Number", description = "Update Number", tags={ "Number Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application updated.", content = @Content(schema = @Schema(implementation = Number.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/number/{numberId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<Number> updateNumberById(@Parameter(in = ParameterIn.PATH, description = "The NumberId used to update the service information", required=true, schema=@Schema()) @PathVariable("numberId") Long numberId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required=true, schema=@Schema()) @Valid @RequestBody NumberDto body);



    @Operation(summary = "Fetch available 3 Digits Shortcode Number Blocks", description = "Fetch available Shortcode Number Blocks", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/shortcodes3",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> availableShortcodeBlocks3();



    @Operation(summary = "Fetch available 4 Digits Shortcode Number Blocks", description = "Fetch available Shortcode Number Blocks", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/shortcodes4",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> availableShortcodeBlocks4();

    @Operation(summary = "Search number range by specific type", description = "Search number range by specific type", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/search/{specificTypeId}/{startNo}/{endNo}",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> searchNoByRange(@Parameter(in = ParameterIn.PATH, description = "The SpecificType Id.", required=true, schema=@Schema()) @PathVariable("specificTypeId") int specificTypeId, @PathVariable("startNo") int startNo, @PathVariable("endNo") int endNo);



    @Operation(summary = "Fetch available 5 Digits Shortcode Number Blocks", description = "Fetch available Shortcode Number Blocks", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/shortcodes5",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> availableShortcodeBlocks5();


    @Operation(summary = "Fetch available ISCP Number Blocks", description = "Fetch available ISCP Number Blocks", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/iscp",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> availableISCPBlocks();



    @Operation(summary = "Fetch available C Number Blocks", description = "Fetch available GSM Number Blocks", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/gsm",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> availableGSMBlocks();


    @Operation(summary = "Fetch available Land Number Blocks", description = "Fetch available Land Number Blocks", tags={ "Available Number Blocks" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = NumberBlock.class))),
            @ApiResponse(responseCode = "400", description = "invalid type, object invalid") })
    @RequestMapping(value = "/number/numberblocks/land",
            produces = { "application/json" },
            method = RequestMethod.GET)
    ResponseEntity<List<NumberBlock>> availableLandBlocks();

}

