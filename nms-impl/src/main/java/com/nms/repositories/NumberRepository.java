package com.nms.repositories;


import com.nms.entities.Number;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NumberRepository extends CrudRepository<Number, Long> {

}
