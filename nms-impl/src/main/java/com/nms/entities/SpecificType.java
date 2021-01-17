package com.nms.entities;

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
    @ManyToOne
    private Type type;

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

    public SpecificType(String specificType, Type type) {
        this.specificType = specificType;
        this.type = type;
    }

    public SpecificType() {
    }
}
