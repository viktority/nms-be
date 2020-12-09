package com.nms.repositories;


import com.nms.entities.StageOne;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StageOneRepository extends CrudRepository<StageOne, Integer> {


}
