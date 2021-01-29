package com.nms.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.NumberApi;
import com.nms.models.Number;
import com.nms.models.NumberBlock;
import com.nms.models.NumberDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.NumberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class NumberController implements NumberApi {


    private static final Logger log = LoggerFactory.getLogger(ChargesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    public NumberController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Autowired
    NumberService service;

    @Override
    public ResponseEntity<Number> addNumber(@Valid NumberDto body) {
        String accept = request.getHeader("Accept");
        Number created = service.addNumber(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<ResponseModel> deleteNumbernById(Long numberId) {
        String accept = request.getHeader("Accept");
        boolean deleted = service.deleteNumbernById(numberId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<List<Number>> getNumber() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Number> numbers = service.getNumbers();
        return new ResponseEntity<List<Number>>(numbers == null ? new ArrayList<>() : numbers, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Number> getNumberById(Long numberId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Number charges = service.getNumberById(numberId);

        return new ResponseEntity(charges == null ? ResponseModel.getModel(Response.NOT_FOUND) : charges, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Number> updateNumberById(Long numberId, @Valid NumberDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Number charge = service.updateNumberById(numberId, body);
        return new ResponseEntity(charge == null ? ResponseModel.getModel(Response.ERROR) : charge, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> availableNumberBlocks(int typeId) {
        String accept = request.getHeader("Accept");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocks(typeId);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

}