<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-03
  Time: 오후 6:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>공지사항 등록</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="nav.jsp" %>
<br><br>

<div class="container">
    <div class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h1> 공지사항 등록 </h1>
            </div>
            <div class="panel-body">
                <form action="/registration" method="post">
                    <div class="form-group row">
                        <label for="title" class="col-md-2">제목</label>
                        <input type="text" name="title" id="title" maxlength="30" class="form-control" style="width:500px;" required="required"/>
                    </div>
                    <br>
                    <div class="form-group row">
                        <label for="content" class="col-md-2">내용</label>
                        <textarea id="content" name="content" class="form-control" cols="50" rows="10" required="required"></textarea>
                    </div>
                    <br>
                    <div style="text-align: center;">
                        <input type="submit" id="registration" class="btn btn-secondary" value="등록">
                        <input type="button" id="cancelBtn" class="btn btn-danger" value="취소">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#cancelBtn").click(cancelnotice);
        $("#registration").click(insertnotice);


        //취소 클릭시 리스트페이지로 이동
        function cancelnotice() {
            window.location.href = "/noticelist"
        }

        //등록
        function insertnotice() {
            if ($("#writer").val() == "" || $("#title").val() == "" || $("#content").val() == "") {
                alert("항목을 모두 입력하세요.");
                return;
            }
        }
    })

</script>

</body>
</html>