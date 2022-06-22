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
    <title>incheon</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>
<%@ include file="nav.jsp" %>

<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 fw-normal">인천 테마파크</h1>
        <p class="lead fw-normal">서쪽으로 황해를 건너 중국 대륙과 마주하고 있다. 인천항과 인천국제공항을 중심으로 제조업과
            물류 산업이 발달하였으며 2003년 인천광역시경제자유구역청이 개청되어 송도。청라。영종 지구를 관할하다.</p>
        <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#incheon">
            Review
        </button>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="modal fade" id="incheon" tabindex="-1" aria-labelledby="incheonLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="border-radius: 1rem;">
            <div class="modal-header">
                <h2 class="modal-title" id="incheonLabel">Review</h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                    <h6 class="reviews-text mb-0 me-3">4.0/5.0</h6>
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
                        <p>인천차이나타운!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>송월동동화마을!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>월미테마파크!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>인청상륙작선기념관!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>인천대교!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>영종대교!!!!!!!</p>
                    </i>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">인천차이나타운</h2>
            <p class="lead">인천역 앞에 있는 차이나타운이다. 중국 음식점이나 기념품 등을 파는 상점이 많은 편이다.
                매년 9월과 10월엔 각각 인천-중국의날 문화축제와 짜장면 축제가 열린다.
                1883년 인천항 개항 후 1884년에 만들어진 중국(청나라) 조계지에 화교들이 모여들면서 형성되었다.</p>
        </div>
        <div>
            <img src="https://ldb-phinf.pstatic.net/20140407_30/1396855777869zaIeD_JPEG/%C0%CE%C3%B5_%C2%F7%C0%CC%B3%AA%C5%B8%BF%EE_17.JPG?type=m500_500"
                 class="palace">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">송월동동화마을</h2>
            <p class="lead">송월동 동화마을은 인천광역시 중구 송월동에 있는 동화를 주제로 한 마을이다. 원래 인천의 오래된
                달동네였던 곳을 재정비하여 한국 전래동화를 비롯해 세계명작동화에 나오는 주인공들과 배경으로 소재로 꾸며졌다.</p>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20191119_95%2F1574165857543Me2ly_JPEG%2FJTSJWgC-xPv3aAhpgcN2Pdy_.jpg"
                 class="tower">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">월미테마파크</h2>
            <p class="lead">입장료가 없는 월미도의 초대형 놀이체험 테마파크!<br>
                70M 높이 하이퍼샷-드롭부터 월미도의 마스코드 타가디스코, 극강스릴 2층바이킹, 115M 대관람차등 스릴만점
                놀이기구들과 30여가지 어린이 놀이시설까지 온가족이 즐거운 복합 테마파크 입니다.</p>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzExMDZfMTM4%2FMDAxNTA5OTU2MjEwNTY5.ylLT0z2wFLb_j2W4KGGdhQiPJIlFLs9SnVoIO0oS98Ag.LIpJVTPowpwJfgDBQ20mDCix_odLeYsURVPy4Y86IAEg.JPEG.incheontogi%2F1.jpg%23773x515"
                 class="town">
        </div>
    </div>
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">인천상륙작전기념관</h2>
            <p class="lead">6.25 전쟁 때 연합군 상륙작전을 기리기 위하여 세운 기념관으로, 인천광역시 연수구 옥련동에 있다.</p><br><br>
        </div>
        <div>
            <img src="https://ldb-phinf.pstatic.net/20140407_242/1396855326420hOhNL_JPEG/%C0%CE%C3%B5_%C0%CE%C3%B5%BB%F3%B7%FA%C0%DB%C0%FC%B1%E2%B3%E4%B0%FC_12.JPG?type=m500_500"
                 class="lotte">
        </div>
    </div>
</div>

<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">영종대교</h2>
            <p class="lead">영종대교는 2000년대 대한민국 항공 수요에 대비해 영종도와 용유도 일원의 간석지에 건설된 인천국제공항과
                육지를 연결하는 다리이다. 본 다리가 건설된 후 서울에서 인천국제공항까지 45분대에 도달이 가능해졌으며, 아·태 지역의 중추
                공항 기능 담당에도 큰 힘이 됐다.
                영종대교는 다이아몬드형의 주탑을 적용한 세계최조의 3차원 자정식 현수교이다.</p>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMThfMjc2%2FMDAxNjE2MDMxNzUxNzMw.FNrSe3MY-0nJS6ZVcw17LJSVG32YHQzVLi4t-7g7p8og.5Yx-rifnzqkIqUdI5hZwo5wqIwma3HXzH5nmD4QT7hIg.JPEG.cjs7350%2F12_%25B1%25B3%25B7%25AE%25BC%25D2%25B0%25B3_%25BF%25B5%25C1%25BE%25B4%25EB%25B1%25B3_0.jpg&type=sc960_832"
                 class="river">
        </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">인천대교</h2>
            <p class="lead">인천대교는 우리나라에서 가장 긴 다리로 '바다 위의 하이웨이'라는 별명을 지니고 있다. 또한 IMF 구제 금융사태가 일어난
                어려운 시기에 외자 유치를 이끌어내 민간 투자 사업으로 건설한 교량으로, 총 26조 원의 생산 유발액을 창출하기도 했다.</p><br>
        </div>
        <div>
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMDZfMjQ1%2FMDAxNjA0NjM2NDE2MzAy.TJaxOktUXAb6h_PdD45D9TfEfvqhX11_owu-7ht5I04g.gWVJ8b7yH_emrbPIOGDTAaJZH1P9o2dcJ_qX7duL5P4g.JPEG.rlafogns2%2F20201106_122439.jpg&type=sc960_832"
                 class="market">
        </div>
    </div>
</div>

</body>
</html>
