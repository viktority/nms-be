package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.StageoneApi;
import com.nms.models.ResponseModel;
import com.nms.models.StageOne;
import com.nms.models.helper.Response;
import com.nms.services.StageOneService;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;


@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")
@RestController
public class StageoneApiController implements StageoneApi {

    private static final Logger log = LoggerFactory.getLogger(StagefourApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    StageOneService service;

    @org.springframework.beans.factory.annotation.Autowired
    public StageoneApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<StageOne> addStageOne(@Parameter(in = ParameterIn.DEFAULT, description = "Application to add", schema = @Schema()) @Valid @RequestBody StageOne body) {
        String accept = request.getHeader("Accept");
        StageOne created = service.addStageOne(body);
        if (created!=null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deleteStageOnenById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("stageOneId") Long stageOneId) {
        String accept = request.getHeader("Accept");
        boolean deleted = service.deleteStageOneById(stageOneId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<List<StageOne>> getStageOne() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<StageOne> invoices = service.getStageOnes();
        return new ResponseEntity<List<StageOne>>(invoices == null ? new ArrayList<>() : invoices, HttpStatus.OK);
    }

    public ResponseEntity<StageOne> getStageOneById(@Parameter(in = ParameterIn.PATH, description = "The StageOneId Id.", required = true, schema = @Schema()) @PathVariable("stageOneId") Long stageOneId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        StageOne invoice = service.getStageOneById(stageOneId);

        return new ResponseEntity(invoice == null ? ResponseModel.getModel(Response.NOT_FOUND) : invoice, HttpStatus.OK);
    }

    public ResponseEntity<StageOne> updateStageOneById(@Parameter(in = ParameterIn.PATH, description = "The StageOneId used to update the service information", required = true, schema = @Schema()) @PathVariable("stageOneId") Long stageOneId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required = true, schema = @Schema()) @Valid @RequestBody StageOne body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        StageOne invoice = service.updateStageOneById(stageOneId, body);
        return new ResponseEntity(invoice == null ? ResponseModel.getModel(Response.ERROR) : invoice, HttpStatus.OK);
        //   }
    }
}


