package com.nms.repositories;


import com.nms.entities.License;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LicenseRepository extends CrudRepository<License, Long> {

    License findByName(String licenseName);
}
