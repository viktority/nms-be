package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * NumberTypeDto
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")


public class NumberTypeDto   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("min_num_digit")
  private Integer minNumDigit = null;

  @JsonProperty("max_num_digit")
  private Integer maxNumDigit = null;

  @JsonProperty("list_of_approval_stage_ids")
  @Valid
  private List<Integer> listOfApprovalStageIds = null;

  public NumberTypeDto name(String name) {
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

  public NumberTypeDto minNumDigit(Integer minNumDigit) {
    this.minNumDigit = minNumDigit;
    return this;
  }

  /**
   * Get minNumDigit
   * @return minNumDigit
   **/
  @Schema(example = "1", description = "")
  
    public Integer getMinNumDigit() {
    return minNumDigit;
  }

  public void setMinNumDigit(Integer minNumDigit) {
    this.minNumDigit = minNumDigit;
  }

  public NumberTypeDto maxNumDigit(Integer maxNumDigit) {
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

  public NumberTypeDto listOfApprovalStageIds(List<Integer> listOfApprovalStageIds) {
    this.listOfApprovalStageIds = listOfApprovalStageIds;
    return this;
  }

  public NumberTypeDto addListOfApprovalStageIdsItem(Integer listOfApprovalStageIdsItem) {
    if (this.listOfApprovalStageIds == null) {
      this.listOfApprovalStageIds = new ArrayList<Integer>();
    }
    this.listOfApprovalStageIds.add(listOfApprovalStageIdsItem);
    return this;
  }

  /**
   * Get listOfApprovalStageIds
   * @return listOfApprovalStageIds
   **/
  @Schema(description = "")
  
    public List<Integer> getListOfApprovalStageIds() {
    return listOfApprovalStageIds;
  }

  public void setListOfApprovalStageIds(List<Integer> listOfApprovalStageIds) {
    this.listOfApprovalStageIds = listOfApprovalStageIds;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NumberTypeDto numberTypeDto = (NumberTypeDto) o;
    return Objects.equals(this.name, numberTypeDto.name) &&
        Objects.equals(this.minNumDigit, numberTypeDto.minNumDigit) &&
        Objects.equals(this.maxNumDigit, numberTypeDto.maxNumDigit) &&
        Objects.equals(this.listOfApprovalStageIds, numberTypeDto.listOfApprovalStageIds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, minNumDigit, maxNumDigit, listOfApprovalStageIds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NumberTypeDto {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    minNumDigit: ").append(toIndentedString(minNumDigit)).append("\n");
    sb.append("    maxNumDigit: ").append(toIndentedString(maxNumDigit)).append("\n");
    sb.append("    listOfApprovalStageIds: ").append(toIndentedString(listOfApprovalStageIds)).append("\n");
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
