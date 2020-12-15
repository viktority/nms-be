package com.nms.controllers;

import com.nms.rest.server.apis.NumbertypeApi;
import com.nms.rest.server.models.NumberType;
import com.nms.rest.server.models.NumberTypeDto;
import com.nms.rest.server.models.ResponseModel;
import com.nms.rest.server.models.helper.Response;
import com.nms.services.NumbertypeService;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")
@RestController("nmsNumberTypeController")
public class NumbertypeApiController implements NumbertypeApi {

    private static final Logger log = LoggerFactory.getLogger(NumbertypeApiController.class);

    @Autowired
    private NumbertypeService numbertypeService;

    private final HttpServletRequest request;


    @Autowired
    public NumbertypeApiController(HttpServletRequest request) {
        this.request = request;
    }

    @PreAuthorize("hasAuthority('WRITE_PRIVILEGE')")
    public ResponseEntity<NumberType> addNumberType(@Parameter(in = ParameterIn.DEFAULT, description = "Inventory item to add", schema = @Schema()) @Valid @RequestBody NumberTypeDto body) {
        String accept = request.getHeader("Accept");
        NumberType created = numbertypeService.addNumberType(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @PreAuthorize("hasAuthority('DELETE_PRIVILEGE')")
    public ResponseEntity<ResponseModel> deleteNumberTypeById(@Parameter(in = ParameterIn.PATH, description = "The Subject Id.", required = true, schema = @Schema()) @PathVariable("numberTypeId") Integer numberTypeId) {
        String accept = request.getHeader("Accept");
        boolean deleted = numbertypeService.deleteNumberTypeById(numberTypeId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @PreAuthorize("hasAuthority('READ_PRIVILEGE')")
    public ResponseEntity<List<NumberType>> getAllNumberTypes() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<NumberType> numberTypes = numbertypeService.getAllNumberTypes();
        return new ResponseEntity<List<NumberType>>(numberTypes == null ? new ArrayList<>() : numberTypes, HttpStatus.OK);

    }

    @PreAuthorize("hasAuthority('READ_PRIVILEGE')")
    public ResponseEntity<NumberType> getNumberTypeById(@Parameter(in = ParameterIn.PATH, description = "The numberTypeId used to update the service information", required = true, schema = @Schema()) @PathVariable("numberTypeId") Integer numberTypeId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        NumberType numberType = numbertypeService.getNumberTypeById(numberTypeId);

        return new ResponseEntity(numberType == null ? ResponseModel.getModel(Response.NOT_FOUND) : numberType, HttpStatus.OK);


    }

    @PreAuthorize("hasAuthority('EDIT_PRIVILEGE')")
    public ResponseEntity<NumberType> updateNumberTypeById(@Parameter(in = ParameterIn.PATH, description = "The numberTypeId used to update the service information", required = true, schema = @Schema()) @PathVariable("numberTypeId") Integer numberTypeId, @Parameter(in = ParameterIn.DEFAULT, description = "The subject to update.", required = true, schema = @Schema()) @Valid @RequestBody NumberTypeDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        NumberType numberType = numbertypeService.updateNumberTypeById(numberTypeId, body);
        return new ResponseEntity(numberType == null ? ResponseModel.getModel(Response.ERROR) : numberType, HttpStatus.OK);
        //   }

    }

}
