package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import java.util.Objects;

/**
 * Invoice
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class Invoice   {
  @JsonProperty("id")
  private Integer id = null;

  @JsonProperty("userId")
  private String userId = null;

  @JsonProperty("applicationId")
  private String applicationId = null;

  @JsonProperty("feeId")
  private Integer feeId = null;

  @JsonProperty("paid")
  private Boolean paid = null;

  @JsonProperty("createdBy")
  private String createdBy = null;

  @JsonProperty("updatedBy")
  private String updatedBy = null;

  public Invoice id(Integer id) {
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

  public Invoice userId(String userId) {
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

  public Invoice applicationId(String applicationId) {
    this.applicationId = applicationId;
    return this;
  }

  /**
   * Get applicationId
   * @return applicationId
   **/
  @Schema(example = "abcd -123-dbff-dsds", description = "")
  
    public String getApplicationId() {
    return applicationId;
  }

  public void setApplicationId(String applicationId) {
    this.applicationId = applicationId;
  }

  public Invoice feeId(Integer feeId) {
    this.feeId = feeId;
    return this;
  }

  /**
   * Get feeId
   * @return feeId
   **/
  @Schema(example = "7", description = "")
  
    public Integer getFeeId() {
    return feeId;
  }

  public void setFeeId(Integer feeId) {
    this.feeId = feeId;
  }

  public Invoice paid(Boolean paid) {
    this.paid = paid;
    return this;
  }

  /**
   * Get paid
   * @return paid
   **/
  @Schema(example = "false", description = "")
  
    public Boolean isPaid() {
    return paid;
  }

  public void setPaid(Boolean paid) {
    this.paid = paid;
  }

  public Invoice createdBy(String createdBy) {
    this.createdBy = createdBy;
    return this;
  }

  /**
   * Get createdBy
   * @return createdBy
   **/
  @Schema(example = "abcd -123-dbff-dsds", description = "")
  
    public String getCreatedBy() {
    return createdBy;
  }

  public void setCreatedBy(String createdBy) {
    this.createdBy = createdBy;
  }

  public Invoice updatedBy(String updatedBy) {
    this.updatedBy = updatedBy;
    return this;
  }

  /**
   * Get updatedBy
   * @return updatedBy
   **/
  @Schema(example = "abcd -123-dbff-dsds", description = "")
  
    public String getUpdatedBy() {
    return updatedBy;
  }

  public void setUpdatedBy(String updatedBy) {
    this.updatedBy = updatedBy;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Invoice invoice = (Invoice) o;
    return Objects.equals(this.id, invoice.id) &&
        Objects.equals(this.userId, invoice.userId) &&
        Objects.equals(this.applicationId, invoice.applicationId) &&
        Objects.equals(this.feeId, invoice.feeId) &&
        Objects.equals(this.paid, invoice.paid) &&
        Objects.equals(this.createdBy, invoice.createdBy) &&
        Objects.equals(this.updatedBy, invoice.updatedBy);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, userId, applicationId, feeId, paid, createdBy, updatedBy);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Invoice {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    applicationId: ").append(toIndentedString(applicationId)).append("\n");
    sb.append("    feeId: ").append(toIndentedString(feeId)).append("\n");
    sb.append("    paid: ").append(toIndentedString(paid)).append("\n");
    sb.append("    createdBy: ").append(toIndentedString(createdBy)).append("\n");
    sb.append("    updatedBy: ").append(toIndentedString(updatedBy)).append("\n");
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
