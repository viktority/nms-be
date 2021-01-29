package com.nms.entities;


import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
public class Number implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @OneToOne
    private Type type;
    @OneToOne
    private SpecificType specificType;
    private long start;
    private long end;
    private String status;
    private User client;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private boolean sold;
}
