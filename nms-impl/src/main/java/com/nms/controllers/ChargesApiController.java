package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.ChargesApi;
import com.nms.models.Charge;
import com.nms.models.ChargeDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.ChargeService;
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
public class ChargesApiController implements ChargesApi {

    private static final Logger log = LoggerFactory.getLogger(ChargesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public ChargesApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Autowired
    ChargeService chargeService;

    public ResponseEntity<Charge> addCharge(@Parameter(in = ParameterIn.DEFAULT, description = "Charge to add", schema = @Schema()) @Valid @RequestBody ChargeDto body) {
        String accept = request.getHeader("Accept");
        Charge created = chargeService.addCharge(body);
        if (created!=null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deleteChargeById(@Parameter(in = ParameterIn.PATH, description = "The Charge Id.", required = true, schema = @Schema()) @PathVariable("chargeId") Long chargeId) {
        String accept = request.getHeader("Accept");
        boolean deleted = chargeService.deleteChargeById(chargeId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<Charge> getChargeByName(@Parameter(in = ParameterIn.PATH, description = "The ChargesName used to update the service information", required = true, schema = @Schema()) @PathVariable("chargeName") String chargeName) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Charge charges = chargeService.getChargeByName(chargeName);

        return new ResponseEntity(charges == null ? ResponseModel.getModel(Response.NOT_FOUND) : charges, HttpStatus.OK);
    }

    public ResponseEntity<List<Charge>> getCharges() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Charge> charges = chargeService.getCharges();
        return new ResponseEntity<List<Charge>>(charges == null ? new ArrayList<>() : charges, HttpStatus.OK);
    }

    public ResponseEntity<Charge> updateChargeById(@Parameter(in = ParameterIn.PATH, description = "The ChargeId used to update the service information", required = true, schema = @Schema()) @PathVariable("chargeId") Long chargeId, @Parameter(in = ParameterIn.DEFAULT, description = "The Charges to update.", required = true, schema = @Schema()) @Valid @RequestBody ChargeDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Charge charge = chargeService.updateChargeById(chargeId, body);
        return new ResponseEntity(charge == null ? ResponseModel.getModel(Response.ERROR) : charge, HttpStatus.OK);
    }

}
