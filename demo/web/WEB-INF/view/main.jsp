<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-12
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>

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

<section id="hero">
    <div class="hero-container">
        <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <ol class="carousel-indicators" id="hero-carousel-indicators">
                <li data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#heroCarousel" data-bs-slide-to="1" class="" aria-current="true"></li>
                <li data-bs-target="#heroCarousel" data-bs-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active" style="background-image: url(/resources/img/trip1.jpg);">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 class="animate__animated animate__fadeInDown">
                                <span>부산</span> 해동용궁사</h2>
                            <p class="animate__animated animate__fadeInUp">
                                해동용궁사는 부산 기장군 기장읍 시랑리에 있는 절이다. 바다와 가장 가까운 사찰로 대한민국의 관음성치의 하나다.
                                절측에서는 1376년 나옹화상 혜근이 창건한 사찰이라 주장하지만 실상 1970년대 신축된 현대사찰에 불과하다.
                                원래 절이 있던 곳은 깨를 심거나 소를 먹이던 빈터였다.
                            </p>
                            <div>
                                <a href="/accomlistform" class="btn-menu animate__animated animate__fadeInUp scrollto Butt">숙소
                                    바로가기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(/resources/img/trip2.jpg);">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 class="animate__animated animate__fadeInDown">
                                <span>경주</span> 동궁과 월지</h2>
                            <p class="animate__animated animate__fadeInUp">
                                경상북도 경주시 인왕동에 위치판 경주 월서으이 별궁 터이다.
                                신라가 멸망한 후 이곳에 기러기와 오리가 날아와 기러기 안(雁)자와 오리 압(鴨)자를 써서 예전엔 안압지(雁鴨池)로 불렀다가,
                                유물 발굴 결과 신라시대때 '월지'라고 불렸다는 것이 확인되어 2011년에 경주 동궁과 월지라는 명칭으로 변경되었다.</p>
                            <div>
                                <a href="/accomlistform" class="btn-menu animate__animated animate__fadeInUp scrollto Butt">숙소
                                    바로가기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(/resources/img/trip4.jpg);">
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 class="animate__animated animate__fadeInDown">
                                <span>전주</span> 한옥마을</h2>
                            <p class="animate__animated animate__fadeInUp">전라북도 전주시 완산구 교동, 풍남동 일대에 위치한 한옥 밀집거리.
                                전주의 대표적인 관광지로 한옥 건물들과 경기전, 전주향교, 한벽당, 오목대와 이목대, 전동성당 등 오래된 건물들이 있다.
                                전주시가 관광지로 발돋움할 수 있게 해 준 원동력이며 인근 구도심 일대가 역사문화벨트로 묶여 같이 발전하고 있다.
                                한옥마을을 포함한 전주시 일대가 슬로시티로 지정돼있다.
                            </p>
                            <div>
                                <a href="/accomlistform" class="btn-menu animate__animated animate__fadeInUp scrollto Butt">숙소
                                    바로가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                <i class="bi bi-chevron-double-left">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                            <path fill-rule="evenodd" d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                    </svg>
                </i>
            </a>
            <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                <i class="bi bi-chevron-double-right">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                        <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                    </svg>
                </i>
            </a>
        </div>
    </div>
</section>

<br>

<section class="padding300 margin50">
    <ul class="items quarter img70 cities">
        <a href="/seoul">
            <li>
                <img src="https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=720">
                <span><span class="font_bold">서울</span><span>차로 30분 거리</span></span>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/8b318783-723f-4584-9b9b-0eb2c8b6078e.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">인천</span><span>차로 1시간 거리</span></span>
            </li>
        </a>
        <a href="/gangwon">
            <li>
                <img src="https://a0.muscache.com/im/pictures/847cfb7f-788d-42dc-9148-f375348dde76.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">강원도</span><span>차로 3시간 거리</span></span>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/76e5f1c6-a788-418c-a28b-f0ee29cffd41.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">대구</span><span>차로 3.5시간 거리</span></span>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/560c06e1-a396-4414-9e38-4fbe8e9f04c4.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">부산</span><span>차로 5시간 거리</span></span>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/7c424b7e-0f02-4282-93cf-c5fc5e5e157d.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">경주</span><span>차로 3.5시간 거리</span></span>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/8340bd19-ee32-4669-8b10-a8ac7e7735d4.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">전주</span><span>차로 3시간 거리</span></span>
            </li>
        </a>
        <a href="/jeju">
            <li>
                <img src="https://a0.muscache.com/im/pictures/ac2086c9-df0d-4085-94c0-94fe3fb94862.jpg?im_q=medq&im_w=240">
                <span><span class="font_bold">제주도</span><span>비행기로 1시간 거리</span></span>
            </li>
        </a>
    </ul>
</section>

<section id="Best3" class="Best3" style="padding: 100px;">
    <div class="container">
        <div class="section-title">
            <h2>Best 3</h2>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="box">
                    <img src="/resources/img/accom9.jpg" class="img-fluid">
                    <span>01</span>
                    <h4>파라스파라 서울</h4>
                    <span class="price bg-white shadow-lg ms-4"><small>\</small>1,015,669</span>
                    <p>북한산 궁립공원에 위치한 서울의 유일한 리조트 파라스파라 서울입니다.
                        인기 편의시설은 수영장, 사우나등이 있고, 바로 산이 있어서 힐링하기 좋은 곳 입니다.</p>
                    <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                        <h6 class="reviews-text mb-0 me-3">4.5/5</h6>
                        <div class="reviews-stars">
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-half">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                                    <path d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z"/>
                                </svg>
                            </i>
                        </div>
                        <p class="reviews-text mb-0 ms-4">684 Reviews</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <div class="box">
                    <img src="/resources/img/accom4.jpg" class="img-fluid">
                    <span>02</span>
                    <h4>시그니엘</h4>
                    <span class="price bg-white shadow-lg ms-4"><small>\</small>2,783,000</span>
                    <p>한강 전망의 현대적인 고층 건물에 자리한 호텔. 고급 레스토랑 2곳과 화려한 샴페인 바, 세련된 라운지를 이용할 수 있습니다.
                    기타 편의시설로는 고급 스파와 실내 수영장이 있으며 연회장을 비롯한 이벤트 공간도 갖춰져 있습니다.</p>
                    <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                        <h6 class="reviews-text mb-0 me-3">3.5/5</h6>
                        <div class="reviews-stars">
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-half">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                                    <path d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
                                    <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                                </svg>
                            </i>
                        </div>
                        <p class="reviews-text mb-0 ms-4">265 Reviews</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <div class="box">
                    <img src="/resources/img/accom3.jpg" class="img-fluid">
                    <span>03</span>
                    <h4>조선팰리스</h4>
                    <span class="price bg-white shadow-lg ms-4"><small>\</small>770,000 </span>
                    <p>수영장에 어린이 수영장과 인명 구조 요원이 존재하고, 피트니스센터에 러닝머신, 웨이트 머신, 사우나 등이 있습니다.
                    스파는 따로 없고 호텔 방 욕조를 이용하셔야 합니다.</p>
                    <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                        <h6 class="reviews-text mb-0 me-3">3/5</h6>
                        <div class="reviews-stars">
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star-fill">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
                                    <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                                </svg>
                            </i>
                            <i class="bi bi-star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
                                    <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                                </svg>
                            </i>
                        </div>
                        <p class="reviews-text mb-0 ms-4">163 Reviews</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="padding80 margin50">
    <div><b class="font45">어디에서나, 여행은 살아보는거야!</b></div>
    <ul class="items quarter trip">
        <a href="#">
            <li><img src="https://a0.muscache.com/im/pictures/a0316ecb-e49b-4b3a-b6b6-c2876b820e8c.jpg?im_w=480"
                     width="100%"><b class="font18">집 전체</b></li>
        </a>
        <a href="#">
            <li><img src="https://a0.muscache.com/im/pictures/ff69ac49-64e7-4f4a-ae2b-ee01163d0790.jpg?im_w=480"
                     width="100%"><b class="font18">통나무집 및 전원주택</b></li>
        </a>
        <a href="#">
            <li><img src="https://a0.muscache.com/im/pictures/ce6814ba-ed53-4d6e-b8f8-c0bbcf821011.jpg?im_w=480"
                     width="100%"><b class="font18">독특한 공간</b></li>
        </a>
        <a href="#">
            <li><img src="https://a0.muscache.com/im/pictures/34b9d53a-8952-47f8-876d-bb927ea487b2.jpg?im_w=480"
                     width="100%"><b class="font18">온수 욕조</b></li>
        </a>
    </ul>
</div>




<section id="food" class="food" style="padding: 100px;">
    <div class="container">
        <div class="section-title">
            <h2>주변 음식점</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="restaurant">
                    <div class="pic">
                        <img src="/resources/img/food1.jpg" class="img-fluid">
                    </div>
                    <div class="restaurant-info">
                        <h4>수제버거</h4>
                        <span>마곡</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="restaurant">
                    <div class="pic">
                        <img src="/resources/img/food2.jpg" class="img-fluid">
                    </div>
                    <div class="restaurant-info">
                        <h4>스테이크</h4>
                        <span>발산</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="restaurant">
                    <div class="pic">
                        <img src="/resources/img/food3.jpg" class="img-fluid">
                    </div>
                    <div class="restaurant-info">
                        <h4>브런치</h4>
                        <span>목동</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="restaurant">
                    <div class="pic">
                        <img src="/resources/img/food4.jpg" class="img-fluid">
                    </div>
                    <div class="restaurant-info">
                        <h4>단호박스프</h4>
                        <span>마곡나루</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="restaurant">
                    <div class="pic">
                        <img src="/resources/img/food5.jpg" class="img-fluid">
                    </div>
                    <div class="restaurant-info">
                        <h4>철판 쉬림프</h4>
                        <span>홍대입구</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="restaurant">
                    <div class="pic">
                        <img src="/resources/img/food6.jpg" class="img-fluid">
                    </div>
                    <div class="restaurant-info">
                        <h4>연어 스테이크</h4>
                        <span>강남</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container" style="padding: 100px;">
    <div class="row">
        <h2 class="text-center mb-lg-5 mb-4">News &amp; Events</h2>
        <div class="col-lg-6 col-md-6 col-12">
            <div class="news-thumb mb-4">
                <div class="a">
                    <a href="/accomlistform">
                        <img src="/resources/img/trip7.jpg" class="img-fluid news-image imge">
                    </a>
                </div>
                <div class="news-text-info news-text-info-large">
                    <h5 class="news-title mt-2">
                        <a href="/accomlistform" class="news-title-link pro">우리끼리 오붓하게 독채풀빌라</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-12">
            <div class="news-thumb mb-4">
                <div class="a">
                    <a href="#">
                        <img src="/resources/img/trip8.jpg" class="img-fluid news-image imge">
                    </a>
                </div>
                <div class="news-text-info news-text-info-large">
                    <h5 class="news-title mt-2">
                        <a href="#" class="news-title-link pro">이달의 국내호텔 특가</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-12">
            <div class="news-thumb mb-lg-0 mb-lg-4 mb-0">
                <div class="a">
                    <a href="#">
                        <img src="/resources/img/trip7.jpg" class="img-fluid news-image imge">
                    </a>
                </div>
                <div class="news-text-info">
                    <h5 class="news-title mt-2">
                        <a href="#" class="news-title-link pro">웨스틴 조선 서울 스위트 단독 패키지</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-12">
            <div class="news-thumb mb-lg-0 mb-lg-4 mb-2">
                <div class="a">
                    <a href="#">
                        <img src="/resources/img/trip8.jpg" class="img-fluid news-image imge">
                    </a>
                </div>
                <div class="news-text-info">
                    <h5 class="news-title mt-2">
                        <a href="#" class="news-title-link pro">시그니엘 호캉스 패키지</a>
                    </h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-12">
            <div class="news-thumb mb-4">
                <div class="a">
                    <a href="#">
                        <img src="/resources/img/trip7.jpg" class="img-fluid news-image imge">
                    </a>
                </div>
                <div class="news-text-info">
                    <h5 class="news-title mt-2">
                        <a href="#" class="news-title-link pro">포인트 적립 이벤트</a>
                    </h5>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
