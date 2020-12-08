package com.nms.repositories;


import com.nms.entities.BillingPlan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BillingPlanRepository extends CrudRepository<BillingPlan, Long> {

    BillingPlan findByName(String billingPlanName);

}
