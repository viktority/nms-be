package com.nms.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.apis.DepartmentApi;
import com.nms.models.Department;
import com.nms.models.DepartmentDto;
import com.nms.models.ResponseModel;
import com.nms.models.helper.Response;
import com.nms.services.DepartmentService;
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
public class DepartmentController implements DepartmentApi {


    private static final Logger log = LoggerFactory.getLogger(ChargesApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public DepartmentController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Autowired
    DepartmentService service;

    @Override
    public ResponseEntity<Department> addDepartment(@Valid DepartmentDto body) {
        String accept = request.getHeader("Accept");
        Department created = service.addDepartment(body);
        if (created != null) return new ResponseEntity<>(created, HttpStatus.CREATED);
        return new ResponseEntity(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<ResponseModel> deleteDepartmentnById(Long departmentId) {
        String accept = request.getHeader("Accept");
        boolean deleted = service.deleteDepartmentnById(departmentId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @Override
    public ResponseEntity<List<Department>> getDepartment() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Department> departments = service.getDepartments();
        return new ResponseEntity<List<Department>>(departments == null ? new ArrayList<>() : departments, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Department> getDepartmentById(Long departmentId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Department charges = service.getDepartmentById(departmentId);

        return new ResponseEntity(charges == null ? ResponseModel.getModel(Response.NOT_FOUND) : charges, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Department> updateDepartmentById(Long departmentId, @Valid DepartmentDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Department charge = service.updateDepartmentById(departmentId, body);
        return new ResponseEntity(charge == null ? ResponseModel.getModel(Response.ERROR) : charge, HttpStatus.OK);
    }
}
