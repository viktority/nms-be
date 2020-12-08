package com.nms.rest.server.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import java.util.Objects;

/**
 * InvoiceDto
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class InvoiceDto   {
  @JsonProperty("userId")
  private String userId = null;

  @JsonProperty("applicationId")
  private String applicationId = null;

  @JsonProperty("feeId")
  private Integer feeId = null;

  @JsonProperty("paid")
  private Boolean paid = null;

  public InvoiceDto userId(String userId) {
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

  public InvoiceDto applicationId(String applicationId) {
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

  public InvoiceDto feeId(Integer feeId) {
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

  public InvoiceDto paid(Boolean paid) {
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InvoiceDto invoiceDto = (InvoiceDto) o;
    return Objects.equals(this.userId, invoiceDto.userId) &&
        Objects.equals(this.applicationId, invoiceDto.applicationId) &&
        Objects.equals(this.feeId, invoiceDto.feeId) &&
        Objects.equals(this.paid, invoiceDto.paid);
  }

  @Override
  public int hashCode() {
    return Objects.hash(userId, applicationId, feeId, paid);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InvoiceDto {\n");
    
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    applicationId: ").append(toIndentedString(applicationId)).append("\n");
    sb.append("    feeId: ").append(toIndentedString(feeId)).append("\n");
    sb.append("    paid: ").append(toIndentedString(paid)).append("\n");
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
