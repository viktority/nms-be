package com.nms.repositories;


import com.nms.entities.Charge;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChargeRepository extends CrudRepository<Charge, Long> {

    Charge findByName(String chargeName);
}
