package com.prj.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor                          //파라미터 없는 기본 생성자 생성
public class Salt {

    private String salt;                    // 키
    private String encrypt;                 // 암호화가된 패스워드

}
