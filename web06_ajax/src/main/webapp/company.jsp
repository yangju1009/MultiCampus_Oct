<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script>
<script type="text/javascript">
//body태그에 있는 것 중에서 특정한 것을 선택한 이후에
//그 선택된 것이 이벤트가 발생했을 때 입력값으로 사용한 이름없는 함수를 실행시켜줘!
//콜백함수 
$(function() {
	$('#b1').click(function() {
		$.ajax({
			url: "data/company_mock.json",
			success: function(arr) { //{json, json, json}
			//json배열 추출해서 프린트
				alert(arr.length)
				for (let i = 0; i < arr.length; i++) {
					console.log(arr[i].addr)
					console.log(arr[i].domain)
					console.log('------------')
					$.ajax({
						url: "db_create2.jsp",
						data: {
							id: arr[i].id,
							name: arr[i].name,
							addr: arr[i].addr,
							tel: arr[i].tel,
							domain: arr[i].domain,
						},
						success: function(result) {
							cosole.log('db저장 성공')
						}
					})
				}
			}
		}) //ajax
	})//b1
})//$
</script>
</head>
<body>
<button id="b1">company_mock.json읽어와서 추출하기</button>
<button id="b2">company_mock.xml읽어와서 추출하기</button>
</body>
</html>