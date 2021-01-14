package com.nms.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.io.Serializable;

@Entity(name = "nms_user")
public class User implements Serializable {

    private static final long serialVersionUID = -2731425678149216053L;

    @Id
    @Column(nullable = false, unique = true)
    private String userId;

    @Column(nullable = false, length = 120, unique = true)
    @Email
    private String email;

    private String encryptedPassword;

    private boolean enabled;

    private boolean tokenExpired;

    private String token;

    private boolean active;

    @JsonIgnore
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.DETACH)
    private Role role;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEncryptedPassword() {
        return encryptedPassword;
    }

    public void setEncryptedPassword(String encryptedPassword) {
        this.encryptedPassword = encryptedPassword;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public boolean isTokenExpired() {
        return tokenExpired;
    }

    public void setTokenExpired(boolean tokenExpired) {
        this.tokenExpired = tokenExpired;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public User() {
    }
}
