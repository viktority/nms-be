package com.nms.models.ncc;

import java.util.Date;

public class OrganizationTypeId{
    private String organizationTypeId;
    private String organizationTypeName;
    private String organizationTypeDescription;
    private Date dateCreated;
    private String createdBy;

    public String getOrganizationTypeId() {
        return organizationTypeId;
    }

    public void setOrganizationTypeId(String organizationTypeId) {
        this.organizationTypeId = organizationTypeId;
    }

    public String getOrganizationTypeName() {
        return organizationTypeName;
    }

    public void setOrganizationTypeName(String organizationTypeName) {
        this.organizationTypeName = organizationTypeName;
    }

    public String getOrganizationTypeDescription() {
        return organizationTypeDescription;
    }

    public void setOrganizationTypeDescription(String organizationTypeDescription) {
        this.organizationTypeDescription = organizationTypeDescription;
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
}
