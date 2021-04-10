package ncc;

import java.util.Date;

public class OwnershipType {
    private Date dateCreated;
    private Date dateModified;
    private String modifiedBy;
    private String createdBy;
    private String optionId;
    private String optionName;
    private String optionDescription;
    private String actionAdditionalDetails;
    private OptionType optionType;
    private Object parentOptionId;

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

    public String getOptionDescription() {
        return optionDescription;
    }

    public void setOptionDescription(String optionDescription) {
        this.optionDescription = optionDescription;
    }

    public String getActionAdditionalDetails() {
        return actionAdditionalDetails;
    }

    public void setActionAdditionalDetails(String actionAdditionalDetails) {
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
