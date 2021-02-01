package com.nms.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
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
}
