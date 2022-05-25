package com.prj.dto;

import lombok.Data;

import java.util.List;

@Data
public class AccomDto {
    private int accomNo;
    private String accomName;
    private String accomTel;
    private String accomLocation;
    private String accomInfo;
    private String accomPay;
    private double lat;
    private double lon;
    private List<AccomImg> accomImg;
}
