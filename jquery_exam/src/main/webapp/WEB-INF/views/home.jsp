<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
	</script> -->
<script src="./resources/jquery.js"></script>
<script>
$(function() {
	$("#btn1.on").on("mouseover focus",function(){
		alert("Focusing1");
	});
	$("#btn1").addClass("on");
	$(document).on("mouseover focus", "#btn2.on", function(){
		alert("Focusing2");
	});
	$("#btn2").addClass("on");	
});
</script>
</head>
<body>
<div id="title">
	<label for="btn1">사용자</label>
	<button id="btn1">버튼1</button>
	<h3 id="content1">내용1</h3>
	<label for="btn2">비번</label>
	<button id="btn2">버튼2</button>
	<h3 id="content2">내용2</h3>
</div>
</body>
</html>
