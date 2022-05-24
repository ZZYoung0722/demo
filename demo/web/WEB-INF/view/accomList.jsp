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
        div.list {
            width: 50%;
            float: left;
            box-sizing: border-box;
            float: left;
        }

        div#map {
            width: 50%;
            height: 88%;
            float: right;
        }

        #search {
            margin: auto;
        }
    </style>

</head>
<body>

<%@ include file="nav.jsp" %>

<form>
    <div class="input-group mb-3" id="search" style="width: 500px;">
        <input type="search" class="form-control" placeholder="Search" aria-describedby="button-addon2">
        <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Search</button>
    </div>
</form>


<div>
    <div class="list">
        <div class="container">
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
                    <%--<c:forEach var="list" items="${list}">--%>
                    <%--<tr>--%>
                    <%--<td>${list.accomName}</td>--%>
                    <%--<td>${list.accomLocation}</td>--%>
                    <%--<td>${list.accomInfo}</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td>${list.accomName}</td>--%>
                    <%--<td>${list.accomLocation}</td>--%>
                    <%--<td>${list.accomInfo}</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td>${list.accomName}</td>--%>
                    <%--<td>${list.accomLocation}</td>--%>
                    <%--<td>${list.accomInfo}</td>--%>
                    <%--</tr>--%>
                    <%--</c:forEach>--%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div id="map"></div>
</div>


<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71e33e6909a61dbb04de7d82451c92f"></script>
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

    //영역별 지도리스트
    function mapListByExtent(swLatlng, neLatlng) {
        var locations = [];
        $.ajax({
            url: '/mapListByExtent',
            type: 'get',
            dataType: "json",
            data: {minX: swLatlng.La, minY: swLatlng.Ma, maxX: neLatlng.La, maxY: neLatlng.Ma},
            success: function (data) {
                //서버로부터 정상적으로 응답이 왔을 때 실행
                $('.list').find('tbody tr').remove();

                for (var i = 0; i < data.length; i++) {
                    locations.push(data[i]);
                    printAccomList(data[i]);
                }
                createMark(locations);
            },
            error: function (err) {
                //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
            }
        });
    }

    function printAccomList(accom) {
        var str = '';
        str += '<tr>';
        str += '<td>' + accom.accomName + '</td>';
        str += '<td>' + accom.accomLocation + '</td>';
        str += '<td>' + accom.accomInfo + '</td>';
        str += '</tr>';
        $('.list').find('tbody').append(str);
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

    /*function mapList() {
        $.ajax({
            url: '/accomlistform',
            type: 'get',
            dataType: "json",
            data: {accomName: accomName, accomLocation: accomLocation, accomInfo: accomInfo},
            success: function (data) {
                //서버로부터 정상적으로 응답이 왔을 때 실행

            },
            error: function (err) {
                //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
            }
        });
    }*/

</script>

</body>
</html>
