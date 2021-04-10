package com.nms.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class OptionType {
    @Id
    @GeneratedValue
    private long id;

    private String optionTypeId;
    private Date dateCreated;
    private String createdBy;
    private String optionTypeName;

    public String getOptionTypeId() {
        return optionTypeId;
    }

    public void setOptionTypeId(String optionTypeId) {
        this.optionTypeId = optionTypeId;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getOptionTypeName() {
        return optionTypeName;
    }

    public void setOptionTypeName(String optionTypeName) {
        this.optionTypeName = optionTypeName;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
