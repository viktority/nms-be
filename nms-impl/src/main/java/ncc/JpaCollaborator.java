package ncc;

import java.util.Date;

public class JpaCollaborator {
    private String collaboratorId;
    private boolean isGeneric;
    private Object address;
    private int ordering;
    private Object dateModified;
    private Object modifiedBy;
    private Date dateCreated;
    private String createdBy;
    private Object sector;

    public String getCollaboratorId() {
        return collaboratorId;
    }

    public void setCollaboratorId(String collaboratorId) {
        this.collaboratorId = collaboratorId;
    }

    public boolean isGeneric() {
        return isGeneric;
    }

    public void setGeneric(boolean generic) {
        isGeneric = generic;
    }

    public Object getAddress() {
        return address;
    }

    public void setAddress(Object address) {
        this.address = address;
    }

    public int getOrdering() {
        return ordering;
    }

    public void setOrdering(int ordering) {
        this.ordering = ordering;
    }

    public Object getDateModified() {
        return dateModified;
    }

    public void setDateModified(Object dateModified) {
        this.dateModified = dateModified;
    }

    public Object getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(Object modifiedBy) {
        this.modifiedBy = modifiedBy;
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

    public Object getSector() {
        return sector;
    }

    public void setSector(Object sector) {
        this.sector = sector;
    }
}
