package com.nms.services;

import com.nms.models.BillingPlans;
import com.nms.models.BillingPlansDto;
import com.nms.repositories.BillingPlanRepository;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class BillingPlanService {
    @Autowired
    BillingPlanRepository billingPlanRepository;

    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    public BillingPlans addBillingPlan(BillingPlansDto body) {
        com.nms.entities.BillingPlan map = mapper.map(body, com.nms.entities.BillingPlan.class);
        map.setCreatedBy(user.getUser());
        map.setUpdatedBy(user.getUser());
        com.nms.entities.BillingPlan save = billingPlanRepository.save(map);
        return (save != null) ? mapper.map(save, BillingPlans.class) : null;
    }

    public boolean deleteBillingPlanById(Long billingPlanId) {
        billingPlanRepository.deleteById(billingPlanId);
        return true;
    }

    public List<BillingPlans> getBillingPlan() {
        List<BillingPlans> list = new ArrayList<>();
        billingPlanRepository.findAll().forEach(as -> {
            BillingPlans map = mapper.map(as, BillingPlans.class);
            map.setCreatedBy(as.getCreatedBy() == null ? null : as.getCreatedBy().getAppUserId());
            map.setUpdatedBy(as.getUpdatedBy() == null ? null : as.getUpdatedBy().getAppUserId());
            list.add(map);
        });
        return list;
    }

    public BillingPlans getBillingPlanByName(String billingPlanName) {
        com.nms.entities.BillingPlan byName = billingPlanRepository.findByName(billingPlanName);
        if (byName != null) {
            BillingPlans map = mapper.map(byName, BillingPlans.class);
            map.setCreatedBy(byName.getCreatedBy() == null ? null : byName.getCreatedBy().getAppUserId());
            map.setUpdatedBy(byName.getUpdatedBy() == null ? null : byName.getUpdatedBy().getAppUserId());
            return map;
        }
        return null;
    }

    public BillingPlans updatebillingPlanId(Long billingPlanId, BillingPlansDto body) {
        Optional<com.nms.entities.BillingPlan> byId = billingPlanRepository.findById(billingPlanId);
        if (byId.isPresent()) {
            com.nms.entities.BillingPlan bp = byId.get();
            bp.setName(body.getName());
            bp.setDuration(body.getDuration());
            bp.setUpdatedBy(user == null ? null : user.getUser());
            com.nms.entities.BillingPlan save = billingPlanRepository.save(bp);

            BillingPlans map = mapper.map(save, BillingPlans.class);
            map.setCreatedBy(bp.getCreatedBy() == null ? null : bp.getCreatedBy().getAppUserId());
            map.setUpdatedBy(bp.getUpdatedBy() == null ? null : bp.getUpdatedBy().getAppUserId());
            return map;
        }
        return null;
    }
}
