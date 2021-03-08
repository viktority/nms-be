package com.nms.repositories;


import com.nms.entities.Organization;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface OrganizationRepository extends CrudRepository<Organization, String> {

    boolean existsByRcNumber(String rcNum);

    Optional<Organization> findByRcNumber(String s);
}
