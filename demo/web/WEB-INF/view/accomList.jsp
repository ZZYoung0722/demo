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
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <style>
        .list {
            width: 50%;
            float: left;
            box-sizing: border-box;
            float: right;
            /*overflow-y: scroll;*/
        }

        #map {
            width: 50%;
            height: 88%;
            float: left;
            position: sticky;
        }

        #search {
            margin: auto;
        }

        /*!* 스크롤바 전체 영역 *!
        .list::-webkit-scrollbar {
            width: 10px;
        }
        !* 스크롤이 움직이는 영역  *!
        .list::-webkit-scrollbar-track {
            background-color: #f9f9f9;
        }
        !*  스크롤  *!
        .list::-webkit-scrollbar-thumb {
            background-color: gold;
            border-radius:30px;
        }
        !*  스크롤의 화살표가 포함된 영역   *!
        .list::-webkit-scrollbar-button:start:decrement,
        .list::-webkit-scrollbar-button:end:increment {
            display:block;
            height:8px;
            background-color: #000;
        }*/
    </style>

</head>
<body>

<%@ include file="nav.jsp" %>

<div class="input-group mb-3" id="search" style="width: 500px;">
    <input id="keyword" type="search" class="form-control" placeholder="Search" aria-describedby="button-addon2">
    <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="searchClick()">Search</button>
</div>


<div>
    <div class="list" style=" height: 88%; overflow:auto">
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

                    str += '<div class="card">';
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
        var str = '';
        str += '<div class="col-sm-4">';
        str += '<div class="card">';
        str += '<div class="card-body">';
        str += '<img src="/resources/img/' + accom.accomImg[0].imgName + '.jpg" class="card-img-top">';
        str += '<h5 class="card-title">' + accom.accomName + '</h5>';
        str += '<p class="card-text">' + accom.accomLocation + '</p>';
        str += '</div>';
        str += '</div>';
        str += '</div>';
        $row.append(str);
    }

    kakao.maps.event.addListener(map, 'bounds_changed', function () {

        // 지도 영역정보를 얻어옵니다
        var bounds = map.getBounds();

        // 영역정보의 남서쪽 정보를 얻어옵니다
        var swLatlng = bounds.getSouthWest();

        // 영역정보의 북동쪽 정보를 얻어옵니다
        var neLatlng = bounds.getNorthEast();

        mapListByExtent(swLatlng, neLatlng);

    });


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
