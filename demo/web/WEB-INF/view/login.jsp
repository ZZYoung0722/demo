<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-04-26
  Time: 오후 4:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>

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
            width: 1100px;
            margin: auto;
            padding: 100px 0;
        }

        #main {
            margin-left: 33%;
        }

        #title {
            margin-left: 1%;
            font-size: 40px;
        }

        #content {
            margin-top: 15px;
        }

        #loginBtn {
            width: 400px;
            height: 50px;
            margin-top: 10px;
        }
    </style>

</head>
<body>

<div id="outer">
    <%@ include file="nav.jsp"%>
    <div id="inner">
        <div id="main">
            <div class="nav-item">
                <a href="/main">
                    <img src="/resources/img/accom.png" style="height: 100px;">
                </a>
            </div>
            <div id="title">
                <h1>Login</h1>
            </div>

            <form action="/login", method="post">
                <div id="content" style="width: 400px;">
                    ID<input type="text" id="userId" name="userId" class="form-control" required="required" placeholder="ID">
                    PassWord<input type="password" id="userPw" name="userPw" class="form-control" required="required"
                                   placeholder="PassWord"><br>
                    <c:if test="${not empty error}">
                        <p style="color: red">${error}</p>
                    </c:if>
                    <button type="submit" id="loginBtn" class="btn btn-secondary">Sign in</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#loginBtn").click(function (e) {
            if ($("#userId").val() == "" || $("#userPw").val() == "") {
                alert("항목을 모두 입력하세요.");
                return;
            }
        });
    });
</script>

</body>
</html>
