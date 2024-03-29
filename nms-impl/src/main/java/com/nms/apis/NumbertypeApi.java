/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.apis;


import com.nms.models.NumberType;
import com.nms.models.NumberTypeDto;
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

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")
public interface NumbertypeApi {

    @Operation(summary = "adds new item", description = "Adds an item to the system", tags={ "Number Type Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "201", description = "item created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "an existing item already exists") })
    @RequestMapping(value = "/numbertype",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<NumberType> addNumberType(@Parameter(in = ParameterIn.DEFAULT, description = "Inventory item to add", schema=@Schema()) @Valid @RequestBody NumberTypeDto body);


    @Operation(summary = "Delete number type by id", description = "", tags={ "Number Type Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/numbertype/{numberTypeId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteNumberTypeById(@Parameter(in = ParameterIn.PATH, description = "The Subject Id.", required=true, schema=@Schema()) @PathVariable("numberTypeId") Integer numberTypeId);


    @Operation(summary = "Get number types", description = "", tags={ "Number Type Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "search results matching criteria", content = @Content(array = @ArraySchema(schema = @Schema(implementation = NumberType.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/numbertype",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<NumberType>> getAllNumberTypes();


    @Operation(summary = "searches inventory", description = "", tags={ "Number Type Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "search results matching criteria", content = @Content(schema = @Schema(implementation = NumberType.class))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/numbertype/{numberTypeId}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<NumberType> getNumberTypeById(@Parameter(in = ParameterIn.PATH, description = "The numberTypeId used to update the service information", required=true, schema=@Schema()) @PathVariable("numberTypeId") Integer numberTypeId);


    @Operation(summary = "Update number type by Id", description = "", tags={ "Number Type Management" })
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "Number type updated.", content = @Content(schema = @Schema(implementation = NumberType.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/numbertype/{numberTypeId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<NumberType> updateNumberTypeById(@Parameter(in = ParameterIn.PATH, description = "The numberTypeId used to update the service information", required=true, schema=@Schema()) @PathVariable("numberTypeId") Integer numberTypeId, @Parameter(in = ParameterIn.DEFAULT, description = "The subject to update.", required=true, schema=@Schema()) @Valid @RequestBody NumberTypeDto body);

}

