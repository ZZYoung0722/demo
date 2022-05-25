package com.prj.service;

import com.prj.dto.AccomDto;
import com.prj.dto.AccomImg;
import com.prj.dto.NoticeDto;
import com.prj.dto.UserDto;
import com.utill.Criteria;

import java.util.List;
import java.util.Map;

public interface AccomService {
    public int idCheck(UserDto dto);

    public int signUp(UserDto dto);

    public UserDto login(String userId, String userPw);
    public UserDto getUserById(String userId);

    public List<NoticeDto> search(Criteria criteria);

    public int totalCount(Criteria criteria);

    public void registration(NoticeDto dto);

    public NoticeDto detail(Integer noticeNo);

    public void  update(NoticeDto dto);

    public  void delete(Integer noticeNo);

    public List<AccomDto> accomMapList();

    public List<AccomImg> getImgList(Integer accomNo);

    public List<AccomDto> mapListByExtent(Map<String, String> param);



}
