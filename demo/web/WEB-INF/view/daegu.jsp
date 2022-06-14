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
    <title>daegu</title>

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
        <h1 class="display-4 fw-normal">대구 테마파크</h1>
        <p class="lead fw-normal">팔공산과 비슬산 등 높은 산으로 둘러싸인 분지 지형으로 인해<br> 대한민국에서 가장 기온이 높은 편에 속하는 도시이다.</p>
        <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#daegu">
            Review
        </button>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="modal fade" id="daegu" tabindex="-1" aria-labelledby="daeguLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="border-radius: 1rem;">
            <div class="modal-header">
                <h2 class="modal-title" id="daeguLabel">Review</h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                    <h6 class="reviews-text mb-0 me-3">4.5/5.0</h6>
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
                        <p>이월드!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>앞산!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>수성못!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>강정고령보/디아크!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>서문시장!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>동성로!!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>대구스타디움!!!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>달성공원!!!!!!!!!</p>
                    </i>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">이월드</h2>
            <p class="lead">1995년 3월 28일에 개장하였으며 현재 이랜드그룹에서 운영하고 있다. <br>이월드로 명칭이 변경됐지만, 시민들은 여전히 옛 명칭인
            우방타워랜드를 기억하고 있다.</p><br>
        </div>
        <div>
            <img src="https://w.namu.la/s/0ff33ac5cc7fa7083d4c2e85bd078ceb40c36139cd03a99ad9f64f578841a21e617c9724cfd790166d89e17c77f9f2cd582c3b4161fa51bf610c8b0a8270466e84214a106a171d0a28f99fbb1db8b9ed8462e1ac3ed69779f453155f7f2e4c54e6ea5f96e10cdf7093c71ceb0b66f403" class="palace">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">앞산</h2>
            <p class="lead">대한민국 대구광역시 남쪽에 위치한 해발고도 660.3m의 산이다.<br> 1832년 편찬된 대구읍지에는 성불산으로
            표기돼 있어 성불산이 본래 이름으로 보인다.<br> 산성산, 대덕산, 성북산이 주변에 연속적으로 이어져 있다.</p>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMDZfOTAg%2FMDAxNjQ0MTM4NzQ2MjYz.BZRI4db7DzvP-M4X1IdbYOlwQLyh1BxIfgPwaaHt640g.WCLL0wBVB-0QvaJtND6lvH-PDBo7HrA0yGvq_l2YGF4g.JPEG.kkyoon77%2F20220206%25A3%25DF071717.jpg&type=sc960_832" class="tower">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">수성못</h2>
            <p class="lead">수성유원지는 범물동 용지봉에서 북서부로 뻗어 내린 줄기의 하부에 위치하여<br> 주변의 완만한 산지와 수성못을 끼고 자연의 경관미를 이루고 있다.<br>
            수성못 친환경 생태복원사업이 2013년 11월 마무리 되고 많은 시민들과 관광객이<br> 찾아오면서 대구를 대표하는 도심 속 호수공원으로 자리 매김하였다.</p>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMjZfMjAy%2FMDAxNjE0MzQ3MDEzNzY3.JtGUGICPempQpJi0Y7PsjKGSiKuP9CqjvKkIaZVVhZog.NqYoN-1iPg9DkVQJsTKkAF5khkBm9HW44OaMDCOBnmEg.JPEG.anabella1129%2FKakaoTalk_20210226_213028348_01.jpg%234160x3120" class="town">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">강정고령보/디아크(The ARC)</h2>
            <p class="lead">물과 자연과 문화가 오롯이 담긴 건축예술품, 강과 물, 자연을 모티브로 건축한 디아크는<br> 예술적인 외관으로 사랑 받는다.
            디아크 주변에 있는 수변 공간, 자전거길은 주민의 녹색쉼터로 활용. 지하 1층 전시관은 4대강문화관으로 꾸며진다. 1,2층은 생명의 순환을 테마로 하는 서클영상존,
            디아크의 최고의 힐링장소는 3층 전망대이다.</p>
        </div>
        <div>
            <img src="https://tour.daegu.go.kr/icms/tour/file/getImage.do?atchFileId=FILE_KOATTR_226%20%20%20%20%20&fileSn=1" class="lotte">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">동성로</h2>
            <p class="lead">대구의 대표적인 중심번화가 중의 하나이다. 본래 대구읍성 동쪽의 성곽지였으나<br> 1907년 헐리고 도로가 되면서 현재에 이르렀다.<br>
            2009년에 조성된 국내 최초의  '대중교통전용지구'는 친인간적, 친환경적인 가로로<br> 다양한 상권과 흥미로운 디자인에 의하여 동성로와 더불어 명품가로로 자리매김하고 있다.</p>
        </div>
        <div>
            <img src="https://tour.daegu.go.kr/icms/tour/file/getImage.do?atchFileId=FILE_KOATTR_221%20%20%20%20%20&fileSn=3" class="river">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">서문시장</h2>
            <p class="lead">대구 최대의 상설시장, 야시장도 인기. 조선시대 평양장, 강경장과 함께 전국 3대 장터의<br> 하나로 이름 떨친 전통시장, 건해산물상가, 아진상가 등
            8개 지구로 구성되고,<br> 약 5,522여 개의 점포가 들어서 있다. 주 거래품목인 주단, 모목 등을<br> 비롯해 그릇, 청과, 건어물, 해산물 등 다양한 상품이 거래되는 큰 시장이다.</p>
        </div>
        <div>
            <img src="https://tour.daegu.go.kr/icms/tour/file/getImage.do?atchFileId=FILE_KOATTR_229%20%20%20%20%20&fileSn=3725" class="market">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">대구스타디움</h2>
            <p class="lead">2002년 한일월드컵 대회, 2003 대구하계유니버시아드대회를 성공적으로 개최하였으며 2011년 세계육상선수대회를 유치하였다.
            또한 주변의 수려한 자연환경과 깨끗한 시설로<br> 주변시민들 뿐만 아니라 타지에서도 많은 관광객이 찾아오는 대구의 새로운 명소로<br> 떠오르고 있다.</p>
        </div>
        <div>
            <img src="https://tour.daegu.go.kr/icms/tour/file/getImage.do?atchFileId=FILE_KOATTR_328%20%20%20%20%20&fileSn=3515" class="ddp">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">달성공원</h2>
            <p class="lead">역사의 흔적을 품은 공원, 대구에서 가장 오래된 도심 공원.<br>
            사적 제 62호로 지정. 공원 안에 옛 토성과 지방문화재 자료 제3호인 관풍루가 자리하고 있다. 사슴과 타조, 물개, 호랑이 등을 관람할 수 있는 동물사가 있어 가족여행객에게 인기.<br>
            곳곳에 벤치와 휴식 공간이 많으며 공원 둘레는 한바퀴 도는 오솔길이 조성되어 있어 천천히 산책하며 쉬어가기 좋다.</p>
        </div>
        <div>
            <img src="https://tour.daegu.go.kr/icms/tour/file/getImage.do?atchFileId=FILE_KOATTR_124%20%20%20%20%20&fileSn=3519" class="door">
        </div>
    </div>
</div>

</body>
</html>
