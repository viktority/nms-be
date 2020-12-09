package com.nms.repositories;


import com.nms.entities.StageFour;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StageFourRepository extends CrudRepository<StageFour, Integer> {


}
