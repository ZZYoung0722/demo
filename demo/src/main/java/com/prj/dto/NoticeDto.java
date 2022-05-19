package com.prj.dto;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class NoticeDto {
    private String title;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date noticeDate;
    private int noticeNo;
    private boolean noticeDelete;                    /*삭제상태 유무*/
}
