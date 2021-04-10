package ncc;

import java.util.Date;

public class OrganizationId {
    private JpaCollaborator jpaCollaborator;
    private JpaContractor jpaContractor;
    private String organizationId;
    private Date dateCreated;
    private String createdBy;
    private String organizationShortName;
    private String organizationDescription;
    private String organizationGroup;
    private String organizationLongName;
    private String logoPath;
    private Date dateModified;
    private String modifiedBy;
    private boolean allowedToUseApi;
    private OrganizationTypeId organizationTypeId;
    private String organizationTypeName;
    private String organizationTypeDescription;

    public JpaCollaborator getJpaCollaborator() {
        return jpaCollaborator;
    }

    public void setJpaCollaborator(JpaCollaborator jpaCollaborator) {
        this.jpaCollaborator = jpaCollaborator;
    }

    public JpaContractor getJpaContractor() {
        return jpaContractor;
    }

    public void setJpaContractor(JpaContractor jpaContractor) {
        this.jpaContractor = jpaContractor;
    }

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
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

    public String getOrganizationShortName() {
        return organizationShortName;
    }

    public void setOrganizationShortName(String organizationShortName) {
        this.organizationShortName = organizationShortName;
    }

    public String getOrganizationDescription() {
        return organizationDescription;
    }

    public void setOrganizationDescription(String organizationDescription) {
        this.organizationDescription = organizationDescription;
    }

    public String getOrganizationGroup() {
        return organizationGroup;
    }

    public void setOrganizationGroup(String organizationGroup) {
        this.organizationGroup = organizationGroup;
    }

    public String getOrganizationLongName() {
        return organizationLongName;
    }

    public void setOrganizationLongName(String organizationLongName) {
        this.organizationLongName = organizationLongName;
    }

    public String getLogoPath() {
        return logoPath;
    }

    public void setLogoPath(String logoPath) {
        this.logoPath = logoPath;
    }

    public Date getDateModified() {
        return dateModified;
    }

    public void setDateModified(Date dateModified) {
        this.dateModified = dateModified;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public boolean isAllowedToUseApi() {
        return allowedToUseApi;
    }

    public void setAllowedToUseApi(boolean allowedToUseApi) {
        this.allowedToUseApi = allowedToUseApi;
    }

    public OrganizationTypeId getOrganizationTypeId() {
        return organizationTypeId;
    }

    public void setOrganizationTypeId(OrganizationTypeId organizationTypeId) {
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
}
