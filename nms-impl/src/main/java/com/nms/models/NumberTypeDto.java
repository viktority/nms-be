package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.validation.annotation.Validated;

import java.util.List;

/**
 * NumberTypeDto
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")


public class NumberTypeDto   {
  @JsonProperty("name")
  private String type = null;

  @JsonProperty("min_num_digit")
  private Integer minDigit = null;

  @JsonProperty("max_num_digit")
  private Integer maxDigit = null;
  private List<Integer> listOfApprovalStageIds = null;

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Integer getMinDigit() {
    return minDigit;
  }

  public void setMinDigit(Integer minDigit) {
    this.minDigit = minDigit;
  }

  public Integer getMaxDigit() {
    return maxDigit;
  }

  public void setMaxDigit(Integer maxDigit) {
    this.maxDigit = maxDigit;
  }

  public List<Integer> getListOfApprovalStageIds() {
    return listOfApprovalStageIds;
  }

  public void setListOfApprovalStageIds(List<Integer> listOfApprovalStageIds) {
    this.listOfApprovalStageIds = listOfApprovalStageIds;
  }
}
