package com.nms.models.ncc;

import java.util.Date;

public class Application{
    private boolean hideFromDashboard;
    private int ordering;
    private Object paymentCallBackUrl;
    private String logoPath;
    private String applicationId;
    private String applicationName;
    private String applicationHost;
    private boolean privateAccessEnabled;
    private String applicationDescription;
    private Date dateCreated;
    private Date dateModified;
    private String modifiedBy;
    private String createdBy;
    private String actionAdditionalDetails;

    public boolean isHideFromDashboard() {
        return hideFromDashboard;
    }

    public void setHideFromDashboard(boolean hideFromDashboard) {
        this.hideFromDashboard = hideFromDashboard;
    }

    public int getOrdering() {
        return ordering;
    }

    public void setOrdering(int ordering) {
        this.ordering = ordering;
    }

    public Object getPaymentCallBackUrl() {
        return paymentCallBackUrl;
    }

    public void setPaymentCallBackUrl(Object paymentCallBackUrl) {
        this.paymentCallBackUrl = paymentCallBackUrl;
    }

    public String getLogoPath() {
        return logoPath;
    }

    public void setLogoPath(String logoPath) {
        this.logoPath = logoPath;
    }

    public String getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(String applicationId) {
        this.applicationId = applicationId;
    }

    public String getApplicationName() {
        return applicationName;
    }

    public void setApplicationName(String applicationName) {
        this.applicationName = applicationName;
    }

    public String getApplicationHost() {
        return applicationHost;
    }

    public void setApplicationHost(String applicationHost) {
        this.applicationHost = applicationHost;
    }

    public boolean isPrivateAccessEnabled() {
        return privateAccessEnabled;
    }

    public void setPrivateAccessEnabled(boolean privateAccessEnabled) {
        this.privateAccessEnabled = privateAccessEnabled;
    }

    public String getApplicationDescription() {
        return applicationDescription;
    }

    public void setApplicationDescription(String applicationDescription) {
        this.applicationDescription = applicationDescription;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
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

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getActionAdditionalDetails() {
        return actionAdditionalDetails;
    }

    public void setActionAdditionalDetails(String actionAdditionalDetails) {
        this.actionAdditionalDetails = actionAdditionalDetails;
    }
}

