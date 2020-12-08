package com.nms.entities;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * Application
 */
@Entity
public class Application {
    @Id
    private String applicationId = null;

    @OneToOne
    private User userId = null;

    @OneToOne
    private StageOne stageOne = null;
    @OneToOne
    private StageTwo stageTwo = null;
    @OneToOne
    private StageThree stageThree = null;
    @OneToOne
    private StageFour stageFour = null;

    @OneToOne
    private ApprovalStages approvalStage = null;
    private Boolean finalised = null;

    @OneToOne
    private User createdBy = null;

    @OneToOne
    private User updatedBy = null;

    public String getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(String applicationId) {
        this.applicationId = applicationId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public StageOne getStageOne() {
        return stageOne;
    }

    public void setStageOne(StageOne stageOne) {
        this.stageOne = stageOne;
    }

    public StageTwo getStageTwo() {
        return stageTwo;
    }

    public void setStageTwo(StageTwo stageTwo) {
        this.stageTwo = stageTwo;
    }

    public StageThree getStageThree() {
        return stageThree;
    }

    public void setStageThree(StageThree stageThree) {
        this.stageThree = stageThree;
    }

    public StageFour getStageFour() {
        return stageFour;
    }

    public void setStageFour(StageFour stageFour) {
        this.stageFour = stageFour;
    }

    public ApprovalStages getApprovalStage() {
        return approvalStage;
    }

    public void setApprovalStage(ApprovalStages approvalStage) {
        this.approvalStage = approvalStage;
    }

    public Boolean getFinalised() {
        return finalised;
    }

    public void setFinalised(Boolean finalised) {
        this.finalised = finalised;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    public User getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(User updatedBy) {
        this.updatedBy = updatedBy;
    }
}
