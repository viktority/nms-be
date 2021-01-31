package com.nms.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
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

}
