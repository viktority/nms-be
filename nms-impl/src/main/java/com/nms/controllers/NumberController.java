package com.nms.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.NumberApi;
import com.nms.models.Number;
import com.nms.models.NumberBlock;
import com.nms.models.NumberDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.repositories.SpecificTypeRepository;
import com.nms.services.NumberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
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

    @Autowired
    SpecificTypeRepository specificTypeRepository;

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
    public ResponseEntity<List<NumberBlock>> availableShortcodeBlocks3() {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findBySpecificType("3");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksBySpecificType(s);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> availableShortcodeBlocks4() {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findBySpecificType("4");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksBySpecificType(s);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> availableShortcodeBlocks5() {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findBySpecificType("5");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksBySpecificType(s);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> searchNoByRange(int specificTypeId, int startNo, int endNo) {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findById(specificTypeId).orElse(null);
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksByRange(s,startNo,endNo);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> availableISCPBlocks() {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findBySpecificType("ISCP");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksBySpecificType(s);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> availableGSMBlocks() {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findBySpecificType("GSM");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksBySpecificType(s);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<NumberBlock>> availableLandBlocks() {
        String accept = request.getHeader("Accept");
        com.nms.entities.SpecificType s = specificTypeRepository.findBySpecificType("Land");
        List<NumberBlock> numberBlocks = service.fetchNumberBlocksBySpecificType(s);
        return new ResponseEntity<List<NumberBlock>>(numberBlocks, HttpStatus.OK);
    }

}
