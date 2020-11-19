package com.nms.rest.server.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * RoleDto
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-11-18T15:25:03.231Z[GMT]")


public class RoleDto   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("privilegeIds")
  @Valid
  private List<Integer> privilegeIds = new ArrayList<Integer>();

  public RoleDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  @Schema(example = "Admin", required = true, description = "")
      @NotNull

    public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public RoleDto privilegeIds(List<Integer> privilegeIds) {
    this.privilegeIds = privilegeIds;
    return this;
  }

  public RoleDto addPrivilegeIdsItem(Integer privilegeIdsItem) {
    this.privilegeIds.add(privilegeIdsItem);
    return this;
  }

  /**
   * Get privilegeIds
   * @return privilegeIds
   **/
  @Schema(required = true, description = "")
      @NotNull

    public List<Integer> getPrivilegeIds() {
    return privilegeIds;
  }

  public void setPrivilegeIds(List<Integer> privilegeIds) {
    this.privilegeIds = privilegeIds;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RoleDto roleDto = (RoleDto) o;
    return Objects.equals(this.name, roleDto.name) &&
        Objects.equals(this.privilegeIds, roleDto.privilegeIds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, privilegeIds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RoleDto {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    privilegeIds: ").append(toIndentedString(privilegeIds)).append("\n");
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
