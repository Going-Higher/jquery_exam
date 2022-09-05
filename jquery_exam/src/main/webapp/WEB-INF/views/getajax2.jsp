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
		url: "/controller/sample/getList/444.json",
		dataType: "JSON",
		success: function(data) {
			if(data.length > 0) {
// 				var tb = $(".wrap").html();
				var tb = $('<table class="table table-striped table-bordered table-hover"/>');
				var head = $("<tr/>").append($("<td/>").text("학생번호"), $("<td/>").text("학생이름"), $("<td/>").text("학과"), $("<td/>").text("생년월일"), $("<td/>").text("성별"), $("<td/>").text("교수번호"));
				console.log(tb);
				tb.append(head);
// 				$(".wrap").empty();
				var html = "";
				for(var i in data) {
					html += "<tr>";
					html += "<td>" + data[i].sid + "</td>";
					html += "<td>" + data[i].sname + "</td>";
					html += "<td>" + data[i].dept + "</td>";
					html += "<td>" + data[i].birth + "</td>";
					html += "<td>" + data[i].sex + "</td>";
					html += "<td>" + data[i].pid + "</td>";
					html += "</tr>";
					
// 					var $sid = data[i].sid;
// 					var $sname = data[i].sname;
// 					var $dept = data[i].dept;
// 					var $birth = data[i].birth;
// 					var $sex = data[i].sex;
// 					var $pid = data[i].pid;
// 					var row = $("<tr/>").append($("<td/>").text($sid), $("<td/>").text($sname), $("<td/>").text($dept), $("<td/>").text($birth), $("<td/>").text($sex), $("<td/>").text($pid), $("<td/>"));
// 					tb.append(row);
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
<%-- <table class="table" id=body border=1>
	<thead id="thead1">
		<tr id="tr1">
			<th>학생번호</th>
			<th>학이름</th>
			<th>학과</th>
			<th id="th1">생년월일</th>
			<th>성별</th>
			<th>지도교수 번호</th>
		</tr>
	</thead>
	<tbody id=titlebody>
		<c:forEach var="item" items="${list}">
		<tr id=title>
			<td id=title1>${item.sid}</td>
			<td>${item.sname}</td>
			<td id=title2>${item.dept}</td>
			<td><fmt:formatDate value="${item.birth}" pattern="yyyy-MM-dd"/></td>
			<td>${item.sex}</td>
			<td id=title3>${item.pid}</td>	
		</tr>
		</c:forEach>
	</tbody>
</table> --%>

<div class="row">
	<div class="col-lg-12">
		<div class="paenl panel-default">
			<div class="paenl-heading">학생리스트</div>
			
			<div class="panel-body wrap"></div>
		</div>
	</div>
</div>
</body>
