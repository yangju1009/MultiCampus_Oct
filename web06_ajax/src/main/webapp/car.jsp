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
			url: "data/car.json",
			success: function(json) {
				//console.log(json) //[{},{},{},...]
				//console.log(json[0]) //{id: 1, email: 'rwickmann0@biblegateway.com', car: 'Mazda'}
				//console.log(json[0].email)
/* 				for(let i = 0; i < json.length; i++){
					console.log(json[i].email)
				} */
				//$(여러개들어있는 변수, 배열).each(function(인덱스,하나씩))
				$(json).each(function(i, one) {
					
					//console.log(one.email)
					let idValue = one.id
					let emailValue = one.email
					let carValue = one.car
					console.log(idValue + " " + emailValue + " " + carValue)
					$.ajax({
						url: "db_create.jsp",
						async:false,
						data : {
							id: idValue,
							email: emailValue,
							car: carValue
						},
						success: function(result) {
							console.log(result) //1
							console.log(result.length)
							if (result.trim() == '1') {
								console.log('db저장 성공')
							}else {
								console.log('db저장 실패')
							}
							
						}
					})
				})
			}
		}) //ajax
	})//b1
	
	$('#b2').click(function() {
		$.ajax({
			url: "data/car.xml",
			success: function(xml) {
				console.log(xml)
				let list = $(xml).find('record')
				$('#d1').empty()
				for (let i = 0; i < list.length; i++) {
					id = $(list[i]).find('id').text()
					email = $(list[i]).find('email').text()
					car = $(list[i]).find('record').text()
					console.log(id + " " + email + " " + car)
					$('#d1').append(id + " " + email + " " + car + "<br>")
				}
			}
		})
	})
})//$
</script>
</head>
<body>
<button id="b1">car.json읽어와서 추출하기</button>
<br>
<button id="b2">car.xml읽어와서 추출하기</button>
<div id="d1" >xml 결과 넣는 곳</div>
</body>
</html>