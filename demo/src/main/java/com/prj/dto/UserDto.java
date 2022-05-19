package com.prj.dto;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class UserDto {
    private int userNo;
    private String userName;
    private String userId;
    private String userPw;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date userBirth;
    private String userTel;
    private String userEmail;
    private String userAddr;
    private String salt;
}
