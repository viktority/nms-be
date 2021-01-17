package com.nms.models;


public class NumberDto {
    private int typeId;
    private int specificTypeId;
    private int start;
    private int end;

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getSpecificTypeId() {
        return specificTypeId;
    }

    public void setSpecificTypeId(int specificTypeId) {
        this.specificTypeId = specificTypeId;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }
}
