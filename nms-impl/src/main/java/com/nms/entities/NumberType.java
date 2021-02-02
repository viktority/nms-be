package com.nms.entities;

import javax.persistence.*;
import java.util.List;

@Entity(name = "nms_number_type")
public class NumberType {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name = null;
    private Integer minNumDigit = null;
    private Integer maxNumDigit = null;

    @ManyToMany
    private List<ApprovalStages> listOfApprovalStages = null;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getMinNumDigit() {
        return minNumDigit;
    }

    public void setMinNumDigit(Integer minNumDigit) {
        this.minNumDigit = minNumDigit;
    }

    public Integer getMaxNumDigit() {
        return maxNumDigit;
    }

    public void setMaxNumDigit(Integer maxNumDigit) {
        this.maxNumDigit = maxNumDigit;
    }

    public List<ApprovalStages> getListOfApprovalStages() {
        return listOfApprovalStages;
    }

    public void setListOfApprovalStages(List<ApprovalStages> listOfApprovalStages) {
        this.listOfApprovalStages = listOfApprovalStages;
    }
}
