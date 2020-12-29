package com.nms.entities;


import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
public class Privilege implements Serializable {

    public Privilege(String name2) {
        // TODO Auto-generated constructor stub
        this.name = name2;
    }

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    @OneToOne
    private User createdBy;

    @OneToOne
    private User updatedBy;

    @ManyToMany(mappedBy = "privileges", cascade = CascadeType.ALL)
    private Collection<Role> roles;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Collection<Role> getRoles() {
        return roles;
    }

    public void setRoles(Collection<Role> roles) {
        this.roles = roles;
    }

    public Privilege() {
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    public User getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(User updatedBy) {
        this.updatedBy = updatedBy;
    }
}
