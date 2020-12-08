package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.rest.server.apis.BillingplanApi;
import com.nms.rest.server.models.BillingPlans;
import com.nms.rest.server.models.BillingPlansDto;
import com.nms.rest.server.models.ResponseModel;
import com.nms.rest.server.models.helper.Response;
import com.nms.services.BillingPlanService;
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
public class BillingplanApiController implements BillingplanApi {

    private static final Logger log = LoggerFactory.getLogger(BillingplanApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public BillingplanApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Autowired
    BillingPlanService billingPlanService;

    public ResponseEntity<ResponseModel> addBillingPlan(@Parameter(in = ParameterIn.DEFAULT, description = "Fee to add", schema = @Schema()) @Valid @RequestBody BillingPlansDto body) {
        String accept = request.getHeader("Accept");
        boolean created = billingPlanService.addBillingPlan(body);
        if (created) return new ResponseEntity<>(ResponseModel.getModel(Response.CREATED), HttpStatus.CREATED);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<BillingPlans> billingPlanId(@Parameter(in = ParameterIn.PATH, description = "The billingPlanId used to update the service information", required = true, schema = @Schema()) @PathVariable("billingPlanId") Long billingPlanId, @Parameter(in = ParameterIn.DEFAULT, description = "The Billing Plan to update.", required = true, schema = @Schema()) @Valid @RequestBody BillingPlansDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        BillingPlans billingPlans = billingPlanService.updatebillingPlanId(billingPlanId, body);
        return new ResponseEntity(billingPlans == null ? ResponseModel.getModel(Response.ERROR) : billingPlans, HttpStatus.OK);
        //   }
    }

    public ResponseEntity<ResponseModel> deleteBillingPlanById(@Parameter(in = ParameterIn.PATH, description = "The billingPlanId.", required = true, schema = @Schema()) @PathVariable("billingPlanId") Long billingPlanId) {
        String accept = request.getHeader("Accept");
        boolean deleted = billingPlanService.deleteBillingPlanById(billingPlanId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<List<BillingPlans>> getBillingPlan() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<BillingPlans> applicationStatuses = billingPlanService.getBillingPlan();
        return new ResponseEntity<List<BillingPlans>>(applicationStatuses == null ? new ArrayList<>() : applicationStatuses, HttpStatus.OK);
    }

    public ResponseEntity<BillingPlans> getBillingPlanByName(@Parameter(in = ParameterIn.PATH, description = "The billingPlanName used to update the service information", required = true, schema = @Schema()) @PathVariable("billingPlanName") String billingPlanName) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        BillingPlans billingPlanByName = billingPlanService.getBillingPlanByName(billingPlanName);

        return new ResponseEntity(billingPlanByName == null ? ResponseModel.getModel(Response.NOT_FOUND) : billingPlanByName, HttpStatus.OK);
    }

}
