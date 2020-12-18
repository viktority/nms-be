package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import java.util.Objects;

/**
 * BillingPlansDto
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-30T10:23:00.257Z[GMT]")


public class BillingPlansDto   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("duration")
  private Integer duration = null;

  public BillingPlansDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  @Schema(example = "Plans", description = "")
  
    public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public BillingPlansDto duration(Integer duration) {
    this.duration = duration;
    return this;
  }

  /**
   * Get duration
   * @return duration
   **/
  @Schema(example = "7567", description = "")
  
    public Integer getDuration() {
    return duration;
  }

  public void setDuration(Integer duration) {
    this.duration = duration;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BillingPlansDto billingPlansDto = (BillingPlansDto) o;
    return Objects.equals(this.name, billingPlansDto.name) &&
        Objects.equals(this.duration, billingPlansDto.duration);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, duration);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BillingPlansDto {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    duration: ").append(toIndentedString(duration)).append("\n");
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
