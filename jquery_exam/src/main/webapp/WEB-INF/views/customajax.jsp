<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
$(function() {	
	$.ajax({
		url: "/controller/sample/getList2/1.json",
		dataType: "JSON",
		success: function(data) {
			if(data.length > 0) {				
				var tb = $('<table class="table table-striped table-bordered table-hover"/>');
				var head = $("<tr/>").append($("<td/>").text(""), $("<td/>").text("고객번호"), $("<td/>").text("아이디"), $("<td/>").text("이름"), $("<td/>").text("비밀번호"), $("<td/>").text("마일리지"), $("<td/>").text("주소"), $("<td/>").text("우편번호"), $("<td/>").text("전화번호"));
				console.log(tb);
				tb.append(head);
				var html = "";
				for(var i in data) {
					html += "<tr>";
					html += "<td>" + data[i].cid + "</td>";
					html += "<td>" + data[i].id + "</td>";
					html += "<td>" + data[i].cname + "</td>";
					html += "<td>" + data[i].pwd + "</td>";
					html += "<td>" + data[i].mileage + "</td>";
					html += "<td>" + data[i].addr + "</td>";
					html += "<td>" + data[i].post + "</td>";
					html += "<td>" + data[i].tel + "</td>";
					html += "</tr>";
				}
				tb.append(html);
				console.log(tb);
				$(".wrap").append(tb);
			}
		}
	});
});
</script>
</head>
<body>
<table class="table" id=body border=1>
	<thead id="thead1">
		<tr id="tr1">
			<th>고객번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>주소</th>
			<th>우편번호</th>
			<th>전화번호</th>
		</tr>
	</thead>
	<tbody id=titlebody>
		<c:forEach var="item" items="${list}">
		<tr id=title>
			<td id=title1>${item.cid}</td>
			<td>${item.id}</td>
			<td>${item.cname}</td>
			<td>${item.pwd}</td>
			<td>${item.mileage}</td>	
			<td>${item.addr}</td>	
			<td>${item.post}</td>	
			<td>${item.tel}</td>	
		</tr>
		</c:forEach>
	</tbody>
</table>

<div class="row">
	<div class="col-lg-12">
		<div class="paenl panel-default">
			<div class="paenl-heading">고객리스트</div>
			
			<div class="panel-body wrap"></div>
		</div>
	</div>
</div>
</body>
