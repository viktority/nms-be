package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.StagetwoApi;
import com.nms.models.ResponseModel;
import com.nms.models.StageTwo;
import com.nms.models.helper.Response;
import com.nms.services.StageTwoService;
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
public class StagetwoApiController implements StagetwoApi {

    private static final Logger log = LoggerFactory.getLogger(StagefourApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    StageTwoService service;

    @org.springframework.beans.factory.annotation.Autowired
    public StagetwoApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
    public ResponseEntity<StageTwo> addStageTwo(@Parameter(in = ParameterIn.DEFAULT, description = "Application to add", schema = @Schema()) @Valid @RequestBody StageTwo body) {
        String accept = request.getHeader("Accept");
        StageTwo created = service.addStageTwo(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
    public ResponseEntity<ResponseModel> deleteStageTwonById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("stageTwoId") Long stageTwoId) {
        String accept = request.getHeader("Accept");
        boolean deleted = service.deleteStageTwoById(stageTwoId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
    public ResponseEntity<List<StageTwo>> getStageTwo() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<StageTwo> invoices = service.getStageTwos();
        return new ResponseEntity<List<StageTwo>>(invoices == null ? new ArrayList<>() : invoices, HttpStatus.OK);
    }

    @Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
    public ResponseEntity<StageTwo> getStageTwoById(@Parameter(in = ParameterIn.PATH, description = "The StageTwoId Id.", required = true, schema = @Schema()) @PathVariable("stageTwoId") Long stageTwoId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        StageTwo invoice = service.getStageTwoById(stageTwoId);

        return new ResponseEntity(invoice == null ? ResponseModel.getModel(Response.NOT_FOUND) : invoice, HttpStatus.OK);
    }

    @Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
    public ResponseEntity<StageTwo> updateStageTwoById(@Parameter(in = ParameterIn.PATH, description = "The StageTwoId used to update the service information", required = true, schema = @Schema()) @PathVariable("stageTwoId") Long stageTwoId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required = true, schema = @Schema()) @Valid @RequestBody StageTwo body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        StageTwo invoice = service.updateStageTwoById(stageTwoId, body);
        return new ResponseEntity(invoice == null ? ResponseModel.getModel(Response.ERROR) : invoice, HttpStatus.OK);
        //   }
    }
}


