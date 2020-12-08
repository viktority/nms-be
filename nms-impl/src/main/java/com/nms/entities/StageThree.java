package com.nms.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * StageThree
 */
@Entity
public class StageThree {
    @Id
    @GeneratedValue
    private Integer id = null;

    @OneToOne
    private User userId = null;
    private Boolean documentCompleted = null;

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

    public Boolean getDocumentCompleted() {
        return documentCompleted;
    }

    public void setDocumentCompleted(Boolean documentCompleted) {
        this.documentCompleted = documentCompleted;
    }
}
