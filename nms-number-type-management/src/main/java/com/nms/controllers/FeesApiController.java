package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.rest.server.apis.FeesApi;
import com.nms.rest.server.models.Fee;
import com.nms.rest.server.models.FeeDto;
import com.nms.rest.server.models.ResponseModel;
import com.nms.rest.server.models.helper.Response;
import com.nms.services.FeeService;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class FeesApiController implements FeesApi {

    private static final Logger log = LoggerFactory.getLogger(FeesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    FeeService feeService;

    @org.springframework.beans.factory.annotation.Autowired
    public FeesApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<ResponseModel> addFee(@Parameter(in = ParameterIn.DEFAULT, description = "Fee to add", schema = @Schema()) @Valid @RequestBody FeeDto body) {
        String accept = request.getHeader("Accept");
        boolean created = feeService.addFee(body);
        if (created) return new ResponseEntity<>(ResponseModel.getModel(Response.CREATED), HttpStatus.CREATED);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deleteFeeById(@Parameter(in = ParameterIn.PATH, description = "The Fee Id.", required = true, schema = @Schema()) @PathVariable("feeId") Long feeId) {
        String accept = request.getHeader("Accept");
        boolean deleted = feeService.deleteFeeById(feeId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<Fee> getFeeByName(@Parameter(in = ParameterIn.PATH, description = "The FeeName used to update the service information", required = true, schema = @Schema()) @PathVariable("feeName") String feeName) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Fee fee = feeService.getFeeByName(feeName);

        return new ResponseEntity(fee == null ? ResponseModel.getModel(Response.NOT_FOUND) : fee, HttpStatus.OK);
    }

    public ResponseEntity<List<Fee>> getFees() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Fee> fees = feeService.getFees();
        return new ResponseEntity<List<Fee>>(fees == null ? new ArrayList<>() : fees, HttpStatus.OK);
    }

    public ResponseEntity<Fee> updateFeeById(@Parameter(in = ParameterIn.PATH, description = "The FeeId used to update the service information", required = true, schema = @Schema()) @PathVariable("feeId") Long feeId, @Parameter(in = ParameterIn.DEFAULT, description = "The Fee to update.", required = true, schema = @Schema()) @Valid @RequestBody FeeDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Fee fee = feeService.updateFeeById(feeId, body);
        return new ResponseEntity(fee == null ? ResponseModel.getModel(Response.ERROR) : fee, HttpStatus.OK);
    }

}
