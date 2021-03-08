package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.ApplicationstatusApi;
import com.nms.models.ApplicationStatus;
import com.nms.models.ApplicationStatusDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.ApplicationStatusService;
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

@Secured({"ROLE_ADMIN", "ROLE_CLIENT"})
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class ApplicationstatusApiController implements ApplicationstatusApi {

    private static final Logger log = LoggerFactory.getLogger(ApplicationstatusApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    ApplicationStatusService applicationStatusService;

    @org.springframework.beans.factory.annotation.Autowired
    public ApplicationstatusApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<ApplicationStatus> addApplicationStatus(@Parameter(in = ParameterIn.DEFAULT, description = "Application Status to add", schema = @Schema()) @Valid @RequestBody ApplicationStatusDto body) {
        String accept = request.getHeader("Accept");
        ApplicationStatus created = applicationStatusService.addApplicationStatus(body);
        if (created!=null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deleteApplicationStatusById(@Parameter(in = ParameterIn.PATH, description = "The Application Status Id.", required = true, schema = @Schema()) @PathVariable("applicationStatusId") Long applicationStatusId) {
        String accept = request.getHeader("Accept");
        boolean deleted = applicationStatusService.deleteApplicationStatusById(applicationStatusId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ApplicationStatus> getApplicationStatusByName(@Parameter(in = ParameterIn.PATH, description = "The Application Status used to update the service information", required = true, schema = @Schema()) @PathVariable("applicationStatusName") String applicationStatusName) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        ApplicationStatus applicationStatus = applicationStatusService.getApplicationStatusByName(applicationStatusName);

        return new ResponseEntity(applicationStatus == null ? ResponseModel.getModel(Response.NOT_FOUND) : applicationStatus, HttpStatus.OK);
    }

    public ResponseEntity<List<ApplicationStatus>> getApplicationStatuses() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<ApplicationStatus> applicationStatuses = applicationStatusService.getApplicationStatuses();
        return new ResponseEntity<List<ApplicationStatus>>(applicationStatuses == null ? new ArrayList<>() : applicationStatuses, HttpStatus.OK);
    }

    public ResponseEntity<ApplicationStatus> updateApplicationStatusById(@Parameter(in = ParameterIn.PATH, description = "The applicationStatusId used to update the service information", required = true, schema = @Schema()) @PathVariable("applicationStatusId") Long applicationStatusId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application Status to update.", required = true, schema = @Schema()) @Valid @RequestBody ApplicationStatusDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        ApplicationStatus applicationStatus = applicationStatusService.updateApplicationStatusById(applicationStatusId, body);
        return new ResponseEntity(applicationStatus == null ? ResponseModel.getModel(Response.ERROR) : applicationStatus, HttpStatus.OK);
        //   }
    }

}
