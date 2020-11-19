package com.nms.repositories;


import com.nms.entities.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {

	Role findByName(String name);
	//Collection<Role> findAllByUsersUserId(String userId);

}
