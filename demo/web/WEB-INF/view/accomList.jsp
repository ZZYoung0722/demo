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

    <style>
        div.list {
            width: 50%;
            float: left;
            box-sizing: border-box;
            float: left;
            background-color: grey;
        }

        div#map {
            width: 50%;
            height: 88%;
            float: right;
            box-sizing: border-box;
            float: left;
            background-color: black;
        }
    </style>

</head>
<body>

<%@ include file="nav.jsp" %>

<div class="container">
    <form class="d-flex">
        <div class="col-md-4" id="search">
            <input type="search" class="form-control me-2" placeholder="Search">
        </div>
        <div class="col-md-2">
            <button class="btn btn-outline-dark" type="submit">Search</button>
        </div>
    </form>
</div>

<div>
    <div class="list">
        dfsafasdfasdf
    </div>
    <div id="map">
        sdasdfasdfasdfs
    </div>
</div>


<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71e33e6909a61dbb04de7d82451c92f"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.559721, 126.83873), // 지도의 중심좌표
            level: 5, // 지도의 확대 레벨
            mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
        };

    // 지도를 생성한다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
    if (navigator.geolocation) {

        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {

            var lat = position.coords.latitude, // 위도
                lon = position.coords.longitude; // 경도

            var locPosition = new kakao.maps.LatLng(lat, lon)

            // 지도 중심좌표를 접속위치로 변경합니다
            map.setCenter(locPosition);

        });

    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667)
    }

</script>


</body>
</html>
