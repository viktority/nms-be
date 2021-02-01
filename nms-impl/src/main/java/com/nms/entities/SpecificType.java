package com.nms.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SpecificType implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "specific_type")
    private String specificType;
    @ManyToOne
    private Type type;
    private Integer minDigit;
    private Integer maxDigit;

    public SpecificType(String specificType, Type type, Integer minDigit, Integer maxDigit) {
        this.specificType = specificType;
        this.type = type;
        this.minDigit = minDigit;
        this.maxDigit = maxDigit;
    }
}
