package com.nms.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.Objects;

/**
 * Application
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-12-06T11:07:16.529Z[GMT]")


public class Application {

    private String applicationId;
    @JsonProperty("userId")
    private String userId = null;

    @JsonProperty("stageOne")
    private StageOne stageOne = null;

    @JsonProperty("stageTwo")
    private StageTwo stageTwo = null;

    @JsonProperty("stageThree")
    private StageThree stageThree = null;

    @JsonProperty("stageFour")
    private StageFour stageFour = null;

    @JsonProperty("approvalStage")
    private ApprovalStages approvalStage = null;

    @JsonProperty("finalised")
    private Boolean finalised = null;

    @JsonProperty("createdBy")
    private String createdBy = null;

    @JsonProperty("updatedBy")
    private String updatedBy = null;

    public Application userId(String userId) {
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

    public Application stageOne(StageOne stageOne) {
        this.stageOne = stageOne;
        return this;
    }

    public String getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(String applicationId) {
        this.applicationId = applicationId;
    }

    public Boolean getFinalised() {
        return finalised;
    }

    /**
     * Get stageOne
     *
     * @return stageOne
     **/
    @Schema(description = "")

    @Valid
    public StageOne getStageOne() {
        return stageOne;
    }

    public void setStageOne(StageOne stageOne) {
        this.stageOne = stageOne;
    }

    public Application stageTwo(StageTwo stageTwo) {
        this.stageTwo = stageTwo;
        return this;
    }

    /**
     * Get stageTwo
     *
     * @return stageTwo
     **/
    @Schema(description = "")

    @Valid
    public StageTwo getStageTwo() {
        return stageTwo;
    }

    public void setStageTwo(StageTwo stageTwo) {
        this.stageTwo = stageTwo;
    }

    public Application stageThree(StageThree stageThree) {
        this.stageThree = stageThree;
        return this;
    }

    /**
     * Get stageThree
     *
     * @return stageThree
     **/
    @Schema(description = "")

    @Valid
    public StageThree getStageThree() {
        return stageThree;
    }

    public void setStageThree(StageThree stageThree) {
        this.stageThree = stageThree;
    }

    public Application stageFour(StageFour stageFour) {
        this.stageFour = stageFour;
        return this;
    }

    /**
     * Get stageFour
     *
     * @return stageFour
     **/
    @Schema(description = "")

    @Valid
    public StageFour getStageFour() {
        return stageFour;
    }

    public void setStageFour(StageFour stageFour) {
        this.stageFour = stageFour;
    }

    public Application approvalStage(ApprovalStages approvalStage) {
        this.approvalStage = approvalStage;
        return this;
    }

    /**
     * Get approvalStage
     *
     * @return approvalStage
     **/
    @Schema(description = "")

    @Valid
    public ApprovalStages getApprovalStage() {
        return approvalStage;
    }

    public void setApprovalStage(ApprovalStages approvalStage) {
        this.approvalStage = approvalStage;
    }

    public Application finalised(Boolean finalised) {
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

    public Application createdBy(String createdBy) {
        this.createdBy = createdBy;
        return this;
    }

    /**
     * Get createdBy
     *
     * @return createdBy
     **/
    @Schema(example = "abcd -123-dbff-dsds", description = "")

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public Application updatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
        return this;
    }

    /**
     * Get updatedBy
     *
     * @return updatedBy
     **/
    @Schema(example = "abcd -123-dbff-dsds", description = "")

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Application application = (Application) o;
        return Objects.equals(this.userId, application.userId) &&
                Objects.equals(this.stageOne, application.stageOne) &&
                Objects.equals(this.stageTwo, application.stageTwo) &&
                Objects.equals(this.stageThree, application.stageThree) &&
                Objects.equals(this.stageFour, application.stageFour) &&
                Objects.equals(this.approvalStage, application.approvalStage) &&
                Objects.equals(this.finalised, application.finalised) &&
                Objects.equals(this.createdBy, application.createdBy) &&
                Objects.equals(this.updatedBy, application.updatedBy);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, stageOne, stageTwo, stageThree, stageFour, approvalStage, finalised, createdBy, updatedBy);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class Application {\n");

        sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
        sb.append("    stageOne: ").append(toIndentedString(stageOne)).append("\n");
        sb.append("    stageTwo: ").append(toIndentedString(stageTwo)).append("\n");
        sb.append("    stageThree: ").append(toIndentedString(stageThree)).append("\n");
        sb.append("    stageFour: ").append(toIndentedString(stageFour)).append("\n");
        sb.append("    approvalStage: ").append(toIndentedString(approvalStage)).append("\n");
        sb.append("    finalised: ").append(toIndentedString(finalised)).append("\n");
        sb.append("    createdBy: ").append(toIndentedString(createdBy)).append("\n");
        sb.append("    updatedBy: ").append(toIndentedString(updatedBy)).append("\n");
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
