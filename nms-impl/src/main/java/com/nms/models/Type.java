package com.nms.models;

import java.util.List;

public class Type {
    private static final long serialVersionUID = 1L;

    private Integer id;
    private String type;

    private Integer minDigit = null;

    private Integer maxDigit = null;

    private List<ApprovalStage> approvalStages = null;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public List<ApprovalStage> getApprovalStages() {
        return approvalStages;
    }

    public void setApprovalStages(List<ApprovalStage> approvalStages) {
        this.approvalStages = approvalStages;
    }
}
