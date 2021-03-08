package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.LicensesApi;
import com.nms.models.License;
import com.nms.models.LicenseDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.LicenseService;
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
public class LicensesApiController implements LicensesApi {

    private static final Logger log = LoggerFactory.getLogger(LicensesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    LicenseService licenseService;

    @org.springframework.beans.factory.annotation.Autowired
    public LicensesApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<License> addLicense(@Parameter(in = ParameterIn.DEFAULT, description = "License to add", schema = @Schema()) @Valid @RequestBody LicenseDto body) {
        String accept = request.getHeader("Accept");
        License created = licenseService.addLicense(body);
        if (created!=null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deleteLicenseById(@Parameter(in = ParameterIn.PATH, description = "The License Id.", required = true, schema = @Schema()) @PathVariable("licenseId") Long licenseId) {
        String accept = request.getHeader("Accept");
        boolean deleted = licenseService.deleteLicenseById(licenseId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<License> getLicenseByName(@Parameter(in = ParameterIn.PATH, description = "The LicenseName used to update the service information", required = true, schema = @Schema()) @PathVariable("licenseName") String licenseName) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        License license = licenseService.getLicenseByName(licenseName);

        return new ResponseEntity(license == null ? ResponseModel.getModel(Response.NOT_FOUND) : license, HttpStatus.OK);
    }

    public ResponseEntity<List<License>> getLicenses() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<License> license = licenseService.getLicenses();
        return new ResponseEntity<List<License>>(license == null ? new ArrayList<>() : license, HttpStatus.OK);
    }

    public ResponseEntity<License> updateLicenseById(@Parameter(in = ParameterIn.PATH, description = "The LicenseId used to update the service information", required = true, schema = @Schema()) @PathVariable("licenseId") Long licenseId, @Parameter(in = ParameterIn.DEFAULT, description = "The License to update.", required = true, schema = @Schema()) @Valid @RequestBody LicenseDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        License license = licenseService.updateLicenseById(licenseId, body);
        return new ResponseEntity(license == null ? ResponseModel.getModel(Response.ERROR) : license, HttpStatus.OK);
    }

}
