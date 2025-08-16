package com.example.backend;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Country {
    private int Id;
    private String name;
    private String capital;
    private long population;
    private String flag;
    private String regionName;
}

