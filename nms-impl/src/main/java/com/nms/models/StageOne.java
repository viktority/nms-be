package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

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


public class StageOne   {
  @JsonProperty("id")
  private Integer id = null;

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

  @JsonProperty("representativeAddress")
  private String representativeAddress = null;

  @JsonProperty("representativeEmail")
  private String representativeEmail = null;

  @JsonProperty("representativeTelephone")
  private String representativeTelephone = null;

  @JsonProperty("representativeFax")
  private String representativeFax = null;

  @JsonProperty("serviceType")
  private String serviceType = null;

  @JsonProperty("coverageArea")
  private String coverageArea = null;

  @JsonProperty("licenseId")
  private Integer licenseId = null;

  @JsonProperty("otherLicense")
  private Integer otherLicense = null;

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

  /**
   * Get id
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
   * @return correspondenceFax
   **/
  @Schema(example = "12345", description = "")
  
    public String getCorrespondenceFax() {
    return correspondenceFax;
  }

  public void setCorrespondenceFax(String correspondenceFax) {
    this.correspondenceFax = correspondenceFax;
  }

  public StageOne representativeAddress(String representativeAddress) {
    this.representativeAddress = representativeAddress;
    return this;
  }

  /**
   * Get representativeAddress
   * @return representativeAddress
   **/
  @Schema(example = "address", description = "")
  
    public String getRepresentativeAddress() {
    return representativeAddress;
  }

  public void setRepresentativeAddress(String representativeAddress) {
    this.representativeAddress = representativeAddress;
  }

  public StageOne representativeEmail(String representativeEmail) {
    this.representativeEmail = representativeEmail;
    return this;
  }

  /**
   * Get representativeEmail
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
   * @return representativeTelephone
   **/
  @Schema(example = "08012345678", description = "")
  
    public String getRepresentativeTelephone() {
    return representativeTelephone;
  }

  public void setRepresentativeTelephone(String representativeTelephone) {
    this.representativeTelephone = representativeTelephone;
  }

  public StageOne representativeFax(String representativeFax) {
    this.representativeFax = representativeFax;
    return this;
  }

  /**
   * Get representativeFax
   * @return representativeFax
   **/
  @Schema(example = "12345", description = "")
  
    public String getRepresentativeFax() {
    return representativeFax;
  }

  public void setRepresentativeFax(String representativeFax) {
    this.representativeFax = representativeFax;
  }

  public StageOne serviceType(String serviceType) {
    this.serviceType = serviceType;
    return this;
  }

  /**
   * Get serviceType
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
   * @return licenseId
   **/
  @Schema(example = "6", description = "")
  
    public Integer getLicenseId() {
    return licenseId;
  }

  public void setLicenseId(Integer licenseId) {
    this.licenseId = licenseId;
  }

  public StageOne otherLicense(Integer otherLicense) {
    this.otherLicense = otherLicense;
    return this;
  }

  /**
   * Get otherLicense
   * @return otherLicense
   **/
  @Schema(example = "abcd", description = "")
  
    public Integer getOtherLicense() {
    return otherLicense;
  }

  public void setOtherLicense(Integer otherLicense) {
    this.otherLicense = otherLicense;
  }

  public StageOne licenseType(String licenseType) {
    this.licenseType = licenseType;
    return this;
  }

  /**
   * Get licenseType
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
   * @return interconnection
   **/
  @Schema(description = "")
  
    public List<HashMap> getInterconnection() {
    return interconnection;
  }

  public void setInterconnection(List<HashMap> interconnection) {
    this.interconnection = interconnection;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StageOne stageOne = (StageOne) o;
    return Objects.equals(this.id, stageOne.id) &&
        Objects.equals(this.userId, stageOne.userId) &&
        Objects.equals(this.company, stageOne.company) &&
        Objects.equals(this.address, stageOne.address) &&
        Objects.equals(this.email, stageOne.email) &&
        Objects.equals(this.telephone, stageOne.telephone) &&
        Objects.equals(this.fax, stageOne.fax) &&
        Objects.equals(this.correspondenceAddress, stageOne.correspondenceAddress) &&
        Objects.equals(this.correspondenceEmail, stageOne.correspondenceEmail) &&
        Objects.equals(this.correspondenceTelephone, stageOne.correspondenceTelephone) &&
        Objects.equals(this.correspondenceFax, stageOne.correspondenceFax) &&
        Objects.equals(this.representativeAddress, stageOne.representativeAddress) &&
        Objects.equals(this.representativeEmail, stageOne.representativeEmail) &&
        Objects.equals(this.representativeTelephone, stageOne.representativeTelephone) &&
        Objects.equals(this.representativeFax, stageOne.representativeFax) &&
        Objects.equals(this.serviceType, stageOne.serviceType) &&
        Objects.equals(this.coverageArea, stageOne.coverageArea) &&
        Objects.equals(this.licenseId, stageOne.licenseId) &&
        Objects.equals(this.otherLicense, stageOne.otherLicense) &&
        Objects.equals(this.licenseType, stageOne.licenseType) &&
        Objects.equals(this.previousLicense, stageOne.previousLicense) &&
        Objects.equals(this.agreementReached, stageOne.agreementReached) &&
        Objects.equals(this.interconnection, stageOne.interconnection);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, userId, company, address, email, telephone, fax, correspondenceAddress, correspondenceEmail, correspondenceTelephone, correspondenceFax, representativeAddress, representativeEmail, representativeTelephone, representativeFax, serviceType, coverageArea, licenseId, otherLicense, licenseType, previousLicense, agreementReached, interconnection);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StageOne {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    company: ").append(toIndentedString(company)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    telephone: ").append(toIndentedString(telephone)).append("\n");
    sb.append("    fax: ").append(toIndentedString(fax)).append("\n");
    sb.append("    correspondenceAddress: ").append(toIndentedString(correspondenceAddress)).append("\n");
    sb.append("    correspondenceEmail: ").append(toIndentedString(correspondenceEmail)).append("\n");
    sb.append("    correspondenceTelephone: ").append(toIndentedString(correspondenceTelephone)).append("\n");
    sb.append("    correspondenceFax: ").append(toIndentedString(correspondenceFax)).append("\n");
    sb.append("    representativeAddress: ").append(toIndentedString(representativeAddress)).append("\n");
    sb.append("    representativeEmail: ").append(toIndentedString(representativeEmail)).append("\n");
    sb.append("    representativeTelephone: ").append(toIndentedString(representativeTelephone)).append("\n");
    sb.append("    representativeFax: ").append(toIndentedString(representativeFax)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    coverageArea: ").append(toIndentedString(coverageArea)).append("\n");
    sb.append("    licenseId: ").append(toIndentedString(licenseId)).append("\n");
    sb.append("    otherLicense: ").append(toIndentedString(otherLicense)).append("\n");
    sb.append("    licenseType: ").append(toIndentedString(licenseType)).append("\n");
    sb.append("    previousLicense: ").append(toIndentedString(previousLicense)).append("\n");
    sb.append("    agreementReached: ").append(toIndentedString(agreementReached)).append("\n");
    sb.append("    interconnection: ").append(toIndentedString(interconnection)).append("\n");
    sb.append("}");
    return sb.toString();
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
