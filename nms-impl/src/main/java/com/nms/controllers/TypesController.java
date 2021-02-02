package com.nms.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.TypesApi;
import com.nms.models.NumberTypeDto;
import com.nms.models.ResponseModel;
import com.nms.models.SpecificType;
import com.nms.models.Type;
import com.nms.models.helper.Response;
import com.nms.services.SpecificTypeService;
import com.nms.services.TypeService;
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
        List<Type> numbers = typeService.getAllTypes();
        return new ResponseEntity<List<Type>>(numbers == null ? new ArrayList<>() : numbers, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<SpecificType>> getSpecificTypesByTypeId(Integer typeId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<SpecificType> numbers = specificTypeService.getSpecificTypesByTypeId(typeId);
        return new ResponseEntity<List<SpecificType>>(numbers == null ? new ArrayList<>() : numbers, HttpStatus.OK);
    }


    @Override
    public ResponseEntity<List<SpecificType>> getAllSpecificTypes() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<SpecificType> numbers = specificTypeService.allSpecificType();
        return new ResponseEntity<List<SpecificType>>(numbers, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Type> addType(@Valid NumberTypeDto body) {
        String accept = request.getHeader("Accept");
        Type created = typeService.addType(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<ResponseModel> deleteTypeById(Integer typeId) {
        String accept = request.getHeader("Accept");
        boolean deleted = typeService.deleteTypeById(typeId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<Type> getTypeById(Integer typeId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Type numberType = typeService.getTypeById(typeId);

        return new ResponseEntity(numberType == null ? ResponseModel.getModel(Response.NOT_FOUND) : numberType, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Type> updateTypeById(Integer typeId, @Valid NumberTypeDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Type numberType = typeService.updateTypeById(typeId, body);
        return new ResponseEntity(numberType == null ? ResponseModel.getModel(Response.ERROR) : numberType, HttpStatus.OK);
        //   }
    }

    @Override
    public ResponseEntity<SpecificType> addSpecificType(Integer typeId, @Valid SpecificType body) {
        String accept = request.getHeader("Accept");
        SpecificType created = specificTypeService.addSpecificType(typeId, body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<ResponseModel> deleteSpecificTypeById(Integer specificTypeId) {
        String accept = request.getHeader("Accept");
        boolean deleted = specificTypeService.deleteSpecificTypeById(specificTypeId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<SpecificType> getSpecificTypeById(Integer specificTypeId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        SpecificType numberType = specificTypeService.getSpecificTypeById(specificTypeId);

        return new ResponseEntity(numberType == null ? ResponseModel.getModel(Response.NOT_FOUND) : numberType, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<SpecificType> updateSpecificTypeById(Integer specificTypeId, @Valid SpecificType body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        SpecificType numberType = specificTypeService.updateSpecificTypeById(specificTypeId, body);
        return new ResponseEntity(numberType == null ? ResponseModel.getModel(Response.ERROR) : numberType, HttpStatus.OK);
    }
}
