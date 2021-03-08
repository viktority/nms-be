package com.nms.repositories;


import com.nms.entities.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UsersRepository extends CrudRepository<User, String> {
    User findByAppUserEmail(String email);
    User findByAppUserId(String userId);
    List<User> findByRoleId(Long roleId);
}
