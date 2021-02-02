package com.nms.repositories;


import com.nms.entities.Number;
import com.nms.entities.SpecificType;
import com.nms.entities.Type;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NumberRepository extends CrudRepository<Number, Long> {

    List<Number> findByTypeOrderByStartAsc(Type numberType);

    List<Number> findBySpecificTypeOrderByStartAsc(SpecificType specificType);
}
