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
 * StageTwo
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class StageTwo   {
  @JsonProperty("id")
  private Integer id = null;

  @JsonProperty("userId")
  private String userId = null;

  @JsonProperty("numberBlock")
  @Valid
  private List<String> numberBlock = null;

  @JsonProperty("wiredDeployment")
  private Boolean wiredDeployment = null;

  @JsonProperty("wirelessDeployment")
  private Boolean wirelessDeployment = null;

  @JsonProperty("frequencyCoverage")
  @Valid
  private List<HashMap> frequencyCoverage = null;

  @JsonProperty("device")
  @Valid
  private List<HashMap> device = null;

  public StageTwo id(Integer id) {
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

  public StageTwo userId(String userId) {
    this.userId = userId;
    return this;
  }

  /**
   * Get userId
   * @return userId
   **/
  @Schema(example = "abcd-123-dbff-dsds", description = "")
  
    public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public StageTwo numberBlock(List<String> numberBlock) {
    this.numberBlock = numberBlock;
    return this;
  }

  public StageTwo addNumberBlockItem(String numberBlockItem) {
    if (this.numberBlock == null) {
      this.numberBlock = new ArrayList<String>();
    }
    this.numberBlock.add(numberBlockItem);
    return this;
  }

  /**
   * Get numberBlock
   * @return numberBlock
   **/
  @Schema(description = "")
  
    public List<String> getNumberBlock() {
    return numberBlock;
  }

  public void setNumberBlock(List<String> numberBlock) {
    this.numberBlock = numberBlock;
  }

  public StageTwo wiredDeployment(Boolean wiredDeployment) {
    this.wiredDeployment = wiredDeployment;
    return this;
  }

  /**
   * Get wiredDeployment
   * @return wiredDeployment
   **/
  @Schema(example = "false", description = "")
  
    public Boolean isWiredDeployment() {
    return wiredDeployment;
  }

  public void setWiredDeployment(Boolean wiredDeployment) {
    this.wiredDeployment = wiredDeployment;
  }

  public StageTwo wirelessDeployment(Boolean wirelessDeployment) {
    this.wirelessDeployment = wirelessDeployment;
    return this;
  }

  /**
   * Get wirelessDeployment
   * @return wirelessDeployment
   **/
  @Schema(example = "false", description = "")
  
    public Boolean isWirelessDeployment() {
    return wirelessDeployment;
  }

  public void setWirelessDeployment(Boolean wirelessDeployment) {
    this.wirelessDeployment = wirelessDeployment;
  }

  public StageTwo frequencyCoverage(List<HashMap> frequencyCoverage) {
    this.frequencyCoverage = frequencyCoverage;
    return this;
  }

  public StageTwo addFrequencyCoverageItem(HashMap frequencyCoverageItem) {
    if (this.frequencyCoverage == null) {
      this.frequencyCoverage = new ArrayList<HashMap>();
    }
    this.frequencyCoverage.add(frequencyCoverageItem);
    return this;
  }

  /**
   * Get frequencyCoverage
   * @return frequencyCoverage
   **/
  @Schema(description = "")
  
    public List<HashMap> getFrequencyCoverage() {
    return frequencyCoverage;
  }

  public void setFrequencyCoverage(List<HashMap> frequencyCoverage) {
    this.frequencyCoverage = frequencyCoverage;
  }

  public StageTwo device(List<HashMap> device) {
    this.device = device;
    return this;
  }

  public StageTwo addDeviceItem(HashMap deviceItem) {
    if (this.device == null) {
      this.device = new ArrayList<HashMap>();
    }
    this.device.add(deviceItem);
    return this;
  }

  /**
   * Get device
   * @return device
   **/
  @Schema(description = "")
  
    public List<HashMap> getDevice() {
    return device;
  }

  public void setDevice(List<HashMap> device) {
    this.device = device;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StageTwo stageTwo = (StageTwo) o;
    return Objects.equals(this.id, stageTwo.id) &&
        Objects.equals(this.userId, stageTwo.userId) &&
        Objects.equals(this.numberBlock, stageTwo.numberBlock) &&
        Objects.equals(this.wiredDeployment, stageTwo.wiredDeployment) &&
        Objects.equals(this.wirelessDeployment, stageTwo.wirelessDeployment) &&
        Objects.equals(this.frequencyCoverage, stageTwo.frequencyCoverage) &&
        Objects.equals(this.device, stageTwo.device);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, userId, numberBlock, wiredDeployment, wirelessDeployment, frequencyCoverage, device);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StageTwo {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    numberBlock: ").append(toIndentedString(numberBlock)).append("\n");
    sb.append("    wiredDeployment: ").append(toIndentedString(wiredDeployment)).append("\n");
    sb.append("    wirelessDeployment: ").append(toIndentedString(wirelessDeployment)).append("\n");
    sb.append("    frequencyCoverage: ").append(toIndentedString(frequencyCoverage)).append("\n");
    sb.append("    device: ").append(toIndentedString(device)).append("\n");
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
