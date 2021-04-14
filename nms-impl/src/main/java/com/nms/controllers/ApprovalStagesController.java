package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.ApprovalStageApi;
import com.nms.models.ApprovalStage;
import com.nms.services.ApprovalStageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")
@RestController
public class ApprovalStagesController implements ApprovalStageApi {

    private static final Logger log = LoggerFactory.getLogger(ApprovalStagesController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    ApprovalStageService service;

    @Autowired
    public ApprovalStagesController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Override
    public ResponseEntity<List<ApprovalStage>> getapprovalStagees() {
        String accept = request.getHeader("Accept");
        List<ApprovalStage> approvalStages = service.getapprovalStagees();
        return new ResponseEntity<List<ApprovalStage>>(approvalStages == null ? new ArrayList<>() : approvalStages, HttpStatus.OK);
    }
}
