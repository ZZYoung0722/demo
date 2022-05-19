package com.prj.service;

import com.prj.dto.NoticeDto;
import com.prj.dto.UserDto;
import com.utill.Criteria;

import java.util.List;

public interface AccomService {
    //idchcek
    public int idCheck(UserDto dto);

    //회원가입
    public int signUp(UserDto dto);

    //login
    public UserDto login(String userId, String userPw);
    public UserDto getUserById(String userId);

    //공지사항 검색
    public List<NoticeDto> search(Criteria criteria);

    public int totalCount(Criteria criteria);

    //공지사항 등록
    public void registration(NoticeDto dto);

    //공지사항 상세보기
    public NoticeDto detail(Integer noticeNo);

    //공지사항 수정페이지
    public void  update(NoticeDto dto);

    //공지사항 삭제 유무
    public  void delete(Integer noticeNo);

}
