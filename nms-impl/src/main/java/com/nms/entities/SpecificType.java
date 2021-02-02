package com.nms.entities;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class SpecificType implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "specific_type")
    private String specificType;
    @ManyToOne()
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Type type;
    private Integer minDigit;
    private Integer maxDigit;

    public SpecificType(String specificType, Type type, Integer minDigit, Integer maxDigit) {
        this.specificType = specificType;
        this.type = type;
        this.minDigit = minDigit;
        this.maxDigit = maxDigit;
    }

    public SpecificType() {
    }

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

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
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
}
