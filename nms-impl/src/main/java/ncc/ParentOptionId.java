package ncc;

import java.util.Date;

public class ParentOptionId {
    private Date dateCreated;
    private Object dateModified;
    private Object modifiedBy;
    private String createdBy;
    private String optionId;
    private String optionName;
    private Object optionDescription;
    private Object actionAdditionalDetails;
    private OptionType optionType;
    private Object parentOptionId;

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
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

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getOptionId() {
        return optionId;
    }

    public void setOptionId(String optionId) {
        this.optionId = optionId;
    }

    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName;
    }

    public Object getOptionDescription() {
        return optionDescription;
    }

    public void setOptionDescription(Object optionDescription) {
        this.optionDescription = optionDescription;
    }

    public Object getActionAdditionalDetails() {
        return actionAdditionalDetails;
    }

    public void setActionAdditionalDetails(Object actionAdditionalDetails) {
        this.actionAdditionalDetails = actionAdditionalDetails;
    }

    public OptionType getOptionType() {
        return optionType;
    }

    public void setOptionType(OptionType optionType) {
        this.optionType = optionType;
    }

    public Object getParentOptionId() {
        return parentOptionId;
    }

    public void setParentOptionId(Object parentOptionId) {
        this.parentOptionId = parentOptionId;
    }
}
