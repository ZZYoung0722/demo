package com.prj.service;

import com.prj.dao.AccomDao;
import com.prj.dto.NoticeDto;
import com.prj.dto.UserDto;
import com.prj.exception.LoginErrorException;
import com.utill.Criteria;
import com.utill.SaltUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccomServiceImpl implements AccomService {

    @Autowired
    private AccomDao accomDao;

    //idcheck
    public int idCheck(UserDto dto) {
        int result = accomDao.idCheck(dto);
        return result;
    }

    //회원가입
    @Override
    public int signUp(UserDto dto) {
        int result = accomDao.signUp(dto);
        return result;
    }

    //login
    public UserDto login(String id, String password) {
        // 회원정보
        UserDto userDto = accomDao.getUserById(id);
        SaltUtil salt = new SaltUtil();

        if (userDto == null) {
            throw new LoginErrorException("회원정보가 존재하지 않습니다.");
        }

        String encrypt = salt.pw(userDto.getSalt(), password);
        if (!userDto.getUserPw().equals(encrypt)) {
            throw new LoginErrorException("아이디 또는 비밀번호가 일치하지 않습니다.");
        }
        // 인증된 사용자정보를 반환
        return userDto;
    }

    @Override
    public UserDto getUserById(String userId) {
        UserDto dto = accomDao.getUserById(userId);
        return dto;
    }




    /*공지사항*/
    @Override
    public List<NoticeDto> search(Criteria criteria) {
        List<NoticeDto> noticeDto = accomDao.search(criteria);
        return noticeDto;
    }

    @Override
    public int totalCount(Criteria criteria) {
        return accomDao.totalCount(criteria);
    }

    @Override
    public void registration(NoticeDto dto) {
        accomDao.registration(dto);
    }

    @Override
    public NoticeDto detail(Integer noticeNo) {
        return accomDao.detail(noticeNo);
    }

    @Override
    public void update(NoticeDto dto) {
        accomDao.update(dto);
    }

    @Override
    public void delete(Integer noticeNo) {
        accomDao.delete(noticeNo);
    }
}
