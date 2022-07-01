<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-31
  Time: 오후 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>experience</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>
<%@ include file="../nav.jsp" %>

<div class="bg-video">
    <video class="bg-video__content" autoplay muted loop>
        <source src="/resources/img/video.mp4" type="video/mp4"/>
        <source src="img/video.webm" type="video/webm"/>
        Your browser is not supported!
    </video>
</div>

<section id="title" class="title">
    <div class="container">
        <div class="row">
            <div class="section-title col-6">
                <h2>내가 좋아하는 것에서 가치를 찾아보세요.</h2>
            </div>
            <div class="section-content">
                <b>체험이란?</b>
                <p>체험은 일반적인 투어나 강습이 아닌, 세계 각지의 현지인이 직접 기획하고 진행하는 활동입니다.<br>
                    체험을 호스팅하여 내 도시와 문화, 취미활동, 사회 공헌 활동을 소개해보세요.<br>
                    체험은 전문성, 특별한 기회, 교감 이라는 요건을 만족해야합니다.<br>
                    줌(Zoom)을 이용한 온라인체험, 동물체험, 쿠킹체험, 사회공헌체험, 어드벤처(이틀 이상 진행되는 체험)이 있습니다.</p>
            </div>
        </div>
    </div>
</section>

<section class="black-background padding5080">
    <div>
        <b class="font32">세상을 만나는 특별한 방법</b>
        <div class="font14">현지 전문가와 함께하는 독특한 액티비티를 직접 체험하거나 온라인으로 만나보세요.</div>
    </div>
    <ul class="items third world">
        <a href="#">
            <li>
                <img src="https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/blte7abde74510fa923/6238e80fdf839864f7d0b6b0/Tile_(2).png?crop=100p,87.74p,x0,y12.12p&amp;width=432&amp;height=513&amp;auto=webp"
                     style="border-radius: 20px;">
                <b class="font18">체험 호스트 되기</b>
            </li>
        </a>
        <a href="/online">
            <li>
                <img src="https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/bltbf958631ab6a9671/5dd2ec88fc77845f003a545c/set-up-listing-tile@2x_(1).jpg?crop=99.82p,99.85p,x0,y0&amp;width=432&amp;height=513&amp;auto=webp"
                     style="border-radius: 20px;">
                <b class="font18">온라인 체험 호스팅하기</b>
            </li>
        </a>
        <a href="/pilotOperation">
            <li>
                <img src="https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/bltb2fadf36b8956143/5f5a50763fc7e52e120b649d/Tile_Discovering_Hosting_jpg.jpg?crop=100p,87.76p,x0,y12.23p&amp;width=432&amp;height=513&amp;auto=webp"
                     style="border-radius: 20px;">
                <b class="font18">체험 호스팅하기</b>
            </li>
        </a>
    </ul>
</section>

<section class="BgImage"></section>

<section class="padding5080">
    <div>
        <b class="font32">세상을 만나는 특별한 방법</b>
        <div class="font14">현지 전문가와 함께하는 독특한 액티비티를 직접 체험하거나 온라인으로 만나보세요.</div>
    </div>
    <ul class="items third world">
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/334530d8-2ad6-40e8-8fd2-4ac0835e693a.jpg?im_w=720"
                     style="border-radius: 20px;">
                <b class="font18">온라인 체험</b>
                <div class="font14">집에서 즐기는 랜선 세계 여행</div>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/a464d642-695e-4d2c-aa51-2302de067f45.jpg?im_w=720"
                     style="border-radius: 20px;">
                <b class="font18">체험</b>
                <div class="font14">어디에서든 즐길 수 있는 체험</div>
            </li>
        </a>
        <a href="#">
            <li>
                <img src="https://a0.muscache.com/im/pictures/64ff6bd8-996c-4842-87b2-4c5cb43c337d.jpg?im_w=720"
                     style="border-radius: 20px;">
                <b class="font18">어드벤쳐</b>
                <div class="font14">숙박과 식사가 포함된 며칠 일정의 여행입니다.</div>
            </li>
        </a>
    </ul>
</section>
<br><br>

<section>
    <div class="container">
        <div class="row exper black-background">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">원하는 액티비티를 자유롭게 <br>기획하세요.</h2>
                <p class="lead">다양한 음식을 맛보는 자전거 투어, 야간에 진행하는 야경 촬영, 보트 위에서 맛보는 타파스, (염소와 함께하는)요가.
                    사람들의 흥미를 자극할 독특한 액티비티를 기획해보세요.</p>
            </div>
            <div class="col-md-5 experpic">
                <img src="https://a0.muscache.com/im/pictures/2bdf020b-303c-46a4-bf2c-6c6a8e775bd8.jpg?aki_policy=x_large">
            </div>
        </div>

        <div class="row exper">
            <div class="col-md-7 order-md-2 write">
                <h2 class="featurette-heading">좋아하는 일을 하고<br>수익을 올리세요.</h2>
                <p class="lead">흥미로운 거리 벽화 찾기, 일몰에 즐기는 서핑 등 평소 좋아하는 일로 수입을 올려보세요. 체험 호스팅을 통해 취미를 즐기며 수익을 올릴 수 있습니다.</p>
            </div>
            <div class="col-md-5 order-md-1">
                <img src="https://a0.muscache.com/im/pictures/55b065f5-e6d9-4a0a-8066-9c1850db7660.jpg?aki_policy=x_large">
            </div>
        </div>

        <div class="row exper black-background">
            <div class="col-md-6 write">
                <h2 class="featurette-heading">사회 공헌 활동을 <br>널리 알리세요.</h2>
                <p class="lead">유기견과 함께하는 하이킹, 윤리적 패션에 대한 소개까지. 완전히 새로운 방식으로 사회 공헌 활동에 대해 알리세요.</p>
            </div>
            <div class="col-md-5 experpic">
                <img src="https://a0.muscache.com/im/pictures/d1d720a0-7253-4f89-b9b4-50759c376a9a.jpg?aki_policy=x_large">
            </div>
        </div>
    </div>
</section>

<section class="py-5 text-center container">
    <div class="row py-lg-5">
        <div class="col-lg-6 col-md-8 mx-auto">
            <h2 class="fw-light">어떤 주제도 좋아요.</h2>
            <p class="lead text-muted">요리, 수공예, 카약 타기 등 체험에서 다룰 수 있는 활동은 다양합니다.<br> 제한 없이 원하는 활동을 기획하실 수 있어요.<br> 추천
                카테고리를 살펴보세요.</p>
        </div>
    </div>
</section>

<div class="album py-5 bg-light">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <div class="col">
                <div class="card shadow-lg">
                    <img src="https://a0.muscache.com/im/pictures/36ad251f-02c2-486a-965f-1d473e25e509.jpg?aki_policy=x_large">
                    <div class="card-body">
                        <h3 class="card-title">문화 및 역사</h3>
                        <p class="card-text">지역의 명소에 숨겨진 이야기를<br> 공유하세요.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-lg">
                    <img src="https://a0.muscache.com/im/pictures/eca85a07-8fad-4648-a4a4-b4c9283fdd65.jpg?aki_policy=x_large">
                    <div class="card-body">
                        <h3 class="card-title">식음료</h3>
                        <p class="card-text">식도락 투어, 쿠킹 클래스, 식사 체험 등<br>다양한 체험을 호스팅하세요.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-lg">
                    <img src="https://a0.muscache.com/im/pictures/1ecf2c03-5b86-4af3-a194-c18764eafbb3.jpg?aki_policy=x_large">
                    <div class="card-body">
                        <h3 class="card-title">자연 및 야외 활동</h3>
                        <p class="card-text">자연 속 하이킹, 수상 스포츠, 산악 활동 등<br>다양한 체험을 진행해 보세요.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<section id="host" class="host">
    <div class="section-title">
        <h2>체험 호스트를 위한 가이드</h2>
    </div>
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4">
                <div class="col">
                    <div class="card shadow-lg">
                        <img src="https://images.contentstack.io/v3/assets/bltec2ed8e3c4b1e16d/bltc5b5fba2bdc0a264/getting-paid-optimized.jpg">
                        <div class="card-body">
                            <input type="button" class="btn btn-light card-title" data-bs-toggle="modal"
                                   data-bs-target="#Modal1" value="대금 수령">
                            <div class="modal fade" tabindex="-1" aria-labelledby="Modal1Label" aria-hidden="true"
                                 id="Modal1">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="Modal1Label">체험 관리하기</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            축하합니다! 이제 대금을 수령할 차례입니다. 대금은 언제 어떻게 수령할 수 있을까요?
                                            대금 수령 관련 모든 주요 정보와 원하는 방식으로 대금을 지급받는 방법을 아래 도움말에서 확인해 보세요.
                                            <br><br>
                                            <h3>대금 수령 설정</h3>
                                            호스팅을 처음 시작하려면, 계정에 대금 수령 방법을 설정하셔야 합니다.
                                            이 절차가 완료되기까지 시간이 걸릴 수 있으니, 최대한 빨리 완료해주시기 바랍니다. 대금 수령 통화는 어떻게 선택하시나요?
                                            대금 수령 통화는 대금 수령 방법을 처음으로 추가할 때 선택하셨던 국가와 방법에 따라 결정됩니다. 대금 수령 방법을 추가한 후에는 대금
                                            수령 방법의 통화를 변경할 수 없지만, 언제든지 다른 통화로 신규 대금 수령 방법을 설정할 수 있습니다.
                                            <br><br>
                                            <h3>금액 및 시기</h3>
                                            사이트는 보통 게스트의 체크인 예정 시간을 기준으로 24시간이 지난 후에 호스트에게 대금을 지급합니다.
                                            대금이 실제로 계좌에 입금되기까지 걸리는 시간은 선택하신 대금 수령 방법 및 은행 휴무일에 따라 다릅니다. 또한, 최소 대금 수령액을
                                            설정했거나 장기 숙박을 호스팅하는 경우, 대금 수령이 더 오래 걸리거나 다른 일정이 적용될 수 있습니다.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-lg">
                        <img src="https://images.contentstack.io/v3/assets/bltec2ed8e3c4b1e16d/blt657a7e0ce479dcf1/managing-your-experience-optimized.jpg">
                        <div class="card-body">
                            <input type="button" class="btn btn-light card-title" data-bs-toggle="modal"
                                   data-bs-target="#Modal2" value="체험 관리하기">
                            <div class="modal fade" tabindex="-1" aria-labelledby="Modal2Label" aria-hidden="true"
                                 id="Modal2">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="Modal2Label">체험 관리하기</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            예약과 달력 관리에 도움이 되는 도구와 팁이 궁금하신가요?
                                            좀 더 쉽게 호스팅하실 수 있도록 프라이빗 예약을 호스팅하는 방법과 반복 회차 일정 잡는 방법 등을 배울 수 있는 각종 관련 자료를
                                            취합했으니, 아래에서 확인해보세요.
                                            <br><br>
                                            <h3>체험 페이지와 예약</h3>
                                            체험 페이지로 게스트의 관심을 끄는 가장 좋은 방법은 퀄리티 높은 사진을 촬영하는 것입니다(6장 이상).
                                            게스트가 체험을 예약하면, 호스트에게 게스트 프로필과 연락처가 담긴 이메일 알림이 발송되며, 게스트에게는 모임 장소 및 시간, 준비물이
                                            안내된 확인 이메일이 발송됩니다.
                                            <br><br>
                                            <h3>달력 업데이트하기</h3>
                                            딜력을 최신 상태로 유지해야 게스트가 언제 체험 예약이 가능한지 파악할 수 있습니다.
                                            예상치 못한 상황으로 예약이 없는 체험 회차를 삭제하거나 시간을 변경하는 등 예약 가능 날짜를 변경해야 하는 경우, 사이트의 달력으로
                                            가세요.
                                            달력에서 체험의 여러 회차를 한꺼번에 추가·수정·삭제할 수도 있습니다.
                                            <br><br>
                                            공동 호스트 역할을 그만두려는 경우, 체험 페이지에서 본인을 삭제할 수 있습니다. 그러면 더 이상 해당 체험을 호스팅하거나 관리할 수는
                                            없지만 사이트 계정은 그대로 유지됩니다.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-lg">
                        <img src="https://images.contentstack.io/v3/assets/bltec2ed8e3c4b1e16d/blt4f32d08e271c7ba5/changes-and-cancellations-optimized.jpg">
                        <div class="card-body">
                            <input type="button" class="btn btn-light card-title" data-bs-toggle="modal"
                                   data-bs-target="#Modal3" value="예약 변경 및 취소">
                            <div class="modal fade" id="Modal3" tabindex="-1" aria-labelledby="Modal3Label"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="Modal3Label">예약 변경 및 취소</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            호스트나 게스트가 예약을 취소하거나 변경해야 하는 경우 도와드립니다.
                                            예약을 취소하거나 변경하는 방법을 알려드리고, 예약 변경 시 유의해야 할 점도 설명해드립니다.
                                            <br><br>
                                            <h3>예약 취소 처리</h3>
                                            혹시 여행 계획이 변경되더라도 걱정하지 마세요. 예약을 취소해야 하는 경우, 먼저 사이트 계정에 로그인하세요. 로그인 후 달력으로 가서
                                            해당 회차를 찾은 다음 체험 취소를 선택하세요. 게스트에세는 알림이 전송되고
                                            요금이 전액 환불됩니다. 예약을 취소하면 패널티가 적용되며 취소 수수료 등이 부과될 수 있습니다.
                                            <br><br>
                                            게스트가 24시간 이내에 예약을 취소한 경우(또는 체험 시작 7일 이상 전에 취소한 경우), 환불 처리되며 호스트에게는 대금이 지급되지
                                            않습니다.
                                            <br><br>
                                            <h3>예약 변경하기</h3>
                                            게스트가 친구를 동반하고 싶어 하나요? 이 경우 게스트는 새로 예약을 하거나, '여행' 페이지로 가서 체험 날짜나 시간을 변경하거나,
                                            게스트를 추가하거나 삭제할 수 있습니다.
                                            게스트에게 체험 요금을 환불해야 하나요? 해결 센터 또는 달력으 ㄹ통해 직접 송금하실 수 있습니다.
                                            <br><br>
                                            공동 호스트 역할을 그만두려는 경우, 체험 페이지에서 본인을 삭제할 수 있습니다. 그러면 더 이상 해당 체험을 호스팅하거나 관리할 수는
                                            없지만 사이트 계정은 그대로 유지됩니다.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-lg">
                        <img src="https://images.contentstack.io/v3/assets/bltec2ed8e3c4b1e16d/bltbe0500ef75ea2ee7/how-cohosting-works-optimized.jpg">
                        <div class="card-body">
                            <input type="button" class="btn btn-light card-title" data-bs-toggle="modal"
                                   data-bs-target="#Modal4" value="공동 호스팅 진행 방식">
                            <div class="modal fade" tabindex="-1" aria-labelledby="Modal4Label" aria-hidden="true"
                                 id="Modal4">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="Modal4Label">공동 호스팅 진행 방식</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            체험 호스팅에 다른 사람의 도움을 받을 수 있다는 사실을 알고 계시나요? 체험 운영에 공동 호스트와 보조 호스트의 도움을 받는 방법과
                                            각자의 역할을 알아보고, 공동·보조 호스트가 성공적으로 역할을 수행할 수 있도록 도와주는 방법도 확인해보세요. 호스팅이 한결
                                            수월해집니다.
                                            <br><br>
                                            <h3>공동 호스트의 역할</h3>
                                            대표 호스트는 체험 페이지에 공동·보조 호스트를 포함한 팀을 추가해 체험 운영에 도움을 받을 수 있습니다. 믿을 만한 친구, 파트너 또는
                                            전문 호스팅 팀의 일원이 공동 호스트나 보조 호스트로 참여하여 체험 관리, 문의 응답, 예약이 확정된 게스트와 메세지 주고받기 등에
                                            도움을 줄 수 있습니다.
                                            <br><br>
                                            <h3>공동 호스트 되기</h3>
                                            동료 체험 호스트가 체험을 진행하거나 체험 페이지를 관리하는 데 도움을 주고싶으신가요? 환영합니다! 첫 단계는 사이트 퀄리티 기준에
                                            부합하는지 확인하는 겁니다.
                                            체험을 호스팅하거나 관리하도록 초대받으면, 본인 인증을 위해 신분증을 제출해야 합니다. 그런 다음 대표 호스트가 공동·보조 호스트에게
                                            초대장을 보내게 됩니다.
                                            <br><br>
                                            공동 호스트 역할을 그만두려는 경우, 체험 페이지에서 본인을 삭제할 수 있습니다. 그러면 더 이상 해당 체험을 호스팅하거나 관리할 수는
                                            없지만 사이트 계정은 그대로 유지됩니다.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section id="help" class="help">
    <div class="section-title">
        <h2>모든 과정에서 도와드리겠습니다.</h2>
        <p>호스팅에 유용한 자료와 정보, 호스트와 게스트에 대한 연중무휴 고객 지원 서비스, 체험 홍보 등 다양한 지원을 제공합니다.</p>
    </div>
    <div class="container py-4">
        <div class="p-5 mb-4">
            <div class="container-fluid py-5">
                <div class="parent">
                    <div class="child">
                        <div class="workbox">
                            <div class="items quarter img80 cities">
                                <img src="//a0.muscache.com/airbnb/static/packages/assets/frontend/explore-core/images/icon-uc-alarm.e0a2b02fa7d1e956cd4135847fc0cda1.gif">
                            </div>
                        </div>
                        <span class="font_bold work">해야 할 일</span>
                    </div>
                    <div class="child">
                        <div class="planebox">
                            <div class="items quarter img80 cities">
                                <img src="//a0.muscache.com/airbnb/static/packages/assets/frontend/explore-core/images/icon-uc-calendar.ace59291b2904181320cb34108a24537.gif">
                            </div>
                        </div>
                        <span class="font_bold plane">일정 관리</span>
                    </div>
                    <div class="child">
                        <div class="paybox">
                            <div class="items quarter img80 cities">
                                <img src="//a0.muscache.com/airbnb/static/packages/assets/frontend/explore-core/images/icon-uc-money-saved.0d988c4ec128a1a11fdc5c499940dec8.gif">
                            </div>
                        </div>
                        <span class="font_bold pay">결제</span>
                    </div>
                    <div class="child">
                        <div class="tipbox">
                            <div class="items quarter img80 cities">
                                <img src="//a0.muscache.com/airbnb/static/packages/assets/frontend/explore-core/images/icon-uc-graph.3f8bd411622845e624b9be5ba9631168.gif">
                            </div>
                        </div>
                        <span class="font_bold tip">호스팅 팁</span>
                    </div>
                </div>
                <h1 class="display-5 fw-bold">호스팅에 최적화된 도구</h1>
                <p class="col-md-8 fs-4">체험 현황에 대해 볼 수 있는 알림판, 체험 개선에 대한 피드백, 검색 및 필터링을 통해 전 세계 게스트에게 노출, 간편한 결제 시스템 등
                    다양한 혜택을 누리실 수 있습니다.</p>
            </div>
        </div>

        <div class="row align-items-md-stretch cover">
            <div class="col-md-6">
                <div class="h-100 p-5 text-white bg-dark rounded-3">
                    <h2 style="text-align: center">호스트를 위한</h2>
                    <h1 style="text-align: center; color: deeppink;">커버</h1>
                    <h4>호스트를 위한 에어커버는 체험에도 적용됩니다.</h4>
                    <p>호스트를 위한 에어커버에는 최대 1백만 달러까지 보장되는 체험 책임보험이 포함되어, 에어비앤비 체험 진행 중
                        만일이라도 게스트에게 신체 상해가 발생한 경우 호스트를 보호해줍니다. 에어커버는 모든 예약에 무료로 제공됩니다.</p>
                    <button class="btn btn-outline-light" type="button">자세히보기</button>
                </div>
            </div>
            <div class="col-md-6">
                <div class="h-100 p-5 bg-light border rounded-3">
                    <ul class="items third world">
                        <li>
                            <img src="https://a0.muscache.com/im/pictures/3a775aa8-1242-4343-bd3e-70104b1b9a3c.jpg?aki_policy=x_large">
                        </li>
                        <li>
                            <img src="https://a0.muscache.com/im/pictures/b4c1f176-6cfb-496e-aca2-83e139963502.jpg?aki_policy=x_large">
                        </li>
                        <li>
                            <img src="https://a0.muscache.com/im/pictures/53682240-aa14-4690-9df2-14b521e9c884.jpg?aki_policy=x_large">
                        </li>
                    </ul>
                    <h4>호스트의 성장을 돕는 사이트의 지원</h4>
                    <p>사이트는 주간 뉴스레터, 게시글 및 자료를 통해 호스팅의 전 과정에서 호스트를 지원하고 있습니다.</p>
                    <button class="btn btn-outline-secondary" type="button">자세히보기</button>
                </div>
            </div>
        </div>
    </div>
</section>


<section id="host" class="host">
    <div class="container">
        <div class="section-title">
            <h2>체험 호스트가 되기 위한 절차</h2>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <a href="/experHost" role="button">
                    <div class="box">
                        <span>01</span>
                        <h4>체험 퀄리티 기준 알아보기</h4>
                        <p>체험이 사이트의 기준(전문성, 특별한 기회 및 교감)에 부합하는지 확인하세요.</p><br>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <a href="/experRegistration" role="button">
                    <div class="box">
                        <span>02</span>
                        <h4>체험 페이지 만들기</h4>
                        <p>체험 페이지는 게스트에게 체험에 대한 정보를 소개하는 곳입니다. 전문성을 강조하고 퀄리티 높은 사진을 추가하여 좋은 첫인상을 남기세요.</p>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <a href="/experHosting" role="button">
                    <div class="box">
                        <span>03</span>
                        <h4>체험 호스팅 시작하기</h4>
                        <p>사이트의 퀄리티 기준에 부합하면 호스팅 가능한 날짜를 설정하고 바로 체험을 시작하실 수 있습니다.</p><br>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<section id="host" class="host">
    <div class="section-title">
        <h2>자주 묻는 질문</h2>
    </div>
    <div class="accordion accordion-flush" id="accordionFlushExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                    숙소 호스트만 체험 호스트가 될 수 있나요?
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                 data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">아니요. 숙박 공간을 제공하는 숙소 호스트가 아니라도, 체험을 호스팅하실 수 있습니다.</div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseTwo" aria-expanded="true" aria-controls="flush-collapseTwo">
                    얼마나 자주 호스팅 해야 하나요?
                </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo"
                 data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">얼마나 자주 호스팅할지는 호스트가 직접 정할 수 있습니다. 다양한 날짜와 시간에 호스팅해보고 내게 가장 적합한 일정을 찾아보세요.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseThree" aria-expanded="true" aria-controls="flush-collapseThree">
                    체험 관련 인허가/신고를 해야 하나요?
                </button>
            </h2>
            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree"
                 data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">체험 중 진행되는 활동에 따라 사업 허가가 필요할 수도 있습니다. 특히, 식품, 주류 또는 교통편이 제공되는 체험인 경우, 지역 법규를
                    확인하고 어떠한 허가가 필요한지 확인하세요.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingFour">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseFour" aria-expanded="true" aria-controls="flush-collapseFour">
                    각 체험의 최소 참여 인원은 몇 명인가요?
                </button>
            </h2>
            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour"
                 data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">모든 체험의 최소 인원은 1명입니다.</div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingFive">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseFive" aria-expanded="true" aria-controls="flush-collapseFive">
                    보험이 필요한가요?
                </button>
            </h2>
            <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive"
                 data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">호스트를 위한 에어커버를 통해 체험 책임 보험의 보장을 받으실 수 있습니다. 드물지만 체험 진행 중 게스트에게 신체 상해나 재산 피해가
                    발생한 경우, 체험 책임보험이 호스트에게 적용됩니다.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingSix">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseSix" aria-expanded="true" aria-controls="flush-collapseSix">
                    다른 사람과 함께 호스팅할 수 있나요?
                </button>
            </h2>
            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix"
                 data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">다른 사람과 함께 호스팅하려면 게스트가 알 수 있도록 체험 페이지에 공동 호스트의 이름을 명시해야 합니다. 또한, 공동 호스트도 사이트의
                    프로필 인증 과정을 거쳐야 합니다.
                </div>
            </div>
        </div>
    </div>
</section>


</body>
</html>
