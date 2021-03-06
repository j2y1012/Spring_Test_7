<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".del").click(function() {
			var fnum=$(this).attr("title");
			var fname=$(this).attr("id");
			var check=confirm("삭제시 복구가 불가능 합니다.");
			if(check){
				$.ajax({
					url:"../file/fileDelete",
					type:"GET",
					data:{
						fnum:fnum,
						id:id
					},
					success:function(data){
						
					}
					
				});
			}
		});	
		
		
	
	 	var i=${fn:length(view.files)};
	 	alert(i);
	 	/*$("#btn").click(function() {
			if(i<5){
				$("#result").append('<input type="file" name="file'+i+'"><span class="remove">X</span><br>');
				i++;
			}else{
				alert("최대 5개만 가능합니다");
			}
		}); */

		$("#btn").click(function() {
			if(i<5){
				var ex=$("#ex").html();
				$("#result").append(ex);
				i++;
			}else{
				alert("최대 5개만 가능합니다");
			}
		});
		
		//위임이 필요하기때문에 on을 사용하여 위임해줌
		$("#result").on("click",".remove",function() {
			$(this).prev().remove();
			$(this).remove();
			i--;
		});			
	});
	
</script>
<style type="text/css">
#ex{
	display:none; 
}

.remove, .del{
	cursor: pointer;
}

</style>
</head>
<body>
	
	<h1>${board} Update</h1>
	<form action="${board}Update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="num" value="${view.num}">
		<p>Writer : <input type="text" value="${view.writer}" disabled="disabled"></p>
		<p>Title  : <input type="text" value="${view.title}" name="title"></p>
		<p>Contents : <textarea rows="" cols="" name="contents">${view.contents}</textarea>
		
		<p><input type="button" value="FileAdd" id="btn"></p>
		<div id="result">
		<c:forEach items="${view.files}" var="file">
			<p><input type="text" value="${file.oname}" readonly="readonly"><span class="del" title="${file.fnum}" id="${file.fname}">X</span></p>
		</c:forEach>
		</div>	
		
		<input type="button" value="Update">
	</form>
			<div id="ex">
				<input type="file" name="file"><span class="remove">X</span><br>
			</div>
</body>
</html>




