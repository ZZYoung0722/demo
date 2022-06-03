<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-06-03
  Time: 오후 1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>seoul</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&amp;display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>
<%@ include file="nav.jsp" %>

<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 fw-normal">서울 테마파크</h1>
        <p class="lead fw-normal">서울특별시는 대한민국의 수도이자 최대 도시이며 최고 도시다.</p>
        <a class="btn btn-outline-secondary" href="#">Coming soon</a>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">경복궁</h2>
            <p class="lead">조선 왕조의 법궁이다. <br>이름에는 '새 왕조가 큰 복을 누려 번영할 것'이라는 의미가 담겨 있다.</p><br>
        </div>
        <div>
            <img src="http://cdn.news.eugenes.co.kr/news/photo/201608/2245_4430_324.jpg" class="palace">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">남산서울타워</h2>
            <p class="lead">
                대한민국 대표 랜드마크 <br>
                효율적인 방송전파 송수신과 한국의 전통미를 살린 관광 전망시설의 기능을 겸비한 국내 최초의 종합전파탑으로 방송문화와 관광산업의 미래를 위해 건립되었습니다.</p>
        </div>
        <div>
            <img src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=24595&fileTy=MEDIA&fileNo=1" class="tower">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">북촌한옥마을</h2>
            <p class="lead">종로의 북쪽마을 도심을 흐르는 청계천과 600년 선조의 숨결이 살아숨쉬는 곳.<br>
            전통한옥과 비교할 때 비록 온전히 품격을 갖추지 못했지만, 북촌한옥에는 한옥의 구성과 아름다움이 응축되어 있다.</p>
        </div>
        <div>
            <img src="https://content.r9cdn.net/rimg/dimg/79/5c/2a4a56c0-lm-169100-169b609d730.jpg?crop=true&width=568&height=320&xhint=1937&yhint=1193" class="town">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">롯데월드</h2>
            <p class="lead">롯데월드 어드벤처는 현재 존재하는 테마파크 중에서 페라리 월드 다음으로 세계 최대 규모를 가진 실내 테마파크다.</p><br>
        </div>
        <div>
            <img src="https://w.namu.la/s/d60e917b1c3157970215963af4a9ecedc293ff2c1a5b924bfb86bde79299afc90d702ac20bc458408837e6d6e3bb25c12faa6c093f8da575bf0ecdd0b3031e13953993154f6e08e7238800327e86b4812a5d2517373a9ab7329186f61543f93b2ba8af6c100a7c9db01f14d2f73c5345" class="lotte">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">청계천</h2>
            <p class="lead">서울의 도시개발 역사를 상징하는 하천으로도 유명하다.<br>
            서울 내의 모든 물이 여기에 모여 동쪽으로 흐르다가 왕십리 밖 살곶이다리 근처에서 중랑천과 합쳐 서쪽으로 흐름을 바꾸어 한강으로 빠진다.</p>
        </div>
        <div>
            <img src="https://www.sisul.or.kr/open_content/cheonggye/images/visual_mb.jpg" class="river">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">광장시장</h2>
            <p class="lead">서울 최대 규모의 재래시장이자, 대한민국 최초의 전통 거래 시장이다.<br>
            광장이라는 이름의 유래는 청계천 3,4가에 있던 광교와 장교로 광장시장의 위치가 이 두 다리 사이에 있다고 하여 붙여졌다.</p>
        </div>
        <div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStr6L3yD5uRAJE2KkRO0qV4vuA8N2Lc7fpLw&usqp=CAU" class="market">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">DDP 동대문디자인플라자</h2>
            <p class="lead">서울특별시 중구의 전시장 및 쇼핑몰.<br>
            영국의 건축가 자하 하디드가 설계했다. 홈페이지에 따르면 세계 최대 규모의 3차원 비정형 건축물이라고 한다.</p>
        </div>
        <div>
            <img src="https://w.namu.la/s/5cb142ffe4d7e5b25c78e0c8529363a6ddb9f48f78377162bc296b1726e6fbeddbd07dd236b00a0baad19e4558ed8809acb15c38734a6585c4d535f0a552b759809827d0ca2ba766e99f8972c6eb5d954da0ae67ad60ed9a132fb2e4d83188fe7dbd64f1a05e176a6d5059249f7ee051" class="ddp">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">광화문</h2>
            <p class="lead">경복궁의 남쪽에 있는 정문이고, '임금의 큰 덕이 온 나라를 비춘다'는 의미이다.<br>
            조선 태조 4년에 건립됨. 임진왜란 때 소실되었다가 고종 1년 대원군 때 재건됨. 현재의 광화문은 1968년 12월에 복원된 것임.</p>
        </div>
        <div>
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/2011%EB%85%84_11%EC%9B%94_%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD_%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C_%EB%AA%85%EC%86%8C_%28Seoul_best_attractions%29_%EA%B4%91%ED%99%94%EB%AC%B8.JPG/305px-2011%EB%85%84_11%EC%9B%94_%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD_%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C_%EB%AA%85%EC%86%8C_%28Seoul_best_attractions%29_%EA%B4%91%ED%99%94%EB%AC%B8.JPG" class="door">
        </div>
    </div>
</div>

</body>
</html>
