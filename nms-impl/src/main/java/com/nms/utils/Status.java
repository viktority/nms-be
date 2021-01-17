package com.nms.utils;

public enum Status {

    OPEN("Open"),
    PENDING("Pending"),
    CLOSED("Closed");

    private String value;

    Status(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
