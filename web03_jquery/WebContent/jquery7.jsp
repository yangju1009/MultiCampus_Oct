<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() { 
		$('#b1').click(function() {
			$.ajax({
				url : "won.jsp",
				data : {
					won: $('#won').val()
				},
				success : function(x) {
					$('div').html("결제금액은 " + x + "원")
				}//success
			}) //ajax
		})//b1
		
		$('#b2').click(function() {
			$.ajax({
				url : "dollar.jsp",
				data : {
					won: $('#dollar').val()
				},
				success : function(x) {
					$('div').html("결제금액은 " + x + "원")
				}//success
			}) //ajax
		})//b2
	})
</script>
</head>
<body style="background: lime;">
	<h2>비동기통신으로 서버와 통신하기</h2>
	원화를 달러로 :
	<input type="text" id='won'>
	<button style="color: blue; background: gray;" id="b1">원화를 달러로</button>
	<hr color="red">
	달러를 원화로 :
	<input type="text" id='dollar'>
	<button style="color: blue; background: yellow;" id="b2">달러를 원화로</button>
	<hr color="green">
</body>
</html>