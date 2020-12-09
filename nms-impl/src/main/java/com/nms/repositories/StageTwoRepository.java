package com.nms.repositories;


import com.nms.entities.StageTwo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StageTwoRepository extends CrudRepository<StageTwo, Integer> {


}
