package com.nms.repositories;


import com.nms.entities.StageThree;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StageThreeRepository extends CrudRepository<StageThree, Integer> {


}
