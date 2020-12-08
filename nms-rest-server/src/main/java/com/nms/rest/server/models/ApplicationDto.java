package com.nms.rest.server.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import java.util.Objects;

/**
 * ApplicationDto
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class ApplicationDto {
    @JsonProperty("userId")
    private String userId = null;

    @JsonProperty("stageOneId")
    private Integer stageOneId = null;

    @JsonProperty("stageTwoId")
    private Integer stageTwoId = null;

    @JsonProperty("stageThreeId")
    private Integer stageThreeId = null;

    @JsonProperty("stageFourId")
    private Integer stageFourId = null;

    @JsonProperty("approvalStageId")
    private Integer approvalStageId = null;

    @JsonProperty("finalised")
    private Boolean finalised = null;

    public ApplicationDto userId(String userId) {
        this.userId = userId;
        return this;
    }

    /**
     * Get userId
     *
     * @return userId
     **/
    @Schema(example = "abcd -123-dbff-dsds", description = "")

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public ApplicationDto stageOneId(Integer stageOneId) {
        this.stageOneId = stageOneId;
        return this;
    }

    /**
     * Get stageOneId
     *
     * @return stageOneId
     **/
    @Schema(example = "1", description = "")

    public Integer getStageOneId() {
        return stageOneId;
    }

    public void setStageOneId(Integer stageOneId) {
        this.stageOneId = stageOneId;
    }

    public ApplicationDto stageTwoId(Integer stageTwoId) {
        this.stageTwoId = stageTwoId;
        return this;
    }

    /**
     * Get stageTwoId
     *
     * @return stageTwoId
     **/
    @Schema(example = "2", description = "")

    public Integer getStageTwoId() {
        return stageTwoId;
    }

    public void setStageTwoId(Integer stageTwoId) {
        this.stageTwoId = stageTwoId;
    }

    public ApplicationDto stageThreeId(Integer stageThreeId) {
        this.stageThreeId = stageThreeId;
        return this;
    }

    /**
     * Get stageThreeId
     *
     * @return stageThreeId
     **/
    @Schema(example = "3", description = "")

    public Integer getStageThreeId() {
        return stageThreeId;
    }

    public void setStageThreeId(Integer stageThreeId) {
        this.stageThreeId = stageThreeId;
    }

    public ApplicationDto stageFourId(Integer stageFourId) {
        this.stageFourId = stageFourId;
        return this;
    }

    /**
     * Get stageFourId
     *
     * @return stageFourId
     **/
    @Schema(example = "4", description = "")

    public Integer getStageFourId() {
        return stageFourId;
    }

    public void setStageFourId(Integer stageFourId) {
        this.stageFourId = stageFourId;
    }

    public ApplicationDto approvalStageId(Integer approvalStageId) {
        this.approvalStageId = approvalStageId;
        return this;
    }

    /**
     * Get approvalStageId
     *
     * @return approvalStageId
     **/
    @Schema(example = "5", description = "")

    public Integer getApprovalStageId() {
        return approvalStageId;
    }

    public void setApprovalStageId(Integer approvalStageId) {
        this.approvalStageId = approvalStageId;
    }

    public ApplicationDto finalised(Boolean finalised) {
        this.finalised = finalised;
        return this;
    }

    /**
     * Get finalised
     *
     * @return finalised
     **/
    @Schema(example = "false", description = "")

    public Boolean isFinalised() {
        return finalised;
    }

    public void setFinalised(Boolean finalised) {
        this.finalised = finalised;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ApplicationDto applicationDto = (ApplicationDto) o;
        return
                Objects.equals(this.userId, applicationDto.userId) &&
                        Objects.equals(this.stageOneId, applicationDto.stageOneId) &&
                        Objects.equals(this.stageTwoId, applicationDto.stageTwoId) &&
                        Objects.equals(this.stageThreeId, applicationDto.stageThreeId) &&
                        Objects.equals(this.stageFourId, applicationDto.stageFourId) &&
                        Objects.equals(this.approvalStageId, applicationDto.approvalStageId) &&
                        Objects.equals(this.finalised, applicationDto.finalised);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, stageOneId, stageTwoId, stageThreeId, stageFourId, approvalStageId, finalised);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ApplicationDto {\n");
        sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
        sb.append("    stageOneId: ").append(toIndentedString(stageOneId)).append("\n");
        sb.append("    stageTwoId: ").append(toIndentedString(stageTwoId)).append("\n");
        sb.append("    stageThreeId: ").append(toIndentedString(stageThreeId)).append("\n");
        sb.append("    stageFourId: ").append(toIndentedString(stageFourId)).append("\n");
        sb.append("    approvalStageId: ").append(toIndentedString(approvalStageId)).append("\n");
        sb.append("    finalised: ").append(toIndentedString(finalised)).append("\n");
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
