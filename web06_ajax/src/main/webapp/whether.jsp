<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script>
<script type="text/javascript">
$('#b4').click(function() {
		$.ajax({
			url : "https://api.openweathermap.org/data/2.5/weather?lat=35.1362607&lon=129.1027527&appid=f2917473db1db55dee1aeaad9419a1bb", 
			dataType : 'json',
			success : function(x) {
				$('#d1').html("위치 : "+x.name+"<br>"+
				"날씨 : "+x.weather[0].description+"<br>"+
				"풍속 : "+x.wind.speed+"<br>"+
				"최고기온 : "+x.main.temp_max+"<br>"+
				"최저기온 : "+x.main.temp_min+"<br>"+
				"체감온도 : "+x.main.feels_like+"<br>" +
				"구름 : "+x.clouds.all+"<br>")
			}
		})
	})
	
	$('#b5').click(function() {
		$.ajax({
			url : "https://api.openweathermap.org/data/2.5/weather?q=pusan&appid=0b3b55e8f262238476508706d818c2d3", 
			dataType : 'json',
			success : function(x) {
				$('#d1').html("위치 : "+x.name+"<br>"+
				"날씨 : "+x.weather[0].description+"<br>"+
				"풍속 : "+x.wind.speed+"<br>"+
				"최고기온 : "+x.main.temp_max+"<br>"+
				"최저기온 : "+x.main.temp_min+"<br>"+
				"체감온도 : "+x.main.feels_like+"<br>" +
				"구름 : "+x.clouds.all+"<br>")
			}
		})
	})

	</script>	
</head>
<body>
<button id="b4">날씨정보 읽어와서 추출하기</button>
<br>
<button id="b5">날씨 읽어와서 추출하기</button>
</body>
</html>