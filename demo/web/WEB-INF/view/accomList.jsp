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

<%@ include file="nav.jsp" %>

<div class="input-group mb-3" id="search" style="width: 500px; margin-top: 80px;">
    <input id="keyword" type="search" class="form-control" placeholder="Search" aria-describedby="button-addon2">
    <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="searchClick()">Search</button>
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

<div id="map"></div>


<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71e33e6909a61dbb04de7d82451c92f&libraries=services,clusterer,drawing"></script>

<script>
    var mapContainer = document.getElementById('map'),
        mapOption = {
            center: new kakao.maps.LatLng(37.5597, 126.8309),
            level: 5,
            mapTypeId: kakao.maps.MapTypeId.ROADMAP
        };

    // 지도를 생성한다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
    if (navigator.geolocation) {

        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {

            var lat = position.coords.latitude,
                lon = position.coords.longitude;

            var locPosition = new kakao.maps.LatLng(lat, lon)

            // 지도 중심좌표를 접속위치로 변경합니다
            map.setCenter(locPosition);

            //등록 이벤트 발생
            kakao.maps.event.trigger(map, 'idle');
        });
    }

    //마커 생성
    function createMark(locations) {
        for (var i = 0; i < locations.length; i++) {
            var lat;
            var lon;

            lat = locations[i].lat;
            lon = locations[i].lon;

            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(lat, lon)
            });

            marker.setMap(map);
        }
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
                    createMark(locations);
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

    //키워드로 장소 검색
    function searchClick() {
        var keyword = $('#keyword').val();

        if (!keyword.replace(/^\s+|\s+$/g, '')) {
            alert('키워드를 입력해주세요!');
            return false;
        }

        ps.keywordSearch(keyword, placesSearchCB);
    }

    var ps = new kakao.maps.services.Places();

    // 키워드 검색 완료 시 호출되는 콜백함수 입니다
    function placesSearchCB(data, status) {

        if (status === kakao.maps.services.Status.OK) {

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            for (var i = 0; i < data.length; i++) {
                bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
            }

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);
        }

        else if (status === kakao.maps.services.Status.ZERO_RESULT) {

            alert('검색 결과가 존재하지 않습니다.');
            return;

        } else if (status === kakao.maps.services.Status.ERROR) {

            alert('검색 결과 중 오류가 발생했습니다.');
            return;
        }

    }


</script>

</body>
</html>
