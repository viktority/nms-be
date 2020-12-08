package com.nms.repositories;


import com.nms.entities.NumberType;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NumberTypeRepository extends CrudRepository<NumberType, Long> {

}
