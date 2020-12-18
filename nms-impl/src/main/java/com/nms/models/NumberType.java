package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * NumberType
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")


public class NumberType   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("min_num_digit")
  private Integer minNumDigit = null;

  @JsonProperty("max_num_digit")
  private Integer maxNumDigit = null;

  @JsonProperty("list_of_approval_stages")
  @Valid
  private List<ApprovalStages> listOfApprovalStages = null;

  public NumberType name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  @Schema(example = "name", description = "")
  
    public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public NumberType minNumDigit(Integer minNumDigit) {
    this.minNumDigit = minNumDigit;
    return this;
  }

  /**
   * Get minNumDigit
   * @return minNumDigit
   **/
  @Schema(example = "3", description = "")
  
    public Integer getMinNumDigit() {
    return minNumDigit;
  }

  public void setMinNumDigit(Integer minNumDigit) {
    this.minNumDigit = minNumDigit;
  }

  public NumberType maxNumDigit(Integer maxNumDigit) {
    this.maxNumDigit = maxNumDigit;
    return this;
  }

  /**
   * Get maxNumDigit
   * @return maxNumDigit
   **/
  @Schema(example = "30", description = "")
  
    public Integer getMaxNumDigit() {
    return maxNumDigit;
  }

  public void setMaxNumDigit(Integer maxNumDigit) {
    this.maxNumDigit = maxNumDigit;
  }

  public NumberType listOfApprovalStages(List<ApprovalStages> listOfApprovalStages) {
    this.listOfApprovalStages = listOfApprovalStages;
    return this;
  }

  public NumberType addListOfApprovalStagesItem(ApprovalStages listOfApprovalStagesItem) {
    if (this.listOfApprovalStages == null) {
      this.listOfApprovalStages = new ArrayList<ApprovalStages>();
    }
    this.listOfApprovalStages.add(listOfApprovalStagesItem);
    return this;
  }

  /**
   * Get listOfApprovalStages
   * @return listOfApprovalStages
   **/
  @Schema(description = "")
      @Valid
    public List<ApprovalStages> getListOfApprovalStages() {
    return listOfApprovalStages;
  }

  public void setListOfApprovalStages(List<ApprovalStages> listOfApprovalStages) {
    this.listOfApprovalStages = listOfApprovalStages;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NumberType numberType = (NumberType) o;
    return Objects.equals(this.name, numberType.name) &&
        Objects.equals(this.minNumDigit, numberType.minNumDigit) &&
        Objects.equals(this.maxNumDigit, numberType.maxNumDigit) &&
        Objects.equals(this.listOfApprovalStages, numberType.listOfApprovalStages);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, minNumDigit, maxNumDigit, listOfApprovalStages);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NumberType {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    minNumDigit: ").append(toIndentedString(minNumDigit)).append("\n");
    sb.append("    maxNumDigit: ").append(toIndentedString(maxNumDigit)).append("\n");
    sb.append("    listOfApprovalStages: ").append(toIndentedString(listOfApprovalStages)).append("\n");
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
