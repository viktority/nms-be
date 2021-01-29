package com.nms.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Data
@NoArgsConstructor
public class Type implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String type;
    private Integer minDigit;
    private Integer maxDigit;

    public Type(String type, Integer minDigit, Integer maxDigit) {
        this.type = type;
        this.minDigit = minDigit;
        this.maxDigit = maxDigit;
    }
}
