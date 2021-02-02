package com.nms.entities;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
public class Type implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String type;
    private Integer minDigit;
    private Integer maxDigit;
    @ManyToMany
    private List<ApprovalStages> listOfApprovalStages;

    public Type(String type, Integer minDigit, Integer maxDigit) {
        this.type = type;
        this.minDigit = minDigit;
        this.maxDigit = maxDigit;
    }

    public Type() {
    }

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

    public List<ApprovalStages> getListOfApprovalStages() {
        return listOfApprovalStages;
    }

    public void setListOfApprovalStages(List<ApprovalStages> listOfApprovalStages) {
        this.listOfApprovalStages = listOfApprovalStages;
    }
}
