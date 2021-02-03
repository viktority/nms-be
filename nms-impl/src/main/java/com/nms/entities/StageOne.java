package com.nms.entities;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;

/**
 * StageOne
 */
@Entity
public class StageOne {
    @Id
    @GeneratedValue
    private Integer id = null;

    private String representativeFullName;

    @OneToOne
    private User userId = null;

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

    @OneToOne
    private License license = null;

    @ElementCollection
    private List<String> otherLicense = null;

    @JsonProperty("licenseType")
    private String licenseType = null;

    @JsonProperty("previousLicense")
    @Valid
    @ElementCollection
    private List<Integer> previousLicense = null;

    @JsonProperty("agreementReached")
    private Boolean agreementReached = null;

    @ElementCollection
    @Column(length = 10000)
    private List<HashMap> interconnection = null;

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

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getCorrespondenceAddress() {
        return correspondenceAddress;
    }

    public void setCorrespondenceAddress(String correspondenceAddress) {
        this.correspondenceAddress = correspondenceAddress;
    }

    public String getCorrespondenceEmail() {
        return correspondenceEmail;
    }

    public void setCorrespondenceEmail(String correspondenceEmail) {
        this.correspondenceEmail = correspondenceEmail;
    }

    public String getCorrespondenceTelephone() {
        return correspondenceTelephone;
    }

    public void setCorrespondenceTelephone(String correspondenceTelephone) {
        this.correspondenceTelephone = correspondenceTelephone;
    }

    public String getCorrespondenceFax() {
        return correspondenceFax;
    }

    public void setCorrespondenceFax(String correspondenceFax) {
        this.correspondenceFax = correspondenceFax;
    }


    public String getRepresentativeEmail() {
        return representativeEmail;
    }

    public void setRepresentativeEmail(String representativeEmail) {
        this.representativeEmail = representativeEmail;
    }

    public String getRepresentativeTelephone() {
        return representativeTelephone;
    }

    public void setRepresentativeTelephone(String representativeTelephone) {
        this.representativeTelephone = representativeTelephone;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getCoverageArea() {
        return coverageArea;
    }

    public void setCoverageArea(String coverageArea) {
        this.coverageArea = coverageArea;
    }

    public License getLicense() {
        return license;
    }

    public void setLicense(License license) {
        this.license = license;
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

    public String getLicenseType() {
        return licenseType;
    }

    public void setLicenseType(String licenseType) {
        this.licenseType = licenseType;
    }

    public List<Integer> getPreviousLicense() {
        return previousLicense;
    }

    public void setPreviousLicense(List<Integer> previousLicense) {
        this.previousLicense = previousLicense;
    }

    public Boolean getAgreementReached() {
        return agreementReached;
    }

    public void setAgreementReached(Boolean agreementReached) {
        this.agreementReached = agreementReached;
    }

    public List<HashMap> getInterconnection() {
        return interconnection;
    }

    public void setInterconnection(List<HashMap> interconnection) {
        this.interconnection = interconnection;
    }
}
