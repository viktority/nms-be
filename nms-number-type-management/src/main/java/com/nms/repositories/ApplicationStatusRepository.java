package com.nms.repositories;


import com.nms.entities.ApplicationStatus;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ApplicationStatusRepository extends CrudRepository<ApplicationStatus, Long> {

    ApplicationStatus findByName(String applicationStatusName);

}
