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
    <title>공지사항 수정</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <style>
        .noticeupdate {
            margin-top: 100px;
        }

        .content {
            display: block;
            overflow: hidden;
            width: 100%;
            height: 2.7rem;
            padding: 0.6rem;
            font-size: 1.2rem;
            resize: none;
        }
    </style>

</head>
<body>
<%@ include file="nav.jsp" %>

<div class="container">
    <div class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading noticeupdate">
                <h1> 공지사항 수정 </h1>
            </div>
            <div class="panel-body">
                <form action="/update?no=${dto.noticeNo}" method="post" name="update">
                <input type="hidden" name="noticeNo" value="${dto.noticeNo}">
                    <br>
                    <div class="form-group row">
                        <label for="title" class="col-md-2">제목</label>
                        <input type="text" name="title" id="title" value="${dto.title}" maxlength="30" class="form-control"
                               style="width:500px;" >
                    </div>
                    <br>
                    <div class="form-group row">
                        <label for="content" class="col-md-2">내용</label>
                        <textarea id="content" name="content" class="form-control content" cols="50" rows="10">${dto.content}</textarea>
                    </div>
                    <br>
                    <div style="text-align: center;">
                        <input type="submit" class="btn btn-secondary" value="완료">
                        <input type="reset" class="btn btn-secondary" value="리셋">
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


        //취소 클릭시 리스트페이지로 이동
        function cancelnotice() {
            window.location.href = "/noticelist"
        }

        var txtArea = $(".content");
        if (txtArea) {
            txtArea.each(function(){
                $(this).height(this.scrollHeight);
            });
        }
    })

</script>

</body>
</html>
