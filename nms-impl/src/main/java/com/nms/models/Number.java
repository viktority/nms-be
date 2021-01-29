package com.nms.models;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@NoArgsConstructor
@Data
public class Number {
    private Long id;
    private String type;
    private String specificType;
    private int start;
    private int end;
    private String status;
    private String clientId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private boolean sold;
}
