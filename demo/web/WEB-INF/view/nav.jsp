<%@ page import="com.utill.SessionUtils" %><%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-13
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>nav</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
    <div class="container-fluid">
        <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/accomlistform">숙박</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/main">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/experience">체험</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/noticelist">공지사항</a>
                </li>
                <c:if test="${empty LOGIN_USER}">
                    <li class="nav-item">
                        <a class="nav-link" href="/loginform">로그인</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/signupform">회원가입</a>
                    </li>
                </c:if>
                <c:if test="${not empty LOGIN_USER}">
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">로그아웃</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>
