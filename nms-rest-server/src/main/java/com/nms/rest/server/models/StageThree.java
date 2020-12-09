package com.nms.rest.server.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import java.util.Objects;

/**
 * StageThree
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class StageThree   {
  @JsonProperty("id")
  private Integer id = null;

  @JsonProperty("userId")
  private String userId = null;

  @JsonProperty("documentCompleted")
  private Boolean documentCompleted = null;

  public StageThree id(Integer id) {
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

  public StageThree userId(String userId) {
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

  public StageThree documentCompleted(Boolean documentCompleted) {
    this.documentCompleted = documentCompleted;
    return this;
  }

  /**
   * Get documentCompleted
   * @return documentCompleted
   **/
  @Schema(example = "false", description = "")
  
    public Boolean isDocumentCompleted() {
    return documentCompleted;
  }

  public void setDocumentCompleted(Boolean documentCompleted) {
    this.documentCompleted = documentCompleted;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StageThree stageThree = (StageThree) o;
    return Objects.equals(this.id, stageThree.id) &&
        Objects.equals(this.userId, stageThree.userId) &&
        Objects.equals(this.documentCompleted, stageThree.documentCompleted);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, userId, documentCompleted);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StageThree {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    documentCompleted: ").append(toIndentedString(documentCompleted)).append("\n");
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
