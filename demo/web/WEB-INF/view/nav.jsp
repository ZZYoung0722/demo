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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>

<body>

<%--<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark" aria-label="Tenth navbar example">
    <div class="container-fluid">
        <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/accomlistform">숙박</a>
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
</nav>--%>


<nav>
    <ul class="nav-container fixed-top">
        <li class="nav-item" style="margin-left: 700px;"><a href="/accomlistform">숙박</a></li>
        <li class="nav-item"><a href="/main">HOME</a></li>
        <li class="nav-item"><a href="/experience">체험</a></li>
        <li class="nav-item"><a href="/noticelist">공지사항</a></li>
        <c:if test="${empty LOGIN_USER}">
            <li class="nav-item"><a href="/loginform">로그인</a></li>
            <li class="nav-item"><a href="/signupform">회원가입</a></li>
        </c:if>
        <c:if test="${not empty LOGIN_USER}">
            <li class="nav-item"><a href="/logout">로그아웃</a></li>
        </c:if>
    </ul>
</nav>


</body>
</html>
