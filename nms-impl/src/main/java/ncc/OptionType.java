package ncc;

import java.util.Date;

public class OptionType {
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
}
