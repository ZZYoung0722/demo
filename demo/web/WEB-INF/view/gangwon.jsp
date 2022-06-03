<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-06-03
  Time: 오후 5:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>gangwon</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&amp;display=swap"
          rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="/resources/css/style.css" rel="stylesheet">
</head>
<body>
<%@ include file="nav.jsp" %>

<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 fw-normal">강원도 테마파크</h1>
        <p class="lead fw-normal">태백산맥을 기준으로 동쪽 서쪽으로 나뉜다.</p>
        <a class="btn btn-outline-secondary" href="#">Coming soon</a>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="row align-items-md-stretch">
    <div class="col-md-6">
        <div class="h-100 p-5 text-white bg-dark rounded-3">
            <h2>춘천 레고랜드</h2>
            <p>강원도 춘천시 중도동 하중도에 위치한 테마파크.<br>
            대한민국에 정식 개장하는 최초의 "글로벌 프랜차이즈 테마파크"이다. 전세계에서 두 번째로 큰 레고랜드이자, 아시아에서 가장 큰 레고랜드이다. 참고로
            전세계 최조로 섬 위에 지어진 테마파크이기도 하다.</p>
            <button class="btn btn-outline-light" type="button">Example button</button>
        </div>
    </div>
    <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
            <h2>설악산국립공원</h2>
            <p>태백산맥에 있는 강원도의 명산. 속초시와 양양군, 고성군, 인제군에 걸쳐있다. 높이는 한라산, 지리산 다음으로 세 번째로 높은 산이다.<br>
            1970년 우리나라에서 다섯 번째 국립공원으로 지정되었고, 1965년 천연기념물로 지정되었다.</p>
            <button class="btn btn-outline-secondary" type="button">Example button</button>
        </div>
    </div>
</div><br>
<div class="row align-items-md-stretch">
    <div class="col-md-6">
        <div class="h-100 p-5 text-white bg-dark rounded-3">
            <h2>평창 대관령 양떼목장</h2>
            <p>대관령양떼목장은 농림부에서 지정한 동물복지와 산림보존에 특화된 산지생태축산 목장입니다.<br>
            대관령의 부드러운 능선과 야생 식물로 가득 차있는 습지대는 자연 그대로의 모습을 간직하고 있기에 더욱 아름답고 신기하기만 합니다.<br>
            푸른 초지가 바람에 흔들거리는 아름다운 목장의 능선에서 양들이 한가로이 풀을 뜯고 있는 모습을 보고 있으면, 마치 알프스에 와 있는듯한 착각을 하게합니다.
            특히 봄, 여름, 가을, 겨울 시시각각 변하는 목장의 경관은 자연의 신비로움과 아름다움을 몸소 느끼게 해줍니다.</p>
            <button class="btn btn-outline-light" type="button">Example button</button>
        </div>
    </div>
    <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
            <h2>남이섬</h2>
            <p>강원도 춘천에 있는 섬이다. 남이 장군의 묘역이 있는 문화유적지이자 관광휴양지로 개발된 곳으로서 대한민국의 대표적인 관광지이다.</p>
            <button class="btn btn-outline-secondary" type="button">Example button</button>
        </div>
    </div>
</div>


</body>
</html>
