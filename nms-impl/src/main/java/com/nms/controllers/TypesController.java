package com.nms.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.TypesApi;
import com.nms.models.SpecificType;
import com.nms.models.Type;
import com.nms.services.SpecificTypeService;
import com.nms.services.TypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T11:45:01.773Z[GMT]")
@RestController
public class TypesController implements TypesApi {

    @Autowired
    TypeService typeService;

    @Autowired
    SpecificTypeService specificTypeService;

    private static final Logger log = LoggerFactory.getLogger(ChargesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    public TypesController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Override
    public ResponseEntity<List<Type>> getTypes() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Type> numbers = typeService.getTypes();
        return new ResponseEntity<List<Type>>(numbers == null ? new ArrayList<>() : numbers, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<SpecificType>> getSpecificTypesByTypeId(Integer typeId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<SpecificType> numbers = specificTypeService.getSpecificTypesByTypeId(typeId);
        return new ResponseEntity<List<SpecificType>>(numbers == null ? new ArrayList<>() : numbers, HttpStatus.OK);
    }
}
