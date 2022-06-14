<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-06-10
  Time: 오후 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>experRegistration</title>

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

<main class="container">
    <div class="p-4 p-md-5 mb-4 rounded bg-light advantage">
        <div class="px-0">
            <h1 class="display-4">체험 등록 절차 이해하기</h1>
            <p class="lead my-3">훌륭한 체험을 등록하기 위한 단계별 가이드를<br> 확인하세요.</p>
        </div>
    </div>

    <div class="row mb-2">
        <div class="col">
            <div class="row overflow-hidden flex-md-row mb-4 h-md-400 position-relative">
                <img class="_9ofhsl" aria-hidden="true" alt="멕시코시티의 호스트 두 명이 나란히 선 모습으로, 한 명이 다른 한 명에게 기대어 있습니다."
                     decoding="async" elementtiming="LCP-target"
                     src="https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/blt63dc7b9ab9f5f8e6/6127e07e6768907ea9766fd3/Understanding_the_listing_process.jpg?crop=16:9&amp;height=900&amp;width=1600"
                     data-original-uri="https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/blt63dc7b9ab9f5f8e6/6127e07e6768907ea9766fd3/Understanding_the_listing_process.jpg?crop=16:9&amp;height=900&amp;width=1600"
                     style="object-fit: cover; vertical-align: bottom;">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8">
            <article class="blog-post">
                <p>체험 호스팅에 관심이 있으며 체험 등록 절차에 대해 궁금하신가요?<br>
                    이 게시글에서 체험 등록 절차를 확인하고 체험 등록에
                    <br>도움이 되는 자료도 살펴보세요.</p>
            </article>

            <article class="blog-post">
                <h2>성공적인 체험을 위한 자료</h2>
                <p>체험을 등록하기 전에 사이트 체험에 적용되는 기준과 요건을 충분히<br>
                    숙지하셔야 합니다. 아래 준비된 세 가지 자료를 통해 사이트 체험만의<br>
                    특별한 점을 이해하고 체험 아이디어 제출 시 내 체험의 장점을 잘 보여줄 수<br>
                    있는 방법을 확인해보세요.</p>
            </article>

            <article class="blog-post">
                <h2>체험 등록 전 확인할 사항</h2>
                <p>새로운 체험을 등록할 준비가 되셨나요? 체험 페이지를 작성하기 전에 아래<br>
                    사항을 모두 준비하세요.</p>
                <br>

                <h3>체험 준비 체크리스트</h3>
                <p>체험 등록 시 고려할 사항 및 제출할 정보는 다음과 같습니다.</p>
                <ul style="list-style-type:circle;">
                    <li>체험 이름</li>
                    <li>체험에서 게스트와 진행할 활동에 대한 설명</li>
                    <li>체험 진행 장소</li>
                    <li>게스트에게 제공되는 물품과 게스트가 직접 준비해야 하는<br>
                        물품에 대한 자세한 설명
                    </li>
                    <li>퀄리티 높은 사진 최소 5장</li>
                    <li>온라인 체험의 경우 짧은 분량의 시연 동영상</li>
                    <li>게스트 최저 연령 고려</li>
                    <li>체험 활동의 체력적 강도 및 참여를 위해 필요한 기술 고려</li>
                    <li>그룹당 최대 인원(대부분 10명 미만)설정</li>
                    <li>체험 시작 시간 및 소요 시간(대부분 3시간 미만)설정</li>
                    <li>게스트 1인당 요금 정하기</li>
                </ul>
                <p>미리 고려하거나 준비해야 하는 사항이 많지만, 걱정하지 마세요.<br>
                    단계별로 안내에 다라 진행하시면 됩니다.</p>
            </article>

            <article class="blog-post">
                <h2>체험 페이지 만들기</h2>
                <br>

                <h2>1. 아이디어 제출</h2>
                <p>먼저 온라인 또는 오프라인 체험 중 선택해야 합니다.</p>
                <p>그다음으로 체험이 진행될 도시와 체험 주제를 알려주세요.</p>
                <p>이 단계에서 체험 진행 언어를 설정하라는 안내가 표시됩니다. 체험 호스트는<br>
                    여기에서 선택한 언어로 읽고, 쓰고, 말할 수 있어야 합니다. 외국어를<br>
                    구사한다면 언어 설정 시 또는 향후 언제든 체험 페이지에 추가하실 수 <br>
                    있습니다.</p>
                <p>현재 온라인 체험의 경우, 영어나 프랑스어로 진행되는 체험만 검토해드리고<br>
                    있습니다. 따라서 영어 또는 프랑스어로 온라인 체험 시연 동영상을<br>
                    제출해주시기 바랍니다.</p>
                <br>

                <h2>2. 체험 요건 확인</h2>
                <p>'사이트가 찾고 있는 체험' 섹션에는 사이트가 체험을 검토할 때<br>
                    고려하는 3가지 퀄리티 기준이 안내되어 있습니다. 해당 기준을 숙지하여<br>
                    체험 체이지 작성시 잊지 말고 지켜주세요.</p>
                <br>

                <h2>3. 체험 페이지 작성하기</h2>
                <p>체험의 특별한 점을 설명할 수 있는 기회입니다. 체험 페이지의 모든 섹션을<br>
                    신중하고 자세하게 작성하시기 바랍니다. 아래에서 섹션별 작성 방법을<br>
                    확인해보세요.</p>
            </article>

            <article class="blog-post">
                <h3>'프로그램' 섹션:</h3>
                <p>게스트의 기대치를 설정하고, 체험 진행 일정을 명확하게 안내하고, 체험중<br>
                    진행할 액티비티에 대해 흥미로운 설명을 곁들일 수 있는 공간입니다. 이<br>
                    섹션을 잘 작성해야 게스트의 예약을 유도할 수 있습니다!</p>

                <p>체험이 사이트의 승인을 받으려면, 체험에서 진행할 활동을 처음부터<br>
                    끝까지 순서에 맞게 명확히 설명해야 합니다. 체험 일정이 명확하면 게스트의<br>
                    기대치를 적절히 설정할 수 있으므로 게스트의 전반적인 만족도가 향상됩니다.</p>

                <p>프로그램 섹션은 2~4단락 길이로 작성하는 것이 적절합니다. 섹션 첫<br>
                    부분에서 체험 하이라이트를 간략하게 요약한 문구로 흥미를 유발한 다음,<br>
                    체험에서 진행할 활동에 관해 자세히 설명하는 것이 좋습니다. 첫 두어<br>
                    문장을 훑어본 후 체험에 대해 더 알아볼지 판단하는 방문자의 관심을 끄는데<br>
                    특히 효과적인 전략이죠.</p>

                <h3>'호스트 소개'섹션:</h3>
                <p>'호스트 소개'섹션은 호스트가 가진 이력이나 자격, 열정과 역량을 소개할 수<br>
                    있는 기회입니다. 학력이나 경력, 보유 기술。지식。자격증, 이수교육, 인생경험 등<br>
                    호스트 자신에 대한 내용을 소개하세요. 앞으로의 계획이나 운영중인 비즈니스에 대한 내용은<br>
                    포함하지 않는게 좋습니다.</p>
                <br>

                <h3>'게스트 준비물'섹션:</h3>
                <p>체험에 참여하는 게스트가 준비해야 하는 물품이 있다면, 여기에서<br>
                    안내하세요. 최대한 자세하게 작성하고, 각 물품을 따로 입력해주세요.<br>
                    준비물은 체험을 예약한 게스트가 잊지 않고 지참하도록 이메일로<br>
                    안내됩니다.</p>

                <h3>'체험에 참여할 수 있는 게스트의 조건'섹션:</h3>
                <p>체험 참여에 엄격한 나이 제한, 필요한 기술 또는 자격증이 있다면 이 섹션에<br>
                    명시하세요. 체험에 참여하는 게스트가 안전하게 액티비티를 즐길 수 있도록<br>
                    최저 연령, 필요한 기술 및 활동 수준, 접근성 편의 제공 여부를 명시해야 합니다.</p>
                <br>

                <h3>체험 이름 정하기:</h3>
                <p>위 섹션을 모두 작성하고 나면 체험 이름을 정하라는 안내가 표시됩니다.<br>
                    간결하고, 체험 활동을 잘 표현하며, 흥미를 유발하는 제목을 작성하세요.<br>
                    체험 진행 장소에 대해 언급하는 것도 좋습니다.</p>
                <br>

                <h3>퀄리티 높은 사진 업로드:</h3>
                <p>마지막으로, 게스트에게 체험을 생생히 보여줄 수 있도록 퀄리티 높은 사진을<br>
                    7장 이상 추가하세요. 추가된 사진은 사이트 기준에 부합하는지 검토를 거칩니다.</p>
            </article>

            <article class="blog-post">
                <h2>체험 설정</h2>
                <p>체험별로 설정해야 하는 기본 사항은 다음과 같습니다.</p>
                <ul>
                    <li>체험 회차당 최대 인원수</li>
                    <li>체험에 소요되는 시간</li>
                    <li>요금</li>
                    <li>프라이빗 예약 허용 여부</li>
                    <li>예약 마감 시한</li>
                </ul>
                <p>여기에 입력하는 정보는 게스트에게 공개되므로 정확하게 작성하셔야 합니다.</p>
            </article>
        </div>

        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <div class="p-4 mb-3 bg-light rounded">
                    <i class="bi bi-stars">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-stars" viewBox="0 0 16 16">
                            <path d="M7.657 6.247c.11-.33.576-.33.686 0l.645 1.937a2.89 2.89 0 0 0 1.829 1.828l1.936.645c.33.11.33.576 0 .686l-1.937.645a2.89 2.89 0 0 0-1.828 1.829l-.645 1.936a.361.361 0 0 1-.686 0l-.645-1.937a2.89 2.89 0 0 0-1.828-1.828l-1.937-.645a.361.361 0 0 1 0-.686l1.937-.645a2.89 2.89 0 0 0 1.828-1.828l.645-1.937zM3.794 1.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387A1.734 1.734 0 0 0 4.593 5.69l-.387 1.162a.217.217 0 0 1-.412 0L3.407 5.69A1.734 1.734 0 0 0 2.31 4.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387A1.734 1.734 0 0 0 3.407 2.31l.387-1.162zM10.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732L9.1 2.137a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L10.863.1z"/>
                        </svg>
                    </i>
                    <h4 style="margin-left: 20px;">하이라이트</h4>
                    <div class="p-4 hightlight">
                        <ul>
                            <li>체험이 갖춰야 할 3가지 퀄리티 기준을 확인하세요.</li>
                            <li>체험에 적용되는 기준과 요건을 읽어보세요.</li>
                            <li>체험 준비 체크리스트를<br> 확인하세요.</li>
                            <li>우수한 품질의 사진을 5장 이상 올리세요.</li>
                            <li>체험 페이지 중에서 프로그램과 호스트 소개 섹션을 특히 상세히 작성하세요.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
