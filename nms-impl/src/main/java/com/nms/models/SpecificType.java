package com.nms.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SpecificType {
    private static final long serialVersionUID = 1L;

    private Integer id;
    private String specificType;
    private Integer minDigit;
    private Integer maxDigit;

}
