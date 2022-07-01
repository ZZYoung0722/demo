<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-06-09
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pilotOperation</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>

<%@ include file="../nav.jsp" %>

<main class="container">
    <div class="p-4 p-md-5 mb-4 rounded bg-light advantage">
        <div class="col-md-6 px-0">
            <h1 class="display-4">신규 등록한 오프라인 체험 시범 운영해보기</h1>
            <p class="lead my-3">친구들을 대상으로 연습 삼아 체험을 미리 진행해보세요.</p>
        </div>
    </div>

    <div class="row mb-2">
        <div class="col">
            <div class="row overflow-hidden flex-md-row mb-4 h-md-400 position-relative">
                <img src="https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/blt7352513a54316188/60b7b24dcda43e2520907c56/opo_se-167383_02_27_r1.png?crop=16:9&amp;height=900&amp;width=1600"
                     style="object-fit: cover; vertical-align: bottom;">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8">
            <article class="blog-post">
                <p>첫 체험 호스팅을 앞두고 긴장되시나요? 그 심정, 충분히 이해합니다. 체험을<br>
                    처음 시작하는 많은 호스트가 긴장하니까요. 가족이나 친구들을 대상으로<br>
                    새로 호스팅할 체험을 미리 연습하면 긴장을 풀고 실전에서 성공적으로<br>
                    호스팅하는 데 도움이 됩니다. 믿을 만한 사람들을 모아서 체험을 연습 삼아<br>
                    진행해보세요.</p>
                <p>이 체크리스트는 첫 번째 체험을 시범 진행할 때 준비해야 할 사항을 담고<br>
                    있습니다.</p>
            </article>

            <article class="blog-post">
                <h2>1~2일 전</h2>
                <ul style="list-style-type:square;">
                    <li>게스트에게 알림 메세지를 보내 구체적인 모임 장소 및 시간, 비상 상황<br>
                        발생 시 호스트에게 연락하는 방법을 알려주세요.
                    </li>
                    <li>체험 당일의 날씨를 확인하세요.</li>
                    <li>체험 진행 장소도 미리 확인하세요.</li>
                    <li>대략적인 시간대를 포함한 진행 일정을 작성하세요.</li>
                    <li>필요한 물품, 재료, 장비 목록을 작성하세요.</li>
                    <li>게스트 목록을 살펴보면서 게스트 특성에 맞취 체험을 어떻게 진행하면<br>
                        좋을지 고민해보세요.
                    </li>
                </ul>
            </article>

            <article class="blog-post">
                <h2>체험 시범 운영 당일</h2>
                <ul style="list-style-type:square;">
                    <li>장소를 깔끔하게 정리하고 체험 진행에 필요한 준비를 하세요.</li>
                    <li>게스트가 일찍 도착하는 상황에 대비하세요.</li>
                    <li>필요한 재료/물품을 준비하세요.</li>
                    <li>체험 진행 일정과 말할 내용을 요약해 담은 카드를 준비하세요.</li>
                    <li>게스트가 도착하기 전에 마음을 가다듬는 시간을 가지세요. 심호흡을 통해<br>
                        정신을 집중하고, 체험을 호스팅하게 되어 설레는 마음을 다시 떠올려보세요.
                    </li>
                </ul>
            </article>

            <article class="blog-post">
                <h2>첫 게스트와 대화하기</h2>
                <ul style="list-style-type:square;">
                    <li>게스트 한 명씩 이름을 부르며 미소로 맞아주세요.</li>
                    <li>각 게스트에게 자기소개를 부탁하세요.</li>
                    <li>호스트로서 본인의 이야기를 간략하게 들려주세요.</li>
                    <li>체험 진행 일정과 세부 사항을 전달해 기대치를 명확히 설정하세요.<br>
                        호스팅이 처음이므로 부족한 부분이 있더라도 너그럽게 봐달라고 미리<br>
                        양해를 구하고, 솔직한 피드백을 달라고 요청하세요.
                    </li>
                    <li>사진을 찍으세요! SNS 계정과 체험 페이지에 올릴 수 있도록 체험 도중에<br>
                        호스트와 게스트의 모습을 진솔하게 담은 사진을 촬영하세요. 체험 페이지에<br>
                        적합한 사진을 선택하는 방법을 자세히 알아보세요.
                    </li>
                    <li>체험을 마무리하면서, 체험에서 가장 좋았던 순간과 개선이 필요한 부분이<br>
                        무엇인지 게스트에게 물어보세요.
                    </li>
                </ul>
            </article>
            <article class="blog-post">
                <p>가장 중요한 것은 체험 호스팅을 즐기는 것입니다. 처음이라는 순간이 주는<br>
                    설렘과 긴장을 즐기세요. 이 체험은 호스트와 게스트 모두에게 새로운 경험일<br>
                    것입니다. 첫 체험은 무핞나 가능성을 품고 있으므로, 이 마법 같은 순간에<br>
                    온전히 몸을 맡기세요.</p>
            </article>
        </div>

        <div class="col-md-4">
            <div class="position-sticky" style="top: 5rem;">
                <div class="p-4 mb-3 bg-light rounded">
                    <h4 style="margin-left: 20px;">하이라이트</h4>
                    <div class="p-4 hightlight">
                        <ul>
                            <li>연습 삼아 체험을 진행해보면<br> 실전에서 큰 도움이 됩니다.</li>
                            <li>게스트에게 체험에서 가장 좋았던<br> 순간을 공유해달라고 요청해보세요.</li>
                            <li>건설적인 비판을 요청하고, 피드백을<br> 바탕으로 체험을 더욱 개선하세요.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
