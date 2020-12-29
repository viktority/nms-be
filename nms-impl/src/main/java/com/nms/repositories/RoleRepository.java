package com.nms.repositories;


import com.nms.entities.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {

	Role findByName(String name);

    List<Role> findByPrivilegesId(long longValue);
    //Collection<Role> findAllByUsersUserId(String userId);

}
