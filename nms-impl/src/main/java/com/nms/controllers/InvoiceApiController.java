package com.nms.controllers;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.nms.rest.server.apis.InvoiceApi;
import com.nms.rest.server.models.Invoice;
import com.nms.rest.server.models.InvoiceDto;
import com.nms.rest.server.models.ResponseModel;
import com.nms.rest.server.models.helper.Response;
import com.nms.services.InvoiceService;
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

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")
@RestController
public class InvoiceApiController implements InvoiceApi {

    private static final Logger log = LoggerFactory.getLogger(InvoiceApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    InvoiceService service;

    @org.springframework.beans.factory.annotation.Autowired
    public InvoiceApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<ResponseModel> addInvoice(@Parameter(in = ParameterIn.DEFAULT, description = "Application to add", schema = @Schema()) @Valid @RequestBody InvoiceDto body) {
        String accept = request.getHeader("Accept");
        boolean created = service.addInvoice(body);
        if (created) return new ResponseEntity<>(ResponseModel.getModel(Response.CREATED), HttpStatus.CREATED);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<ResponseModel> deleteInvoicenById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("invoiceId") Long invoiceId) {
        String accept = request.getHeader("Accept");
        boolean deleted = service.deleteInvoicenById(invoiceId);
        if (deleted) return new ResponseEntity<>(ResponseModel.getModel(Response.DELETED), HttpStatus.OK);
        return new ResponseEntity<>(ResponseModel.getModel(Response.ERROR), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public ResponseEntity<List<Invoice>> getInvoice() {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        List<Invoice> invoices = service.getInvoice();
        return new ResponseEntity<List<Invoice>>(invoices == null ? new ArrayList<>() : invoices, HttpStatus.OK);
    }

    public ResponseEntity<Invoice> getInvoiceById(@Parameter(in = ParameterIn.PATH, description = "The Application Id.", required = true, schema = @Schema()) @PathVariable("invoiceId") Long invoiceId) {
        String accept = request.getHeader("Accept");
        //  if (accept != null && accept.contains("application/json")) {
        Invoice invoice = service.getInvoiceById(invoiceId);

        return new ResponseEntity(invoice == null ? ResponseModel.getModel(Response.NOT_FOUND) : invoice, HttpStatus.OK);
    }

    public ResponseEntity<Invoice> updateInvoiceById(@Parameter(in = ParameterIn.PATH, description = "The InvoiceId used to update the service information", required = true, schema = @Schema()) @PathVariable("invoiceId") Long invoiceId, @Parameter(in = ParameterIn.DEFAULT, description = "The Application to update.", required = true, schema = @Schema()) @Valid @RequestBody InvoiceDto body) {
        String accept = request.getHeader("Accept");
        //    if (accept != null && accept.contains("application/json")) {
        Invoice invoice = service.updateInvoiceById(invoiceId, body);
        return new ResponseEntity(invoice == null ? ResponseModel.getModel(Response.ERROR) : invoice, HttpStatus.OK);
        //   }
    }
}


