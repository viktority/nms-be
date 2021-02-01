package com.nms.repositories;


import com.nms.entities.SpecificType;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpecificTypeRepository extends CrudRepository<SpecificType, Integer> {

    Iterable<Object> findByTypeId(Integer typeId);

   SpecificType findBySpecificType(String s);
}
