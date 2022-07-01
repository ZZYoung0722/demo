<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-06-03
  Time: 오후 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jeonju</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>
<%@ include file="../nav.jsp" %>

<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 fw-normal">전주 테마파크</h1>
        <p class="lead fw-normal">광역시인 광주를 빼면 큰 도시가 적은 호남에서는 유일하게 대도시 특례를 받는 도시로
            전북 제1의 도시, 호남 제2의 도시이다. 무엇보다도 조선 뿌리가 되는 도시이다 보니 인지도가 높으며 일본에서도 서율특별시, 부산광역시 다음으로 인지도가 높다.</p>
        <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#jeonju">
            Review
        </button>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="modal fade" id="jeonju" tabindex="-1" aria-labelledby="jeonjuLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="border-radius: 1rem;">
            <div class="modal-header">
                <h2 class="modal-title" id="jeonjuLabel">Review</h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                    <h6 class="reviews-text mb-0 me-3">3.5/5.0</h6>
                    <div class="reviews-stars" style="text-align: center;">
                        <i class="bi bi-star-fill" style="color: gold">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </i>
                        <i class="bi bi-star-fill" style="color: gold">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </i>
                        <i class="bi bi-star-fill" style="color: gold">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </i>
                        <i class="bi bi-star-half" style="color: gold">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-star-half" viewBox="0 0 16 16">
                                <path d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z"/>
                            </svg>
                        </i>
                        <i class="bi bi-star" style="color: gold">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-star" viewBox="0 0 16 16">
                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                            </svg>
                        </i>
                    </div>
                </div>
                <br>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>너무 좋아요!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>전주한옥마을!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>경기전!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>남부시장!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>오목대 이목대!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>전주동물원!!!!!!</p>
                    </i>
                </div>
            </div>
        </div>
    </div>
</div>

<section>
    <div class="container">
        <div class="row exper black-background">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">전주한옥마을</h2>
                <p class="lead">전주 한옥마을은 전주 풍남동 일대에 700여 채의 한옥이 군락을 이루고 있는
                    국내 최대 규모의 전통 한옥촌이며, 전국 유일의 도심 한옥군입니다.
                    1910년 조정되기 시작한 우리나라 근대 주거문화 발달과정의 중요한 공간으로, 경기전, 오목대, 향교 등
                    중요 문화재와 20여개의 문화시설이 산재되어 있으며, 한옥, 한식, 한지, 한소리, 한복, 한방 등 韓스타일이 집약된
                    대한민국 대표 여행지입니다.</p>
            </div>
            <div class="col-md-5 experpic">
                <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                     src="/resources/img/trip4.jpg">
            </div>
        </div>

        <div class="row exper">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">경기전</h2>
                <p class="lead">경기전은 왕조의 발상지라 여기는 전주에 세운 전각으로, 세종 때 붙인 이름이다.
                    건물은 정유재란 때 소실되었던 것을 1614년(광해군6)에 증건하엿다.
                    경기전의 경역은 정전(正殿)과 조경묘(肇慶廟)로 나뉜다.</p>
            </div>
            <div class="col-md-5 experpic">
                <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                     src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MDJfMTgx%2FMDAxNTkzNjE1ODI4ODA0.2V8ocSzx8boJXvCH4NolxssMlHn1L5ZGib26y60H3NIg.GZLTne6CAqFa28sVQASK4TcxeA1vbFkvWGpVfIDNP7cg.JPEG.lsy5088%2F20200511_154500.jpg%231000x562">
            </div>
        </div>

        <div class="row exper black-background">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">남부시장</h2>
                <p class="lead">전주는 시장의 발상지(1473)이고, 남부시장은 그때부터 지금까지 계승된 한국의 유일무이한 역사적 시장이다.
                    남부시장은 한국 전통시장의 유래와 비슷한 역사를 가지고 있는 전라북도의 대표 시장입니다.
                    2015년 글로벌명품시장육성사업을 통해 한국의 대표 관광시장에서 세계의 관광시장으로 도약하고 전라북도를 대표하는 전통시장입니다.</p>
            </div>
            <div class="col-md-5 experpic">
                <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                     src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzEyMDVfMjky%2FMDAxNTEyMzk5ODgxNTA5.pTEIYoMAHlwvG0fl5Yk2MQ5H0tzhWspfuXQSkz3zfhgg.Y9JjEvHYzp51l6L03hhjOrlGmXqjwWhWHGpDDBqiT9og.JPEG.marketagency%2F2.jpg%23740x494">
            </div>
        </div>

        <div class="row exper">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">오목대 이목대</h2>
                <p class="lead">한벽당 전주향교의 북쪽 4차선 노변, 벼랑같이 솟은 언덕에 세워진 오목대는 고려 말 우왕 6년에 이성계가 운봉 황산에서 왜군을
                    무찌르고 돌아가던 중 조상인 목조가 살았던 이 곳에 들러 승전을 자축한 곳으로, 그 후 고종 황제가 친필로 쓴 태조고황 제주필유지비를 세웠다.
                    여기서 육교를 건너서 이목대가 있는데, 천주교의 성지 치명자산이 있는 승암산 발치에 위치한다.</p>
            </div>
            <div class="col-md-5 experpic">
                <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                     src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=f8b4fff8-e15f-46f9-9967-ee24c555af90">
            </div>
        </div>

        <div class="row exper black-background">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">전주동물원</h2>
                <p class="lead">수달, 반달가슴곰 등 천연기념물로 지정된 동물을 비롯한 100여종 600여 마리의 동물들이 사는 동물원.
                    각 동물의 특성에 맞는 전문적인 환경을 제공하는 생태 동물원으로, 각 동물에 관련한 설명을 배치해두어 아이의 교육을 목적으로
                    방문하기 좋다.</p>
            </div>
            <div class="col-md-5 experpic">
                <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                     src="https://img.newspim.com/news//2019/05/01/1905011503126890.jpg">
            </div>
        </div>
    </div>
</section>

</body>
</html>
