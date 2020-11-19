package com.nms.repositories;


import com.nms.entities.ApprovalStages;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ApprovalStageRepository extends CrudRepository<ApprovalStages, Long> {

}
