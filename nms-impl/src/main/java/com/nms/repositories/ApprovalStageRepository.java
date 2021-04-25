package com.nms.repositories;


import com.nms.entities.ApprovalStages;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ApprovalStageRepository extends CrudRepository<ApprovalStages, Long> {

    Optional<ApprovalStages> findByName(String approval_stage_two);
}
