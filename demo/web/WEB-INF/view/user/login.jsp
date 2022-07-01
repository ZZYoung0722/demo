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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>

<div id="outer">
    <%@ include file="../nav.jsp" %>
    <div id="inner">
        <div id="main">
            <div id="login-title">
                <h1>Login</h1>
            </div>

            <form action="/login" , method="post">
                <div id="content" style="width: 400px;">
                    ID<input type="text" id="userId" name="userId" class="form-control" required="required"
                             placeholder="ID">
                    Password<input type="password" id="userPw" name="userPw" class="form-control" required="required"
                                   placeholder="Password"><br>
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
