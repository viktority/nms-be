package com.nms.repositories;


import com.nms.entities.Fee;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeeRepository extends CrudRepository<Fee, Long> {

    Fee findByName(String feeName);
}
