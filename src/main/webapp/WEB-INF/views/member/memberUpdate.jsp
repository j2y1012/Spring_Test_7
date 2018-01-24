<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#i").click(function(){
	$("#i").remove();
	});

$("#btn").click(function(){
	$("#file").html("<input type='file' name='file'>");
});
});
</script>

</head>
<body>
<h1>Update Form</h1>
<form action="./memberUpdate" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="${member.id}">
<p>Pw:<input type="password" name="pw" value="${member.pw}"></p>
<p>Name:<input type="text" name="name" value="${member.name }"></p>
<p>Email:<input type="text" name="email" value="${member.email }"></p>
<p>Phone:<input type="text" name="phone" value="${member.phone }"></p>
<p>Age:<input type="text" name="age" value="${member.age }"></p>
<p>Job:<input type="text" name="job" value="${member.job }"></p>
<p id="file"> Photo:<span id="i">${member.oname} X</span></p>
<input type="button" id="btn" value="fileAdd">
<button>Join</button>

</form>
</body>
</html>