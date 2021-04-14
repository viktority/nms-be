package com.nms.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.EmailApi;
import com.nms.models.EmailDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.EmailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class EmailController implements EmailApi {


    private static final Logger log = LoggerFactory.getLogger(EmailController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    public EmailController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Autowired
    EmailService service;

    @Override
    //@PreAuthorize("hasRole('ROLE_ADMIN')")
    public ResponseEntity<ResponseModel> sendEmail(@Valid EmailDto body) {
        boolean b = service.sendEmailAndPersist(body);
        ResponseModel responseModel = b ? ResponseModel.getModel(Response.OK) : ResponseModel.getModel(Response.ERROR);
        return ResponseEntity.ok(responseModel);
    }
}
