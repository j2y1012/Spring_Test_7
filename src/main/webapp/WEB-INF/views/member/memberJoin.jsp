<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#j1").click(function(){
			$("#S").css("display", "block");
			$("#T").css("display", "none");
		});
		$("#j2").click(function(){
			$("#T").css("display", "block");
			$("#S").css("display", "none");
		});
	});
</script>
<style type="text/css">
	#T {
		display: none;
	}
</style>
</head>
<body>
	<h1>MemberJoin</h1>
	<form action="./memberJoin.member" method="post">
		<p>ID <input type="text" name="id"> </p>
		<p>PW <input type="password" name="pw"> </p>
		<p>NAME <input type="text" name="name"> </p>
		<p>EMAIL <input type="text" name="email"> </p>
		<p>PHONE <input type="text" name="phone"> </p>
		<p>AGE <input type="text" name="age"> </p>
		<p>
			Student <input type="radio" id="j1" value="S" checked="checked" name="job">
			Teacher <input type="radio" id="j2" value="T"  name="job">
		</p>
		<div id="S">
			<p>Grade <input type="text" name="grade"> </p>
			<p>TID   <input type="text" name="tid"></p>
			<p>Addr  <input type="text" name="addr"> </p>
		</div>
		<div id="T">
			<p>SUBJECT <input type="text" name="subject"> </p>
			<p>SAlRARY <input type="text" name="salary"> </p>
			<p>Birth <input type="date" name="birth"> </p>
		</div>
		<button>Join</button>
	</form>


</body>
</html>