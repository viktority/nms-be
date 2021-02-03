package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.nms.entities.License;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import javax.persistence.OneToMany;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/**
 * StageOne
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class StageOne {
    @JsonProperty("id")
    private Integer id = null;


    private String representativeFullName;

    @JsonProperty("userId")
    private String userId = null;

    @JsonProperty("company")
    private String company = null;

    @JsonProperty("address")
    private String address = null;

    @JsonProperty("email")
    private String email = null;

    @JsonProperty("telephone")
    private String telephone = null;

    @JsonProperty("fax")
    private String fax = null;

    @JsonProperty("correspondenceAddress")
    private String correspondenceAddress = null;

    @JsonProperty("correspondenceEmail")
    private String correspondenceEmail = null;

    @JsonProperty("correspondenceTelephone")
    private String correspondenceTelephone = null;

    @JsonProperty("correspondenceFax")
    private String correspondenceFax = null;

    @JsonProperty("representativeEmail")
    private String representativeEmail = null;

    @JsonProperty("representativeTelephone")
    private String representativeTelephone = null;


    @JsonProperty("serviceType")
    private String serviceType = null;

    @JsonProperty("coverageArea")
    private String coverageArea = null;

    @JsonProperty("licenseId")
    private Integer licenseId = null;

    @OneToMany
    private List<String> otherLicense = null;

    @JsonProperty("licenseType")
    private String licenseType = null;

    @JsonProperty("previousLicense")
    @Valid
    private List<Integer> previousLicense = null;

    @JsonProperty("agreementReached")
    private Boolean agreementReached = null;

    @JsonProperty("interconnection")
    @Valid
    private List<HashMap> interconnection = null;

    public StageOne id(Integer id) {
        this.id = id;
        return this;
    }

    public String getRepresentativeFullName() {
        return representativeFullName;
    }

    public void setRepresentativeFullName(String representativeFullName) {
        this.representativeFullName = representativeFullName;
    }

    public List<String> getOtherLicense() {
        return otherLicense;
    }

    public void setOtherLicense(List<String> otherLicense) {
        this.otherLicense = otherLicense;
    }

    public Boolean getAgreementReached() {
        return agreementReached;
    }

    /**
     * Get id
     *
     * @return id
     **/
    @Schema(example = "1", description = "")

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public StageOne userId(String userId) {
        this.userId = userId;
        return this;
    }

    /**
     * Get userId
     *
     * @return userId
     **/
    @Schema(example = "abcd -123-dbff-dsds", description = "")

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public StageOne company(String company) {
        this.company = company;
        return this;
    }

    /**
     * Get company
     *
     * @return company
     **/
    @Schema(example = "Company", description = "")

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public StageOne address(String address) {
        this.address = address;
        return this;
    }

    /**
     * Get address
     *
     * @return address
     **/
    @Schema(example = "address", description = "")

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public StageOne email(String email) {
        this.email = email;
        return this;
    }

    /**
     * Get email
     *
     * @return email
     **/
    @Schema(example = "emain@email.com", description = "")

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public StageOne telephone(String telephone) {
        this.telephone = telephone;
        return this;
    }

    /**
     * Get telephone
     *
     * @return telephone
     **/
    @Schema(example = "08012345678", description = "")

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public StageOne fax(String fax) {
        this.fax = fax;
        return this;
    }

    /**
     * Get fax
     *
     * @return fax
     **/
    @Schema(example = "12345", description = "")

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public StageOne correspondenceAddress(String correspondenceAddress) {
        this.correspondenceAddress = correspondenceAddress;
        return this;
    }

    /**
     * Get correspondenceAddress
     *
     * @return correspondenceAddress
     **/
    @Schema(example = "address", description = "")

    public String getCorrespondenceAddress() {
        return correspondenceAddress;
    }

    public void setCorrespondenceAddress(String correspondenceAddress) {
        this.correspondenceAddress = correspondenceAddress;
    }

    public StageOne correspondenceEmail(String correspondenceEmail) {
        this.correspondenceEmail = correspondenceEmail;
        return this;
    }

    /**
     * Get correspondenceEmail
     *
     * @return correspondenceEmail
     **/
    @Schema(example = "emain@email.com", description = "")

    public String getCorrespondenceEmail() {
        return correspondenceEmail;
    }

    public void setCorrespondenceEmail(String correspondenceEmail) {
        this.correspondenceEmail = correspondenceEmail;
    }

    public StageOne correspondenceTelephone(String correspondenceTelephone) {
        this.correspondenceTelephone = correspondenceTelephone;
        return this;
    }

    /**
     * Get correspondenceTelephone
     *
     * @return correspondenceTelephone
     **/
    @Schema(example = "08012345678", description = "")

    public String getCorrespondenceTelephone() {
        return correspondenceTelephone;
    }

    public void setCorrespondenceTelephone(String correspondenceTelephone) {
        this.correspondenceTelephone = correspondenceTelephone;
    }

    public StageOne correspondenceFax(String correspondenceFax) {
        this.correspondenceFax = correspondenceFax;
        return this;
    }

    /**
     * Get correspondenceFax
     *
     * @return correspondenceFax
     **/
    @Schema(example = "12345", description = "")

    public String getCorrespondenceFax() {
        return correspondenceFax;
    }

    public void setCorrespondenceFax(String correspondenceFax) {
        this.correspondenceFax = correspondenceFax;
    }


    public StageOne representativeEmail(String representativeEmail) {
        this.representativeEmail = representativeEmail;
        return this;
    }

    /**
     * Get representativeEmail
     *
     * @return representativeEmail
     **/
    @Schema(example = "emain@email.com", description = "")

    public String getRepresentativeEmail() {
        return representativeEmail;
    }

    public void setRepresentativeEmail(String representativeEmail) {
        this.representativeEmail = representativeEmail;
    }

    public StageOne representativeTelephone(String representativeTelephone) {
        this.representativeTelephone = representativeTelephone;
        return this;
    }

    /**
     * Get representativeTelephone
     *
     * @return representativeTelephone
     **/
    @Schema(example = "08012345678", description = "")

    public String getRepresentativeTelephone() {
        return representativeTelephone;
    }

    public void setRepresentativeTelephone(String representativeTelephone) {
        this.representativeTelephone = representativeTelephone;
    }


    public StageOne serviceType(String serviceType) {
        this.serviceType = serviceType;
        return this;
    }

    /**
     * Get serviceType
     *
     * @return serviceType
     **/
    @Schema(example = "Type", description = "")

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public StageOne coverageArea(String coverageArea) {
        this.coverageArea = coverageArea;
        return this;
    }

    /**
     * Get coverageArea
     *
     * @return coverageArea
     **/
    @Schema(example = "Area", description = "")

    public String getCoverageArea() {
        return coverageArea;
    }

    public void setCoverageArea(String coverageArea) {
        this.coverageArea = coverageArea;
    }

    public StageOne licenseId(Integer licenseId) {
        this.licenseId = licenseId;
        return this;
    }

    /**
     * Get licenseId
     *
     * @return licenseId
     **/
    @Schema(example = "6", description = "")

    public Integer getLicenseId() {
        return licenseId;
    }

    public void setLicenseId(Integer licenseId) {
        this.licenseId = licenseId;
    }


    public StageOne licenseType(String licenseType) {
        this.licenseType = licenseType;
        return this;
    }

    /**
     * Get licenseType
     *
     * @return licenseType
     **/
    @Schema(example = "license type", description = "")

    public String getLicenseType() {
        return licenseType;
    }

    public void setLicenseType(String licenseType) {
        this.licenseType = licenseType;
    }

    public StageOne previousLicense(List<Integer> previousLicense) {
        this.previousLicense = previousLicense;
        return this;
    }

    public StageOne addPreviousLicenseItem(Integer previousLicenseItem) {
        if (this.previousLicense == null) {
            this.previousLicense = new ArrayList<Integer>();
        }
        this.previousLicense.add(previousLicenseItem);
        return this;
    }

    /**
     * Get previousLicense
     *
     * @return previousLicense
     **/
    @Schema(description = "")

    public List<Integer> getPreviousLicense() {
        return previousLicense;
    }

    public void setPreviousLicense(List<Integer> previousLicense) {
        this.previousLicense = previousLicense;
    }

    public StageOne agreementReached(Boolean agreementReached) {
        this.agreementReached = agreementReached;
        return this;
    }

    /**
     * Get agreementReached
     *
     * @return agreementReached
     **/
    @Schema(example = "false", description = "")

    public Boolean isAgreementReached() {
        return agreementReached;
    }

    public void setAgreementReached(Boolean agreementReached) {
        this.agreementReached = agreementReached;
    }

    public StageOne interconnection(List<HashMap> interconnection) {
        this.interconnection = interconnection;
        return this;
    }

    public StageOne addInterconnectionItem(HashMap interconnectionItem) {
        if (this.interconnection == null) {
            this.interconnection = new ArrayList<HashMap>();
        }
        this.interconnection.add(interconnectionItem);
        return this;
    }

    /**
     * Get interconnection
     *
     * @return interconnection
     **/
    @Schema(description = "")

    public List<HashMap> getInterconnection() {
        return interconnection;
    }

    public void setInterconnection(List<HashMap> interconnection) {
        this.interconnection = interconnection;
    }


    /**
     * Convert the given object to string with each line indented by 4 spaces
     * (except the first line).
     */
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }
}
