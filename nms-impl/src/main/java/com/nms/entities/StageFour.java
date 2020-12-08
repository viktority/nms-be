package com.nms.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * StageFour
 */
@Entity
public class StageFour {
    @Id
    @GeneratedValue
    private Integer id = null;

    @OneToOne
    private User userId = null;
    private String comments = null;
    private Boolean undertaken = null;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Boolean getUndertaken() {
        return undertaken;
    }

    public void setUndertaken(Boolean undertaken) {
        this.undertaken = undertaken;
    }
}
