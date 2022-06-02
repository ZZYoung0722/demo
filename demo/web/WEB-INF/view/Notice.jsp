<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-03
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>board</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <style type="text/css">
        #writingBtn {
            width: 100px;
        }

        .a {
            text-decoration: none;
        }
        .a:hover {
            color: #ffb03b;
        }
    </style>

</head>
<body>
<%@ include file="nav.jsp" %>
<br>
<div style="text-align: center;">
    <h1>공지사항</h1>
</div>

<div class="container">
    <div class="row">
        <form action="/noticelist" id="form-search-list" method="post">
            <input type="hidden" name="page" value="1"/>
            <table class="table">
                <tr>
                    <td>
                        <select class="form-select" name="opt">
                            <option value="" selected disabled="disabled">검색조건을 선택하세요</option>
                            <option value="title" ${'title' eq param.opt ? 'selected' : ''}> 제목</option>
                        </select>
                    </td>
                    <td>
                        <input type="text" id="value" class="form-control" name="value" value="${param.value }">
                    </td>
                    <td>
                        <button type="submit" class="btn btn-outline-primary btn-m" id="btn-search">검색</button>
                    </td>
                    <td>
                        <input type="button" id="writingBtn" class="btn btn-outline-secondary" value="글쓰기" style="float: right">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<div class="container">
    <div class="row">
        <table class="table table-hover" style="margin-top: 80px;">
            <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>등록일</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${list}" varStatus="loop">
                <tr>
                    <td>${total - (pagination.rowsPerPage * (pagination.currentPageNo - 1)) - loop.count + 1}</td>
                    <td><a class="a" href="detail?no=${list.noticeNo}">${list.title}</a></td>
                    <td><fmt:formatDate value="${list.noticeDate}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>



        <c:if test="${pagination.totalRecords gt 0 }">
            <!-- 페이지 내비게이션 표시 -->
            <br><br><br>
            <div class="row mb-3">
                <div class="col">
                    <nav>
                        <ul class="pagination justify-content-center">
                            <li class="page-item ${pagination.existPrev ? '' : 'disabled' }">
                                <a class="page-link" href="/noticelist?page=${pagination.prevPage }" aria-label="Previous"
                                   data-page="${pagination.prevPage }"><span aria-hidden="true">&laquo;</span></a>
                            </li>

                            <c:forEach var="num" begin="${pagination.beginPage }" end="${pagination.endPage }">
                                <li class="page-item ${pagination.pageNo eq num ? 'active' : '' }">
                                    <a class="page-link" href="/noticelist?page=${num }" data-page="${num }">${num }</a>
                                </li>
                            </c:forEach>

                            <li class="page-item ${pagination.existNext ? '' : 'disabled' }">
                                <a class="page-link" href="/noticelist?page=${pagination.nextPage }" aria-label="Next"
                                   data-page="${pagination.nextPage }"><span aria-hidden="true">&raquo;</span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </c:if>
    </div>
</div>

<script>
    $(document).ready(function () {
        $("#writingBtn").click(insertnotice);

        //글쓰기 페이지로 이동
        function insertnotice() {
            window.location.href = "/registrationform"
        }

        // 검색버튼을 클릭했을 때 실행될 이벤트핸들러 함수를 등록한다.
        $("#btn-search").click(function (e) {
            e.preventDefault();
            // 입력값을 조회한다.
            var opt = $("select[name=opt]").val();
            var value = $.trim($(":input[name=value]").val());

            // 입력값이 존재하면 페이지번호를 1로 설정하고 폼에서 onsubmit 이벤트를 발생시켜서 폼 입력값이 서버로 제출되게 한다.
            if (opt && value) {
                $(":input[name=page]").val("1");
                $("#form-search-list").trigger("submit");
            } else {
                //alert("검색조건 혹은 검색어를 입력하세요");
                window.location.href = "/noticelist"
            }

        });


        // 페이지내비게이션의 링크를 클릭했을 때 실행될 이벤트핸들러 함수를 등록한다.
        $(".pagination a").click(function (event) {
            event.preventDefault();                                                                                          //기본 클릭 방지
            // 클릭한 페이지내비게이션의 페이지번호 조회하기
            var pageNo = $(this).attr("data-page");
            // 검색폼의 히든필드에 클릭한 페이지내비게이션의 페이지번호 설정
            $(":input[name=page]").val(pageNo);
            // 검색폼에 onsubmit 이벤트 발생시키기
            $("#form-search-list").trigger("submit");

        })
    })
</script>
</body>
</html>
