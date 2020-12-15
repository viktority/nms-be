package com.nms.services;


import com.nms.entities.Application;
import com.nms.entities.Fee;
import com.nms.entities.User;
import com.nms.repositories.ApplicationRepository;
import com.nms.repositories.FeeRepository;
import com.nms.repositories.InvoiceRepository;
import com.nms.rest.server.models.Invoice;
import com.nms.rest.server.models.InvoiceDto;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class InvoiceService {

    @Autowired
    InvoiceRepository repository;
    @Autowired
    ModelMapper mapper;
    @Autowired
    ApplicationRepository applicationRepository;

    @Autowired
    FeeRepository feeRepository;
    @Autowired
    AuthenticatedUser user;

    @Autowired
    UsersService usersService;

    public Invoice addInvoice(InvoiceDto body) {
        mapper.getConfiguration().setAmbiguityIgnored(true);
        com.nms.entities.Invoice map = mapper.map(body, com.nms.entities.Invoice.class);
        String applicationId = body.getApplicationId();
        if (applicationId != null) {
            Optional<Application> byId = applicationRepository.findById(applicationId);
            if (byId.isPresent()) map.setApplication(byId.get());
            else map.setApplication(null);
        }
        Integer feeId = body.getFeeId();
        if (feeId != null && feeId > 0) {
            Optional<Fee> byId = feeRepository.findById(feeId.longValue());
            if (byId.isPresent()) map.setFee(byId.get());
            else map.setFee(null);
        }
        User userByUserId = usersService.getUserByUserId(body.getUserId());
        map.setUserId(userByUserId);
        map.setUpdatedBy(user.getUser());
        map.setCreatedBy(user.getUser());
        map.setPaid(false);

        com.nms.entities.Invoice save = repository.save(map);
        return save != null ? mapper.map(save, Invoice.class) : null;
    }

    public boolean deleteInvoicenById(Long invoiceId) {
        repository.deleteById(invoiceId.intValue());
        return true;
    }

    public List<Invoice> getInvoice() {
        List<Invoice> invoices = new ArrayList<>();
        repository.findAll().forEach(invoice -> invoices.add(deconstructInvoice(invoice)));
        return invoices;
    }

    public Invoice getInvoiceById(Long invoiceId) {
        Optional<com.nms.entities.Invoice> byId = repository.findById(invoiceId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.Invoice invoice = byId.get();
            return deconstructInvoice(invoice);
        }
        return null;
    }

    public Invoice updateInvoiceById(Long invoiceId, InvoiceDto body) {
        Optional<com.nms.entities.Invoice> byId = repository.findById(invoiceId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.Invoice invoice = byId.get();
            com.nms.entities.Invoice map = mapper.map(body, com.nms.entities.Invoice.class);
            map.setId(invoice.getId());
            Integer feeId = body.getFeeId();
            if (feeId != null && feeId > 0) {
                Optional<Fee> f = feeRepository.findById(feeId.longValue());
                if (f.isPresent()) map.setFee(f.get());
            }
            if (body.getApplicationId() != null) {
                Optional<Application> app = applicationRepository.findById(body.getApplicationId());
                if (app.isPresent()) map.setApplication(app.get());
            }
            map.setUpdatedBy(user.getUser());
            com.nms.entities.Invoice save = repository.save(map);
            return deconstructInvoice(save);
        }
        return null;
    }

    private Invoice deconstructInvoice(com.nms.entities.Invoice invoice) {
        Invoice map = mapper.map(invoice, Invoice.class);
        if (invoice.getApplication() != null)
            map.setApplicationId(invoice.getApplication().getApplicationId());
        if (invoice.getFee() != null)
            map.setFeeId(invoice.getFee().getId().intValue());
        map.setCreatedBy(invoice.getCreatedBy() == null ? null : invoice.getCreatedBy().getUserId());
        map.setUpdatedBy(invoice.getUpdatedBy() == null ? null : invoice.getUpdatedBy().getUserId());
        return map;
    }
}
