/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.23).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package com.nms.apis;


import com.nms.models.Department;
import com.nms.models.DepartmentDto;
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
public interface DepartmentApi {

    @Operation(summary = "add a new Department", description = "Adds add a new Department to the system", tags={ "Department Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Department created"),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid"),
        
        @ApiResponse(responseCode = "409", description = "an existing Department already exists") })
    @RequestMapping(value = "/department",
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<Department> addDepartment(@Parameter(in = ParameterIn.DEFAULT, description = "Department to add", schema=@Schema()) @Valid @RequestBody DepartmentDto body);


    @Operation(summary = "Delete a Application", description = "Delete Application", tags={ "Department Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Deleted."),
        
        @ApiResponse(responseCode = "400", description = "Unable to delete service.") })
    @RequestMapping(value = "/department/{departmentId}",
        method = RequestMethod.DELETE)
    ResponseEntity<ResponseModel> deleteDepartmentnById(@Parameter(in = ParameterIn.PATH, description = "The Department Id.", required=true, schema=@Schema()) @PathVariable("departmentId") Long departmentId);


    @Operation(summary = "get all Department", description = "", tags={ "Department Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get all Department from database", content = @Content(array = @ArraySchema(schema = @Schema(implementation = Department.class)))),
        
        @ApiResponse(responseCode = "400", description = "bad input parameter") })
    @RequestMapping(value = "/department",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<List<Department>> getDepartment();


    @Operation(summary = "Get an Department", description = "Get Department", tags={ "Department Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application retrieved.", content = @Content(schema = @Schema(implementation = Department.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/department/{departmentId}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<Department> getDepartmentById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required=true, schema=@Schema()) @PathVariable("departmentId") Long departmentId);


    @Operation(summary = "update Department", description = "Update Department", tags={ "Department Management" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Application updated.", content = @Content(schema = @Schema(implementation = Department.class))),
        
        @ApiResponse(responseCode = "400", description = "invalid input, object invalid") })
    @RequestMapping(value = "/department/{departmentId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<Department> updateDepartmentById(@Parameter(in = ParameterIn.PATH, description = "The DepartmentId used to update the service information", required=true, schema=@Schema()) @PathVariable("departmentId") Long departmentId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required=true, schema=@Schema()) @Valid @RequestBody DepartmentDto body);

}
