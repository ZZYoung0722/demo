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
    <title>gyeongju</title>

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
        <h1 class="display-4 fw-normal">경주 테마파크</h1>
        <p class="lead fw-normal">경주에는 사찰, 유적, 석탑 등 많은 신라시대 문화재 뿐 만 아니라 경주 양동마을 등
            조선시대 양반 마을이 보존되어 있으며, 불국사, 석굴암과 남산, 월성, 대릉원, 황룡사, 산성 등 곳의
            경주역사유적지구, 그리고 경주 양동마을이 유네스코 세계문화유산으로 지정되었다.</p>
        <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#gyeongju">
            Review
        </button>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<div class="modal fade" id="gyeongju" tabindex="-1" aria-labelledby="gyeongjuLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="border-radius: 1rem;">
            <div class="modal-header">
                <h2 class="modal-title" id="gyeongjuLabel">Review</h2>
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
                        <p>월정교!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>동궁과월지!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>불국사!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>석굴암!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>건천편백나무숲!!!!!!</p>
                    </i>
                </div>
                <div class="writer">
                    <h3>이름</h3>
                    <i>
                        <p>첨성대!!!!!!!</p>
                    </i>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row align-items-md-stretch">
    <div class="col-md-6">
        <div class="h-100 p-5 text-white bg-dark rounded-3">
            <h2>월정교</h2>
            <p class="lead">경주 월성과 서라벌의 남쪽을 잇는 관문 역할을 했던 월정교이다. 월성 남쪽의 남천 위에 놓인
                석축 목조 교량이 멋스러운 자태를 선사한다. 월정교는 삼국사기에서 그 기록을 찾을 수 있는 천년의 다리이다.
                "경덕왕 19년, 궁궐 남쪽 문천에 월정교, 춘양교 두 다리를 놓았다."는 기록이 있다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#lego">월정교
            </button>
            <div class="modal fade" id="lego" tabindex="-1" aria-labelledby="legoLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-black" id="legoLabel">월정교</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                                 src="https://www.gyeongju.go.kr/design/tour2019/img/sub/tMonth_2022/220602_7.jpg">
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
            <h2>동궁과월지</h2>
            <p class="lead">경주야경 제1의 명소라는 타이틀이 아깝지 않은 동궁과월지는 '안압지'라는 이름이 더 익숙할 수도 있다.
                조선시대 폐허가 된 이곳에서 기러기와 오리 무리가 있는 연못이라 하여 '안압지'라 불렀는데,
                원래 이곳은 신라시대 왕자들이 기거하던 별궁이 있던 자리다. 그래서 2011년 '동궁과월지'라는 제 이름을 찾았다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#seorak">
                동궁과월지
            </button>
            <div class="modal fade" id="seorak" tabindex="-1" aria-labelledby="seorakLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="seorakLabel">동궁과월지</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                                 src="https://www.gyeongju.go.kr/upload/content/thumb/20200317/A9E0A9F412B84EC68D1893C36D01E942.jpg">
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
<br>
<div class="row align-items-md-stretch">
    <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
            <h2>불국사</h2>
            <p class="lead">불국사는 통일신라 경덕왕10년(751) 김대성의 발원에 의해 창건된 사찰로, 과거。현재。미래의 부처가 사는 정토,
                즉 이상향을 구현하고자 했던 신라인들의 정신세계가 잘 드러나 있는 곳이다. 삼국유사』에는 김대성이 전생의 부모를 위해서
                석굴암을, 현생의 부모를 위해서 불국사를 지었다고 전해진다. 그러나 그가 목숨을 다할 때까지 짓지 못하여 그 후 나라에서
                완성하여 나라의 복을 비는 절로 삼게 되었다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#pasture">
                불국사
            </button>
            <div class="modal fade" id="pasture" tabindex="-1" aria-labelledby="pastureLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="pastureLabel">불국사</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                                 src="https://upload.wikimedia.org/wikipedia/commons/3/32/%EA%B2%BD%EC%A3%BC_%EB%B6%88%EA%B5%AD%EC%82%AC.jpg">
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
            <h2>석굴암</h2>
            <p class="lead">석굴암은 신라 경덕왕 10년(751)에 당시 대상이었던 김대성이 창건을 시작하여 혜공왕 10년(774)에 완성하였으며,
                건립 당시에는 석불사라고 불렀다. 경덕왕은 신라 중기의 임금으로 그의 재위기간(742~765) 동안 신라의 불교예술이 전성기를 이루게 되는데,
                석굴암 외에도 불국사, 다보탑, 삼층석탑, 황룡사종 등 많은 문화재들이 이때 만들어졌다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#island">
                석굴암
            </button>
            <div class="modal fade" id="island" tabindex="-1" aria-labelledby="islandLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-black" id="islandLabel">석굴암</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                                 src="https://www.heritage.go.kr/unisearch/images/national_treasure/thumb/2021042208550900.jpg">
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
<br>
<div class="row align-items-md-stretch">
    <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
            <h2>건천 편백나무숲</h2>
            <p class="lead">경주 건천으로 가면 피톤치드 듬뿍 안아올 수 있는 힐링 숲길이 있다. 송선리 단석산 자락에 자리한 '건천 편백나무 숲내음길'이다.
                시원스레 줄기 뻗은 편백나무가 빽빽이 들어서 있다. 500여 미터의 산책로에 나무 데크가 설치되어 있고, 정자도 2곳 마련되어 머물기 좋다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#rock">
                편백나무숲
            </button>
            <div class="modal fade" id="rock" tabindex="-1" aria-labelledby="rockLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="rockLabel">편백나무숲</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                                 src="https://www.gyeongju.go.kr/design/tour2019/img/sub/pick1_img1-2.jpg">
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
            <h2>첨성대</h2>
            <p class="lead">신라의 밤, 관측자들은 첨성대 중앙에 난 창문에 사다리를 걸고 첨성대로 올라갔다. 태양, 달, 별의 움직임을 살펴 농사일을 운용하는데 활용하고,
                나라의 길흉을 점쳤다. 동양에서 가장 오래된 천문대 '첨성대'가 월성 앞 평지에 자리하고 있다.
                지금처럼 가로등, 상가의 불빛이 전혀 없었을 터이니 탁 트인 공간, 칠흑 같은 어둠 속에서 별 보기 최적의 장소였을 듯하다.
                첨성대는 몸소 하늘의 움직임을 담고 있다. 위는 둥글고 아래는 네모진 첨성대의 모양은 하늘과 땅을 뜻한다.
                첨성대를 구성하는 365개 내외의 돌은 1년의 날수를 상징하고, 돌단과 꼭대기 정자석까지 총 29단과30단이 되는 것은 음력 한달의 날수를 뜻한다.
                가운데 창문을 기준으로 위쪽12단과 아래쪽12단은 1년 12달, 24절기를 상징한다. 천 오백년 간 한 자리를 지키며 신라의 역사를 새긴 첨성대에서, 오늘 우리의 역사를 담는다.</p>
            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#templestay">
                첨성대
            </button>
            <div class="modal fade" id="templestay" tabindex="-1" aria-labelledby="templestayLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-black" id="templestayLabel">첨성대</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img class="_91slf2a" style="object-fit:cover" aria-hidden="true"
                                 src="http://www.k-heritage.tv/jnrepo/mig/upload/itm/contents/10965/%EC%B2%A8%EC%84%B1%EB%8C%80_MG_9960%20(2).jpg">
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
