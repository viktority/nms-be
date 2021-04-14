package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.ApplicationApi;
import com.nms.models.Application;
import com.nms.models.ApplicationDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.ApplicationService;
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
public class ApplicationApiController implements ApplicationApi {

    private static final Logger log = LoggerFactory.getLogger(ApplicationApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    ApplicationService service;

    @org.springframework.beans.factory.annotation.Autowired
    public ApplicationApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }
    public ResponseEntity<Application> addApplication(@Parameter(in = ParameterIn.DEFAULT, description = "Application to add", schema = @Schema()) @Valid @RequestBody ApplicationDto body) {
        String accept = request.getHeader("Accept");
        Application created = service.addApplication(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }
    public ResponseEntity<ResponseModel> deleteApplicationById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("applicationId") String applicationId) {
        String accept = request.getHeader("Accept");
        boolean deleted = service.deleteApplicationById(applicationId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }
    public ResponseEntity<Application> getApplicationById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("applicationId") String applicationId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Application application = service.getApplicationById(applicationId);

        return new ResponseEntity(application == null ? ResponseModel.getModel(Response.NOT_FOUND) : application, HttpStatus.OK);
    }
    public ResponseEntity<List<Application>> getApplications() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Application> applications = service.getApplications();
        return new ResponseEntity<List<Application>>(applications == null ? new ArrayList<>() : applications, HttpStatus.OK);
    }
    public ResponseEntity<Application> updateApplicationById(@Parameter(in = ParameterIn.PATH, description = "The PrivilegeId used to update the service information", required = true, schema = @Schema()) @PathVariable("applicationId") String applicationId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required = true, schema = @Schema()) @Valid @RequestBody ApplicationDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Application application = service.updateApplicationById(applicationId, body);
        return new ResponseEntity(application == null ? ResponseModel.getModel(Response.ERROR) : application, HttpStatus.OK);
        //   }
    }

}
