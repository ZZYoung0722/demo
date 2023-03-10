<%--
  Created by IntelliJ IDEA.
  User: nCloud
  Date: 2022-05-13
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>accomList</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body>

<%@ include file="../nav.jsp" %>

<div class="input-group mb-3" id="search" style="width: 500px; margin-top: 80px;">
    <input id="keyword" type="search" class="form-control" placeholder="Search" aria-describedby="button-addon2">
    <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="searchClick()">Search</button>
    <button class="btn btn-outline-secondary" id="listBtn">목록</button>
</div>

<div>
    <div class="list" style=" height: 85.5%; overflow-x: hidden;">
        <%--<div class="container">
            <div class="row">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>호텔명</th>
                        <th>호텔주소</th>
                        <th>호텔정보</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${list}">
                    <tr>
                    <td>${list.accomName}</td>
                    <td>${list.accomLocation}</td>
                    <td>${list.accomInfo}</td>
                    </tr>
                    <tr>
                    <td>${list.accomName}</td>
                    <td>${list.accomLocation}</td>
                    <td>${list.accomInfo}</td>
                    </tr>
                    <tr>
                    <td>${list.accomName}</td>
                    <td>${list.accomLocation}</td>
                    <td>${list.accomInfo}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>--%>

        <div class="row">
            <%--<div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <img src="/resources/img/accom1.jpg" class="card-img-top">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        &lt;%&ndash;<a href="#" class="btn btn-primary">Go somewhere</a>&ndash;%&gt;
                    </div>
                </div>
            </div>--%>
        </div>
    </div>
</div>

<%--<div id="map"></div>--%>

<div>
    <div id="container">
        <div id="mapWrapper">
            <div id="map"></div>
            <div id="roadviewControl" onclick="setRoadviewRoad()"></div>
        </div>
        <div id="rvWrapper">
            <div id="roadview"></div>
            <div id="rvClose" title="로드뷰닫기" onclick="closeRoadview()">
                <span class="img"></span>
            </div>
        </div>
    </div>
    <div class="collapse" id="list" style="display: none">
        <div id="menu_wrap" class="bg_white">
            <hr>
            <ul id="placesList"></ul>
            <div id="pagination"></div>
        </div>
    </div>
</div>


<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71e33e6909a61dbb04de7d82451c92f&libraries=services,clusterer,drawing"></script>

<script>
    $(function () {
        $("#listBtn").click(function () {
            $('#list').toggle();
        });
    });

    //키워드 목록 마커 담을 배열
    var markers = [];

    var overlayList = [];

    //로드뷰
    var overlayOn = false,
        container = document.getElementById('container'),
        mapWrapper = document.getElementById('mapWrapper'),
        mapContainer = document.getElementById('map'),
        rvContainer = document.getElementById('roadview');

    var mapCenter = new kakao.maps.LatLng(37.5597, 126.8309),
        mapOption = {
            center: mapCenter,
            level: 13,
            mapTypeId: kakao.maps.MapTypeId.ROADMAP
        };

    // 지도를 생성한다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    //마커 클러스터러
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map,
        averageCenter: true,
        mainLevel: 10,
        /* calculator: [5, 10],
         texts: getTexts,
         styles: [
             {
                 width: '40px', height: '40px',
                 background: 'orange',
                 borderRadius: '20px',
                 color: '#000',
                 textAlign: 'center',
                 fontWeight: 'bold',
                 lineHeight: '41px'
             },
             {
                 width: '50px', height: '50px',
                 background: 'yellow',
                 borderRadius: '25px',
                 color: '#000',
                 textAlign: 'center',
                 fontWeight: 'bold',
                 lineHeight: '51px'
             },
             {
                 width: '60px', height: '60px',
                 background: 'green',
                 borderRadius: '30px',
                 color: '#000',
                 textAlign: 'center',
                 fontWeight: 'bold',
                 lineHeight: '61px'
             }
         ]*/

    });

    /*// 클러스터 내부에 삽입할 문자열 생성 함수입니다
    function getTexts(count) {

        // 한 클러스터 객체가 포함하는 마커의 개수에 따라 다른 텍스트 값을 표시합니다
        if (count < 5) {
            return '주';
        } else if (count < 10) {
            return '노';
        } else {
            return '초';
        }
    }*/

    // 로드뷰 객체를 생성합니다
    var rv = new kakao.maps.Roadview(rvContainer);

    // 좌표로부터 로드뷰 파노라마 ID를 가져올 로드뷰 클라이언트 객체를 생성합니다
    var rvClient = new kakao.maps.RoadviewClient();

    // 로드뷰에 좌표가 바뀌었을 때 발생하는 이벤트를 등록합니다
    kakao.maps.event.addListener(rv, 'position_changed', function () {

        // 현재 로드뷰의 위치 좌표를 얻어옵니다
        var rvPosition = rv.getPosition();

        // 지도의 중심을 현재 로드뷰의 위치로 설정합니다
        map.setCenter(rvPosition);

        // 지도 위에 로드뷰 도로 오버레이가 추가된 상태이면
        if (overlayOn) {
            // 마커의 위치를 현재 로드뷰의 위치로 설정합니다
            roadMarker.setPosition(rvPosition);
        }
    });

    // 마커 이미지를 생성합니다
    var roadmarkImage = new kakao.maps.MarkerImage(
        'https://t1.daumcdn.net/localimg/localimages/07/2018/pc/roadview_minimap_wk_2018.png',
        new kakao.maps.Size(26, 46),
        {
            // 스프라이트 이미지를 사용합니다.
            // 스프라이트 이미지 전체의 크기를 지정하고
            spriteSize: new kakao.maps.Size(1666, 168),
            // 사용하고 싶은 영역의 좌상단 좌표를 입력합니다.
            // background-position으로 지정하는 값이며 부호는 반대입니다.
            spriteOrigin: new kakao.maps.Point(705, 114),
            offset: new kakao.maps.Point(13, 46)
        }
    );

    // 드래그가 가능한 마커를 생성합니다 로드뷰
    var roadMarker = new kakao.maps.Marker({
        image: roadmarkImage,
        position: mapCenter,
        draggable: true
    });

    // 마커에 dragend 이벤트를 등록합니다
    kakao.maps.event.addListener(roadMarker, 'dragend', function (mouseEvent) {

        // 현재 마커가 놓인 자리의 좌표입니다
        var position = roadMarker.getPosition();

        // 마커가 놓인 위치를 기준으로 로드뷰를 설정합니다
        toggleRoadview(position);
    });

    //지도에 클릭 이벤트를 등록합니다
    kakao.maps.event.addListener(map, 'click', function (mouseEvent) {

        // 지도 위에 로드뷰 도로 오버레이가 추가된 상태가 아니면 클릭이벤트를 무시합니다
        if (!overlayOn) {
            return;
        }

        // 클릭한 위치의 좌표입니다
        var position = mouseEvent.latLng;

        // 마커를 클릭한 위치로 옮깁니다
        roadMarker.setPosition(position);

        // 클락한 위치를 기준으로 로드뷰를 설정합니다
        toggleRoadview(position);
    });

    // 전달받은 좌표(position)에 가까운 로드뷰의 파노라마 ID를 추출하여
    // 로드뷰를 설정하는 함수입니다
    function toggleRoadview(position) {
        rvClient.getNearestPanoId(position, 50, function (panoId) {                                       //위치, 반경, 콜백
            // 파노라마 ID가 null 이면 로드뷰를 숨깁니다
            if (panoId === null) {
                toggleMapWrapper(true, position);
            } else {
                toggleMapWrapper(false, position);

                // panoId로 로드뷰를 설정합니다
                rv.setPanoId(panoId, position);
            }
        });
    }

    // 지도를 감싸고 있는 div의 크기를 조정하는 함수입니다  //로드뷰 숨김
    function toggleMapWrapper(active, position) {
        if (active) {

            // 지도를 감싸고 있는 div의 너비가 100%가 되도록 class를 변경합니다
            container.className = '';

            // 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
            map.relayout();

            // 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
            map.setCenter(position);
        } else {

            // 지도만 보여지고 있는 상태이면 지도의 너비가 50%가 되도록 class를 변경하여
            // 로드뷰가 함께 표시되게 합니다
            if (container.className.indexOf('view_roadview') === -1) {
                container.className = 'view_roadview';

                // 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
                map.relayout();

                // 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
                map.setCenter(position);
            }
        }
    }

    // 지도 위의 로드뷰 도로 오버레이를 추가,제거하는 함수입니다
    function toggleOverlay(active) {
        if (active) {
            overlayOn = true;

            // 지도 위에 로드뷰 도로 오버레이를 추가합니다  로드뷰 도로 보임
            map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

            // 지도 위에 마커를 표시합니다
            roadMarker.setMap(map);

            // 마커의 위치를 지도 중심으로 설정합니다
            roadMarker.setPosition(map.getCenter());

            // 로드뷰의 위치를 지도 중심으로 설정합니다
            toggleRoadview(map.getCenter());
        } else {
            overlayOn = false;

            // 지도 위의 로드뷰 도로 오버레이를 제거합니다
            map.removeOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

            // 지도 위의 마커를 제거합니다
            roadMarker.setMap(null);
        }
    }

    // 지도 위의 로드뷰 버튼을 눌렀을 때 호출되는 함수입니다
    function setRoadviewRoad() {
        var control = document.getElementById('roadviewControl');

        // 버튼이 눌린 상태가 아니면
        if (control.className.indexOf('active') === -1) {
            control.className = 'active';

            // 로드뷰 도로 오버레이가 보이게 합니다
            toggleOverlay(true);
        } else {
            control.className = '';

            // 로드뷰 도로 오버레이를 제거합니다
            toggleOverlay(false);
        }
    }

    // 로드뷰에서 X버튼을 눌렀을 때 로드뷰를 지도 뒤로 숨기는 함수입니다
    function closeRoadview() {
        var position = roadMarker.getPosition();
        toggleMapWrapper(true, position);
    }

    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대/축소를 제어할 수 있는 줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
    if (navigator.geolocation) {

        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {

            var lat = position.coords.latitude,
                lon = position.coords.longitude;

            var locPosition = new kakao.maps.LatLng(lat, lon);

            // 지도 중심좌표를 접속위치로 변경합니다
            map.setCenter(locPosition);

            //등록 이벤트 발생
            kakao.maps.event.trigger(map, 'idle');
        });
    }

    //마커 생성
    function createMark(locations) {
        //클러스터러 마커배열
        var clusMarkers = [];

        //클러스터러 지우기
        clusterer.clear();

        var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
        // 마커 이미지의 이미지 크기 입니다
        var imageSize = new kakao.maps.Size(24, 35);

        // 마커 이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

        for (var i = 0; i < locations.length; i++) {
            var lat;
            var lon;

            lat = locations[i].lat;
            lon = locations[i].lon;

            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(lat, lon),
                image: markerImage,
            });
            marker.customData = locations[i];

            marker.setMap(map);

            /*//infowindow 호텔명
            (function (marker, title) {
                kakao.maps.event.addListener(marker, 'mouseover', function () {
                    displayInfowindow(marker, title);
                });

                kakao.maps.event.addListener(marker, 'mouseout', function () {
                    infowindow.close();
                });
            })(marker, locations[i].accomName);*/

            //클러스터러 마커 저장하는 변수에 넣음
            clusMarkers.push(marker);
        }

        //클러스터러에 마커들을 추가
        clusterer.addMarkers(clusMarkers);

        return clusMarkers;
    }

    /*var $tbody = $('.list').find('tbody');*/
    var $row = $('.list').find('.row');

    //영역별 지도리스트 (목록과 마커 표시)
    function mapListByExtent(swLatlng, neLatlng) {
        var locations = [];
        $.ajax({
            url: '/mapListByExtent',
            type: 'get',
            dataType: "json",
            data: {minX: swLatlng.La, minY: swLatlng.Ma, maxX: neLatlng.La, maxY: neLatlng.Ma},
            success: function (data) {
                /*$('.list').find('tbody tr').remove();*/
                /* $tbody.empty();*/
                $row.empty();
                overlayList.forEach(function (overlay) {
                    overlay.setMap(null);
                })

                if (data.length == 0) {
                    var str = '';
                    /*str += '<tr>';
                    str += '<td colspan="3" style="text-align:center">지도안에 숙소가 존재하지 않습니다.</td>';
                    str += '</tr>';
                    $tbody.append(str);*/

                    str += '<div class="card border-warning">';
                    str += '<div class="card-body">';
                    str += '<h5 class="card-title" style="text-align: center">지도안에 숙소가 존재하지 않습니다.</h5>';
                    str += '</div>';
                    str += '</div>';
                    $row.append(str);

                } else {
                    for (var i = 0; i < data.length; i++) {
                        locations.push(data[i]);
                        printAccomList(data[i]);
                    }
                    var markerList = createMark(locations);
                    createOverlay(markerList);
                }
            },
            error: function (err) {
            }
        });
    }

    /*function printAccomList(accom) {
        var str = '';
        str += '<tr>';
        str += '<td>' + accom.accomName + '</td>';
        str += '<td>' + accom.accomLocation + '</td>';
        str += '<td>' + accom.accomInfo + '</td>';
        str += '</tr>';
        $tbody.append(str);
    }*/

    function createOverlay(markerList) {
        // 마커 위에 커스텀오버레이를 표시합니다
        // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
        for (var i = 0; i < markerList.length; i++) {
            var marker = markerList[i];
            var overlay = new kakao.maps.CustomOverlay({
                // content: content,
                position: marker.getPosition(),
            });
            overlay.name = marker.customData.accomName;

            overlayList.push(overlay);

            var content = printOverlayContent(marker.customData);

            overlay.setContent(content);
            // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
            kakao.maps.event.addListener(marker, 'click', function(o) {
                return function() {
                    o.setMap(map);
                }
            }(overlay));
        }
    }

    function printOverlayContent(location){
        var content = "";
        content += '<div class="wrap">';
        content += '<div class="info">';
        content += '<div class="title">' + location.accomName;
        content += '<button class="close overlay-close" title="닫기"></button>';
        content += '</div>';
        content += '<div class="desc">';
        content += '<div class="ellipsis">' + location.accomLocation + '</div>';
        content += '</div>';
        content += '</div>';
        content += '</div>';

        return content;
    }

    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
    $('#map').on('click', '.overlay-close', function () {
        var name = $(this).parent().text();

        for (var i = 0; i < overlayList.length; i++) {
            var overlay = overlayList[i];
            if(overlay.name == name){
                overlay.setMap(null);
            }
        }
    });

    //호텔리스트
    function printAccomList(accom) {
        /*var testName = accom.accomName;*/
        var str = '';
        str += '<div class="col-sm-4">';
        str += '<div class="card border-warning" style="height: 395.9px;">';
        str += '<div class="card-body">';
        str += '<div id="' + accom.accomName + '"' + 'class="carousel slide carousel-fade" data-bs-ride="carousel">';
        str += '<div class="carousel-inner">';

        for (var i = 0; i < accom.accomImg.length; i++) {
            if (i == 0) {
                str += '<div class="carousel-item active">';
            } else {
                str += '<div class="carousel-item">';
            }

            str += '<img src="/resources/img/' + accom.accomImg[i].imgName + '.jpg" class="d-block card-img-top" style="height: 300px;">';
            str += '</div>';
        }

        str += '</div>';
        str += '</div>';
        str += '<button id="' + accom.accomName + '_prev' + '" class="carousel-control-prev" type="button" data-bs-target="' + accom.accomName + '" data-bs-slide="prev">';
        str += '<span class="carousel-control-prev-icon" aria-hidden="true"></span>';
        str += '<span class="visually-hidden">Previous</span>';
        str += '</button>';
        str += '<button id="' + accom.accomName + '_next' + '" class="carousel-control-next" type="button" data-bs-target="' + accom.accomName + '" data-bs-slide="next">';
        str += '<span class="carousel-control-next-icon" aria-hidden="true"></span>';
        str += '<span class="visually-hidden">Next</span>';
        str += '</button>';
        str += '</div>';
        str += '<h5 class="card-title">' + accom.accomName + '</h5>';
        str += '<p class="card-text">' + accom.accomLocation + '</p>';
        str += '</div>';
        str += '</div>';
        str += '</div>';
        $row.append(str);

        $('#' + accom.accomName).carousel({
            // 슬라이딩 자동 순환 지연 시간
            interval: false,
            // 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
            wrap: true,
        });

        // 이미지 슬라이드 전 페이지 이동
        $('#' + accom.accomName + '_prev').on("click", function () {
            $('#' + accom.accomName).carousel('prev');
        });
        // 이미지 슬라이드 다음 페이지 이동
        $('#' + accom.accomName + '_next').on("click", function () {
            $('#' + accom.accomName).carousel('next');
        });

    }

    kakao.maps.event.addListener(map, 'idle', function () {

        // 지도 영역정보를 얻어옵니다
        var bounds = map.getBounds();

        // 영역정보의 남서쪽 정보를 얻어옵니다
        var swLatlng = bounds.getSouthWest();

        // 영역정보의 북동쪽 정보를 얻어옵니다
        var neLatlng = bounds.getNorthEast();

        mapListByExtent(swLatlng, neLatlng);

    });

    // kakao.maps.event.addListener(map, 'zoom_changed', function () {
    //
    //     // 지도 영역정보를 얻어옵니다
    //     var bounds = map.getBounds();
    //
    //     // 영역정보의 남서쪽 정보를 얻어옵니다
    //     var swLatlng = bounds.getSouthWest();
    //
    //     // 영역정보의 북동쪽 정보를 얻어옵니다
    //     var neLatlng = bounds.getNorthEast();
    //
    //     mapListByExtent(swLatlng, neLatlng);
    //
    // });

    var ps = new kakao.maps.services.Places();

    // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({zIndex: 1});

    //키워드로 장소 검색
    function searchClick() {
        var keyword = $('#keyword').val();

        if (!keyword.replace(/^\s+|\s+$/g, '')) {
            alert('키워드를 입력해주세요!');
            return false;
        }

        ps.keywordSearch(keyword, placesSearchCB);

        $('#list').show();
    }

    // 키워드 검색 완료 시 호출되는 콜백함수 입니다
    function placesSearchCB(data, status, pagination) {

        if (status === kakao.maps.services.Status.OK) {

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            for (var i = 0; i < data.length; i++) {
                bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
            }

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);

            // 검색 목록과 마커를 표출합니다
            displayPlaces(data);

            // 페이지 번호를 표출합니다
            displayPagination(pagination);
        }

        else if (status === kakao.maps.services.Status.ZERO_RESULT) {

            alert('검색 결과가 존재하지 않습니다.');
            return;

        } else if (status === kakao.maps.services.Status.ERROR) {

            alert('검색 결과 중 오류가 발생했습니다.');
            return;
        }

    }

    //키워드 검색 결과 목록과 마커를 표출하는 함수입니다
    function displayPlaces(places) {
        var listEl = document.getElementById('placesList'),
            menuEl = document.getElementById('menu_wrap'),
            fragment = document.createDocumentFragment(),
            bounds = new kakao.maps.LatLngBounds(),
            listStr = '';

        // 검색 결과 목록에 추가된 항목들을 제거합니다
        removeAllChildNods(listEl);

        // 지도에 표시되고 있는 마커를 제거합니다
        removeMarker();

        for (var i = 0; i < places.length; i++) {

            // 마커를 생성하고 지도에 표시합니다
            var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                marker = addMarker(placePosition, i),
                itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            bounds.extend(placePosition);

            // 마커와 검색결과 항목에 mouseover 했을때
            // 해당 장소에 인포윈도우에 장소명을 표시합니다
            // mouseout 했을 때는 인포윈도우를 닫습니다
            (function (marker, title) {
                kakao.maps.event.addListener(marker, 'mouseover', function () {
                    displayInfowindow(marker, title);
                });

                kakao.maps.event.addListener(marker, 'mouseout', function () {
                    infowindow.close();
                });

                itemEl.onclick = function () {
                    displayInfowindow(marker, title);
                    map.panTo(marker.getPosition())
                };

                itemEl.onmouseout = function () {
                    infowindow.close();
                };
            })(marker, places[i].place_name);

            fragment.appendChild(itemEl);
        }

        // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
        listEl.appendChild(fragment);
        menuEl.scrollTop = 0;

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    }

    // 검색결과 항목을 Element로 반환하는 함수입니다
    function getListItem(index, places) {

        var el = document.createElement('li'),
            itemStr = '<span class="markerbg marker_' + (index + 1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

        if (places.road_address_name) {
            itemStr += '    <span>' + places.road_address_name + '</span>' +
                '   <span class="jibun gray">' + places.address_name + '</span>';
        } else {
            itemStr += '    <span>' + places.address_name + '</span>';
        }

        itemStr += '  <span class="tel">' + places.phone + '</span>' +
            '</div>';

        el.innerHTML = itemStr;
        el.className = 'item';

        return el;
    }

    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
    function addMarker(position, idx, title) {
        var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
            imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
            imgOptions = {
                spriteSize: new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
            },
            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
                position: position, // 마커의 위치
                image: markerImage
            });

        marker.setMap(map); // 지도 위에 마커를 표출합니다
        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

        return marker;
    }

    // 지도 위에 표시되고 있는 마커를 모두 제거합니다
    function removeMarker() {
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
    }


    // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
    function displayPagination(pagination) {
        var paginationEl = document.getElementById('pagination'),
            fragment = document.createDocumentFragment(),
            i;

        // 기존에 추가된 페이지번호를 삭제합니다
        while (paginationEl.hasChildNodes()) {
            paginationEl.removeChild(paginationEl.lastChild);
        }

        for (i = 1; i <= pagination.last; i++) {
            var el = document.createElement('a');
            el.href = "#";
            el.innerHTML = i;

            if (i === pagination.current) {
                el.className = 'on';
            } else {
                el.onclick = (function (i) {
                    return function () {
                        pagination.gotoPage(i);
                    }
                })(i);
            }

            fragment.appendChild(el);
        }
        paginationEl.appendChild(fragment);
    }

    // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
    // 인포윈도우에 장소명을 표시합니다
    function displayInfowindow(marker, title) {
        var content = '<div style="z-index:1; width: max-content;">' + title + '</div>';

        infowindow.setContent(content);
        infowindow.open(map, marker);
    }

    // 검색결과 목록의 자식 Element를 제거하는 함수입니다
    function removeAllChildNods(el) {
        while (el.hasChildNodes()) {
            el.removeChild(el.lastChild);
        }
    }

</script>

</body>
</html>
