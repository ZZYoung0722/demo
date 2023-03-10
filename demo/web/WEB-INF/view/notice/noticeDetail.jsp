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
    <title>noticedetail</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>
<%@ include file="../nav.jsp" %>
<br><br>

<div class="container">
    <div class="panel-group">
        <div class="panel panel-default noticedetail">
            <div class="panel-heading">
                <h1>공지사항 상세보기</h1>
            </div>
            <div class="panel-body">
                <input type="hidden" name="noticeNo" value="${dto.noticeNo}">
                <br>
                <div class="form-group row">
                    <label for="title" class="col-md-2">제목</label>
                    <input type="text" name="title" id="title" value="${dto.title}" maxlength="30" class="form-control"
                           readonly="readonly"
                           style="width:500px;">
                </div>
                <br>
                <div class="form-group row">
                    <label for="content" class="col-md-2">내용</label>
                    <textarea id="content" name="content" class="form-control notice-content" readonly="readonly"
                              cols="50"
                              rows="10">${dto.content}</textarea>
                </div>
                <br>
                <div style="text-align: center;">
                    <input type="button" id="cancelBtn" class="btn btn-danger" value="취소">
                    <a href="/updateform?no=${dto.noticeNo}" role="button" class="btn btn-secondary">수정</a>
                    <a href="/delete?no=${dto.noticeNo}" role="button" id="deleteBtn" class="btn btn-secondary">삭제</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#cancelBtn").click(cancelnotice);
        $("#deleteBtn").click(deleteBtn);

        //취소 클릭시 리스트페이지로 이동
        function cancelnotice() {
            window.location.href = "/noticelist"
        }

        function deleteBtn() {
            alert("삭제하시겠습니까?");
        }

        var txtArea = $(".notice-content");
        if (txtArea) {
            txtArea.each(function () {
                $(this).height(this.scrollHeight);
            });
        }


    })

</script>

</body>
</html>
