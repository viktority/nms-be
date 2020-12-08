package com.nms.entities;

import javax.persistence.*;
import java.util.HashMap;
import java.util.List;

/**
 * StageTwo
 */
@Entity
public class StageTwo {
    @Id
    @GeneratedValue
    private Integer id = null;
    @OneToOne
    private User userId = null;
    @ElementCollection
    @Column(length = 10000)
    private List<String> numberBlock = null;
    private Boolean wiredDeployment = null;
    private Boolean wirelessDeployment = null;
    @ElementCollection
    @Column(length = 10000)
    private List<HashMap> frequencyCoverage = null;
    @ElementCollection
    @Column(length = 10000)
    private List<HashMap> device = null;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public List<String> getNumberBlock() {
        return numberBlock;
    }

    public void setNumberBlock(List<String> numberBlock) {
        this.numberBlock = numberBlock;
    }

    public Boolean getWiredDeployment() {
        return wiredDeployment;
    }

    public void setWiredDeployment(Boolean wiredDeployment) {
        this.wiredDeployment = wiredDeployment;
    }

    public Boolean getWirelessDeployment() {
        return wirelessDeployment;
    }

    public void setWirelessDeployment(Boolean wirelessDeployment) {
        this.wirelessDeployment = wirelessDeployment;
    }

    public List<HashMap> getFrequencyCoverage() {
        return frequencyCoverage;
    }

    public void setFrequencyCoverage(List<HashMap> frequencyCoverage) {
        this.frequencyCoverage = frequencyCoverage;
    }

    public List<HashMap> getDevice() {
        return device;
    }

    public void setDevice(List<HashMap> device) {
        this.device = device;
    }
}
