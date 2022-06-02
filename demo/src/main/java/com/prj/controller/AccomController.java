package com.prj.controller;

import com.common.CustomJsonView;
import com.prj.dto.*;
import com.prj.service.AccomService;
import com.utill.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class AccomController {

    @Autowired
    private AccomService accomService;

    //메인 화면
    @RequestMapping("/main")
    public String main(Model model) {
        Object test = SessionUtils.getAttribute("LOGIN_USER");

        model.addAttribute("LOGIN_USER", test);

        return "main";
    }

    //회원가입 화면
    @RequestMapping("/signupform")
    public String signUpform() {
        return "signUp";
    }

    @RequestMapping("/ex")
    public String ex() {
        return "ex";
    }

    //체험
    @RequestMapping("/experience")
    public String experience() {
        return "experience";
    }

    //로그인 화면
    @RequestMapping("/loginform")
    public String loginform() {
        return "login";
    }

    //로그인 화면
    @RequestMapping("/notice")
    public String notice() {
        return "Notice";
    }

    //공지사항 등록 화면
    @RequestMapping("/registrationform")
    public String registrationform() {
        return "noticeInsert";
    }

    /*//숙소리스트 화면
    @RequestMapping("/accomlistform")
    public String accomlistform() {
        return "accomList";
    }
*/
    //ajax idCheck
    @RequestMapping("/idCheck")
    public @ResponseBody
    CustomJsonView idCheck(UserDto dto) {
        CustomJsonView view = new CustomJsonView();

        try {
            int idcheck = accomService.idCheck(dto);
            if (idcheck == 0) {
                return view.sucess("사용가능한 아이디입니다.", "sucess");
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return view.error("중복된 아이디입니다.", "중복된 아이디입니다.", "fail", HttpStatus.EXPECTATION_FAILED);
    }

    //회원가입
    @RequestMapping("/signup")
    public @ResponseBody
    CustomJsonView signUp(UserDto dto) {
        CustomJsonView view = new CustomJsonView();
        SaltUtil saltUtil = new SaltUtil();

        try {
            //입력한 비밀번호 암호화
            Salt salt = saltUtil.encrypt(dto.getUserPw());
            String key = salt.getSalt();

            dto.setUserPw(salt.getEncrypt());
            dto.setSalt(key);

            Aes256Util aes256Util = new Aes256Util();
            dto.setUserName(aes256Util.encrypt(dto.getUserName(), key));
            /*dto.setUserTel(aes256Util.encrypt(dto.getUserTel(), key));
            dto.setUserEmail(aes256Util.encrypt(dto.getUserEmail(), key));
            dto.setUserAddr(aes256Util.encrypt(dto.getUserAddr(), key));
            dto.setUserBirth(aes256Util.encrypt(dto.getUserBirth(), key));*/

//            System.out.println(dto.getUserName());

            int result = accomService.signUp(dto);

            if (result == 1) {
                return view.sucess("회원가입 성공", "success");
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return view.error("회원가입 실패", "회원가입 실패", "fail", HttpStatus.EXPECTATION_FAILED);
    }

    //로그인
    @PostMapping("/login")
    public String login(String userId, String userPw) {
        //accomService의 사용자 인증 서비스 호출
        UserDto userDto = accomService.login(userId, userPw);

        SessionUtils.addAttribute("LOGIN_USER", userDto);

        return "redirect:/main";
    }

    //로그아웃
    @GetMapping("/logout")
    public String logout() {
        SessionUtils.removeAttribute("LOGIN_USER");

        return "redirect:/main";
    }

    //공지사항 리스트
    @RequestMapping("/noticelist")
    public String noticelist(@RequestParam(name = "page", required = false, defaultValue = "1") String page, Criteria criteria, Model model) {

        int totalRecords = accomService.totalCount(criteria);
        Pagination pagination = new Pagination(page, totalRecords, 10);

        //시작 끝 criteria에 저장
        criteria.setBeginIndex(pagination.getBegin());
        criteria.setEndIndex(pagination.getEnd());

        //리스트 불러오기
        List<NoticeDto> list = accomService.search(criteria);

        model.addAttribute("total", totalRecords);
        model.addAttribute("pagination", pagination);
        model.addAttribute("list",list);

        return "Notice";
    }

    //공지사항 등록
    @PostMapping("/registration")
    public String registration(NoticeDto dto) {
        accomService.registration(dto);
        return "redirect:/noticelist";
    }

    //공지사항 상세페이지
    @RequestMapping("/detail")
    public String detail(Model model, Integer no) {
        NoticeDto dto = accomService.detail(no);
        model.addAttribute("dto", dto);

        //System.out.println(dto);
        return "noticeDetail";
    }

    //공지사항 수정/삭제 페이지
    @RequestMapping("/updateform")
    public String updateform(Model model, Integer no) {
        NoticeDto dto = accomService.detail(no);
        model.addAttribute("dto", dto);

        return "noticeUpdate";
    }

    //공지사항 수정
    @RequestMapping("/update")
    public String update(NoticeDto dto) {
        accomService.update(dto);
        return "redirect:/noticelist";
    }

    //공지사항 삭제
    @RequestMapping("/delete")
    public String delete(Integer no) {
        accomService.delete(no);
        return "redirect:/noticelist";
    }

    //숙소 다 가져오기
    @RequestMapping("/accomlistform")
    public String accomMapList(Model model) {
        List<AccomDto> list =  accomService.accomMapList();

        for (AccomDto dto : list) {
            dto.setAccomImg(accomService.getImgList(dto.getAccomNo()));
        }

        model.addAttribute("list", list);

        return "accomList";
    }

    //지도에 영역별 마커 띄우기
    @RequestMapping("/mapListByExtent")
    public @ResponseBody List<AccomDto> mapListByExtent(@RequestParam Map<String, String> param) {
        List<AccomDto> list = accomService.mapListByExtent(param);

        //이미지 다르게 띄우기
        for (AccomDto dto : list) {
            dto.setAccomImg(accomService.getImgList(dto.getAccomNo()));
        }

        return list;
    }
}
