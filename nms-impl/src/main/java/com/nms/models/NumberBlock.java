package com.nms.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NumberBlock {

    Long startNo;
    Long endNo;
    int numberType;

}
