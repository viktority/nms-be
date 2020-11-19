package com.nms.repositories;


import com.nms.entities.Users;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepository extends CrudRepository<Users, String> {
	Users findByEmail(String email);
	Users findByUserId(String userId);
	Users findByToken(String token);
}
