package com.nms.security;

import com.nms.entities.User;
import com.nms.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
public class AuthenticatedUser {

    @Autowired
    UsersRepository usersRepository;

    public String getName() {
        return this.getAuthentication().getName();
    }

    public String getUserId() {
        return this.getUser() == null ? null : getUser().getUserId();
    }

    public User getUser() {
        return this.getName() != null ? usersRepository.findByEmail(this.getName()) : null;
    }

    Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();

    }
}
