package com.nms.models;

public class SpecificType {

    private Integer id;
    private String specificType;
    private Integer minDigit;
    private Integer maxDigit;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSpecificType() {
        return specificType;
    }

    public void setSpecificType(String specificType) {
        this.specificType = specificType;
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
}
