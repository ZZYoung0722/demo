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
    <title>busan</title>

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
        <h1 class="display-4 fw-normal">부산 테마파크</h1>
        <p class="lead fw-normal">대한민국 제2의 도시이자, 대한민국 최초의 직할시。광역시이고 국내 최대국제무역항이 있는 제1의 항구도시, 경상권 최대도시,제1의 해양교통과 제2의 항공교통
            김헤국제공항 타이틀 등을 보유한 도시이기도 하다.</p>
        <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#busan">
            Review
        </button>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="modal fade" id="busan" tabindex="-1" aria-labelledby="busanLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="border-radius: 1rem;">
            <div class="modal-header">
                <h2 class="modal-title" id="busanLabel">Review</h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                    <h6 class="reviews-text mb-0 me-3">3.0/5.0</h6>
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
                        <i class="bi bi-star" style="color: gold">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-star" viewBox="0 0 16 16">
                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
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
                        <p>송도용궁구름다리!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>해운대해수욕장!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>감천문화마을!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>태종대!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>오륙도!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>해동용궁사!!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>범어사!!!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>깡통시장!!!!!!!!!</p>
                    </i>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">송도용궁구름다리</h2>
            <p class="lead">송도해수욕장 동쪽 송림공원에서 거북섬을 연결했던 추억 속 "송도구름다리"가 암남공원에서 동섬을 잇는 현대판 "송도용궁구름다리"로 재탄생했다.</p>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20200717114921495_oen" class="palace">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">해운대해수욕장</h2>
            <p class="lead">대한민국 부산광역시 해운대구 중동과 우동에 걸쳐서 위치한 해수욕장이다.</p><br>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191229153530528_ttiel" class="tower">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">감천문화마을</h2>
            <p class="lead">한국전쟁 당시 감천마을까지 오게 된 피란민들이 머물 곳이 없어 산비탈을 개간한 것이 그 시작이었다.
                2009년 마을미술프로젝트에 선정되면서 학생과 작가, 주민들이 합심해 마을을 꾸몄고, 이후 부산의 대표 관광명소로 거듭나게 되었다.</p>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191229142305192_oen" class="town">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">태종대</h2>
            <p class="lead">초록으로 우거진 싱그러운 숲길을 거닐며 푸른 바다를 한눈에 바라볼 수 있는곳.
            오랜 세월 파도에 깎여 각양각색의 신비를 가지게 된 바위해안이 그 수려함을 자랑하는 곳.
            태종대는 신라의 태종무열왕이 이곳의 경치에 반해 활쏘기를 즐기며 쉬어갔다 하여 유래된 이름이라 한다.</p>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191222180842708_wufrotr" class="lotte">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">오륙도</h2>
            <p class="lead">부산에 속한 다양한 섬들 가운데서도 아름답기로 손꼽히는 오륙도는 남구 용호동에 속한 바위섬이다.
            8천만년 전, 화산활동으로 만들어진 암석이라는 지질학적 가치를 인정받아 부산국가지질공원으로 지정되었다.
            더불어 보호대상 해양생물이 살고 있는 해양보호구역이자 국가지정문화재이기도 하다.</p>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191225164924070_wufrotr" class="river">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">해동용궁사</h2>
            <p class="lead">부산 기장의 시랑리 해안에 위치한 해동용궁사는 정암화상(晸庵和尙)이 바닷가에서 용을 타고<br>
                승천하는 관세음보살을 꿈에 보았다는 이야기에서 이름이 유래되었다.</p><br><br>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191222190831105_oen" class="market">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">범어사</h2>
            <p class="lead">부산 금정구 범어사는 해인사. 통도사와 함께 영남의 3대 사찰로 꼽힌다.<br>
            신라 문무왕 때 건축됏으며 역사적으로도 많은 고승을 배출한 수행사찰로 유명하다.</p>
        </div>
        <div>
            <img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191230190106794_oen" class="ddp">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">깡통시장</h2>
            <p class="lead">국제시장, 자갈치시장과 함께 부산을 대표하는 시장 중 하나이다.</p><br>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20170228_77%2F1488249921205G9x7H_JPEG%2F186178517539663_0.jpeg"
                 class="door">
        </div>
    </div>
</div>

</body>
</html>
