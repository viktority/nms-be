package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import java.util.Objects;

/**
 * StageFour
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class StageFour   {
  @JsonProperty("id")
  private Integer id = null;

  @JsonProperty("userId")
  private String userId = null;

  @JsonProperty("comments")
  private String comments = null;

  @JsonProperty("undertaken")
  private Boolean undertaken = null;

  public StageFour id(Integer id) {
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

  public StageFour userId(String userId) {
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

  public StageFour comments(String comments) {
    this.comments = comments;
    return this;
  }

  /**
   * Get comments
   * @return comments
   **/
  @Schema(example = "Comments", description = "")
  
    public String getComments() {
    return comments;
  }

  public void setComments(String comments) {
    this.comments = comments;
  }

  public StageFour undertaken(Boolean undertaken) {
    this.undertaken = undertaken;
    return this;
  }

  /**
   * Get undertaken
   * @return undertaken
   **/
  @Schema(example = "false", description = "")
  
    public Boolean isUndertaken() {
    return undertaken;
  }

  public void setUndertaken(Boolean undertaken) {
    this.undertaken = undertaken;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StageFour stageFour = (StageFour) o;
    return Objects.equals(this.id, stageFour.id) &&
        Objects.equals(this.userId, stageFour.userId) &&
        Objects.equals(this.comments, stageFour.comments) &&
        Objects.equals(this.undertaken, stageFour.undertaken);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, userId, comments, undertaken);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StageFour {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    comments: ").append(toIndentedString(comments)).append("\n");
    sb.append("    undertaken: ").append(toIndentedString(undertaken)).append("\n");
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
