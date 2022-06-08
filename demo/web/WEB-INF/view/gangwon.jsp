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
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#lego">lego</button>
            <div class="modal fade" id="lego" tabindex="-1" aria-labelledby="legoLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-black" id="legoLabel">lego</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8i14-iyd7Ne7JTk4zCJAhWX30NB_Afu1mYQ&usqp=CAU">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
            <h2>설악산국립공원</h2>
            <p>태백산맥에 있는 강원도의 명산. 속초시와 양양군, 고성군, 인제군에 걸쳐있다. 높이는 한라산, 지리산 다음으로 세 번째로 높은 산이다.<br>
            1970년 우리나라에서 다섯 번째 국립공원으로 지정되었고, 1965년 천연기념물로 지정되었다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#seorak">설악산국립공원</button>
            <div class="modal fade" id="seorak" tabindex="-1" aria-labelledby="seorakLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="seorakLabel">seorak</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MjZfMjgg%2FMDAxNjI3MzA5MjU3MjE4.px8w4xGOqJUOTr1Ovy_F7ctoWI26IbNw7gNpBDUhNyIg.bNOqLGsUDxY19wPKJL6Z41F4aXkx8mg2M34Z12q3JVog.JPEG.shuma1967%2FL1110035.JPG&type=a340">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><br>
<div class="row align-items-md-stretch">
    <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
            <h2>평창 대관령 양떼목장</h2>
            <p>대관령양떼목장은 농림부에서 지정한 동물복지와 산림보존에 특화된 산지생태축산 목장입니다.<br>
            대관령의 부드러운 능선과 야생 식물로 가득 차있는 습지대는 자연 그대로의 모습을 간직하고 있기에 더욱 아름답고 신기하기만 합니다.<br>
            푸른 초지가 바람에 흔들거리는 아름다운 목장의 능선에서 양들이 한가로이 풀을 뜯고 있는 모습을 보고 있으면, 마치 알프스에 와 있는듯한 착각을 하게합니다.
            특히 봄, 여름, 가을, 겨울 시시각각 변하는 목장의 경관은 자연의 신비로움과 아름다움을 몸소 느끼게 해줍니다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#pasture">목장</button>
            <div class="modal fade" id="pasture" tabindex="-1" aria-labelledby="pastureLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="pastureLabel">대관령 양떼목장</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MDNfNzMg%2FMDAxNjI3OTUyNTE3ODQz.wYhQKAnLYUPIIWLIk0gssD3GIsoX3bHcpQbaSjh-68gg.aV-4Sz0Cu0KRg5z9JkQnVX1wkotkt5ofxXth2LfPqcMg.JPEG.0505ej%2FDSC01940.JPG&type=a340">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="h-100 p-5 text-white bg-dark bg-light border rounded-3">
            <h2>남이섬</h2>
            <p>강원도 춘천에 있는 섬이다. 남이 장군의 묘역이 있는 문화유적지이자 관광휴양지로 개발된 곳으로서 대한민국의 대표적인 관광지이다.<br>
            북한강 한 가운데 있는 하중도. 또는 그 섬에 위치한 대한민국 대표 관광지.<br>
            앞섬이라는 뜻의 남섬으로도 불렸던 남이섬 지명의 유래는 남이섬 북쪽 언덕의 돌무더기에 조선 초기의 무장인 남이 장군이 묻혀있다는 오랜 민간전승에 기인하여 자연스릅게 정착된 것이다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#island">남이섬</button>
            <div class="modal fade" id="island" tabindex="-1" aria-labelledby="islandLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="islandLabel">남이섬</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fpost.phinf.naver.net%2FMjAyMjA1MjJfMzYg%2FMDAxNjUzMjIzMDU0ODg1.cuNMQN8g3ae_R1S9LrWQfEVo49ZbyhRNUhAwfqf1yh8g.hYI9XxuMk7rKarHbG1jaRpczkk97u_pXtXxuZgSk1akg.JPEG%2FIBf-RBag1IWwN97RnVfjy81Ad95I.jpg&type=ofullfill340_600_png">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
