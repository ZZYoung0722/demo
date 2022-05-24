package com.prj.dao;

import com.prj.dto.AccomDto;
import com.prj.dto.NoticeDto;
import com.prj.dto.UserDto;
import com.utill.Criteria;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class AccomDao {

    @Autowired
    private SqlSessionTemplate sql;

    /*로그인/회원가입*/
    public int idCheck(UserDto dto) {
        return sql.selectOne("idCheck", dto);
    }

    public int signUp(UserDto dto) {
        return sql.insert("signUp", dto);
    }

    public String login(UserDto dto) {
        return sql.selectOne("login", dto);
    }

    public UserDto getUserById(String userId) {
        return sql.selectOne("getUserById", userId);
    }



    /*공지사항*/
    public List<NoticeDto> search(Criteria criteria) {
        return sql.selectList("search",criteria);
    }

    public int totalCount(Criteria criteria) {
        return sql.selectOne("totalCount", criteria);
    }

    public void registration(NoticeDto dto) {
        sql.insert("registration", dto);
    }

    public NoticeDto detail(Integer noticeNo) {
        return sql.selectOne("detail",noticeNo);
    }

    public void update(NoticeDto dto) {
        sql.update("update", dto);
    }

    public void delete(Integer noticeNo) { sql.update("delete", noticeNo); }


    /*숙소*/
    public List<AccomDto> accomMapList() { return sql.selectList("accomMapList");}

    public List<AccomDto> mapListByExtent(Map<String, String> param) {
        return sql.selectList("mapListByExtent", param);
    }

}
