package com.nms.repositories;


import com.nms.entities.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UsersRepository extends CrudRepository<User, String> {
    User findByEmail(String email);

    User findByUserId(String userId);

    User findByToken(String token);

    List<User> findByRoleId(Long roleId);
}
