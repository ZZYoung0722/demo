<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-13
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signUp</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <style type="text/css">
        #outer {
            width: 100%;
        }

        #inner {
            width: 700px;
            margin: auto;
            padding: 100px 0;
        }

        h3 {
            text-align: center;
        }

        .form-group {
            margin: 20px 0;
        }

        .form-group label {
            width: 170px;
            text-align: center;
        }
    </style>

</head>
<body>

<div id="outer">
    <%@ include file="nav.jsp" %>
    <div id="inner">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">회원가입</h3>
            </div>
            <div class="panel-body">
                <div class="form-group row">
                    <label for="userName" class="col-md-2">이름</label>
                    <input type="text" id="userName" name="userName" required="required" class="form-control"
                           style="width: 300px" ;>
                </div>
                <div class="form-group row">
                    <label for="userId" class="col-md-2">아이디</label>
                    <input type="text" id="userId" name="userId" required="required" class="form-control"
                           style="width: 300px; margin-right: 8px;">
                    <input type="button" value="ID 중복확인" class="btn btn-outline-warning" id="idcheck"
                           style=" width:150px;"><br>
                </div>
                <div class="form-group row">
                    <label for="userPw" class="col-md-2">비밀번호</label>
                    <input type="password" id="userPw" name="userPw" maxlength="20" required="required"
                           class="form-control col-md-2"
                           style="width: 300px; margin-right: 8px;">
                </div>
                <div class="form-group row">
                    <label for="userBirth" class="col-md-2">생년월일</label>
                    <input type="date" id="userBirth" name="userBirth" required="required" class="form-control col-md-2"
                           style="width:200px; "/>
                </div>
                <div class="form-group row">
                    <label for="userTel" class="col-md-2">휴대폰번호</label>
                    <input type="tel" id="userTel" name="userTel" required="required" class="form-control"
                           placeholder="ex)010-1234-1234" maxlength="13"
                           style="width: 200px; display: inline;"/>
                </div>
                <div class="form-group row">
                    <label for="userEmail" class="col-md-2">이메일</label>
                    <input type="email" id="userEmail" name="userEmail" class="form-control col-md-2"
                           placeholder="ex)abc@naver.com" style="width:200px;"/>
                </div>
                <div class="form-group row">
                    <label for="userAddr" class="col-md-2">주소</label>
                    <input type="text" id="userAddr" name="userAddr" required="required" class="form-control col-md-2"
                           style="width: 300px; margin-right: 8px">
                </div>
                <div style="text-align: center;">
                    <button type="button" id="signupBtn" class="btn btn-outline-secondary">회원가입</button>
                    <button type="button" id="cancelBtn" class="btn btn-outline-danger">취소</button>
                </div>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        //전역변수
        var hasCheck = false;                                                                                            //중복확인

        $("#cancelBtn").click(cancelSignUp);
        $("#idcheck").click(idCheck);
        $("#signupBtn").click(signUp);
        $("#id").on("propertychange change keyup paste input", function () {                                             //text 상자 내용 감지
            hasCheck = false;
        });


        //취소 클릭시 메인페이지로 이동
        function cancelSignUp() {
            window.location.href = "/main"
        }

        //id check
        function idCheck() {
            $.ajax({
                url: '/idCheck',
                type: 'post',
                dataType: "json",
                data: {userId: $("#userId").val()},
                success: function (data) {
                    //서버로부터 정상적으로 응답이 왔을 때 실행
                    if (data.modelAndView.model.success == true) {
                        alert("사용가능한 아이디입니다.");
                        hasCheck = true;
                    } else {
                        alert("중복된 아이디입니다.");
                    }
                },
                error: function (err) {
                    //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
                    alert("중복된 아이디입니다.");
                }
            });
        }

        //signupBtn 클릭
        function signUp() {
            if ($("#userName").val() == "" || $("#userId").val() == "" || $("#userPw").val() == "" ||
                $("#userBirth").val() == "" || $("#userAddr").val() == "" || $("#userTel").val() == "" || $("#userEmail").val() == "") {
                alert("항목을 모두 입력하세요.");
                return;
            }

            if (hasCheck == true) {
                $.ajax({
                    url: '/signup',
                    type: 'post',
                    dataType: "json",
                    data: {
                        userName: $("#userName").val(),
                        userId: $("#userId").val(),
                        userPw: $("#userPw").val(),
                        userBirth: $("#userBirth").val()
                        ,
                        userAddr: $("#userAddr").val(),
                        userTel: $("#userTel").val(),
                        userEmail: $("#userEmail").val()
                    },
                    success: function (data) {
                        alert("회원가입 성공");
                        hasCheck = false;
                        window.location.href = "/loginform"
                    },
                    error: function (err) {
                        alert("회원가입 실패");
                    }
                });
            } else {
                alert("아이디 중복체크 하세요.");
            }
        }


    })
</script>


</body>
</html>
