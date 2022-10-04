<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
<script>
	$(function() {
		function getList(param) {
			var pid = param.pid;
			$
					.ajax({
						url : "/controller/sample/getList1/" + pid + ".json",
						dataType : "JSON",
						success : function(data) {
							if (data.length > 0) {
								//	var tb=$(".wrap").html();
								var tb = $('<table class="table table-striped table-bordered table-hover"/>');
								var head = $("<tr/>").append(
										$("<td/>").text("학생번호"),
										$("<td/>").text("학생이름"),
										$("<td/>").text("학과"),
										$("<td/>").text("생년월일"),
										$("<td/>").text("성별"),
										$("<td/>").text("지도교수번호"));
								console.log(tb);
								tb.append(head);
								//	$(".wrap").empty();

								var html = "";
								for ( var i in data) {
									html += "<tr>";
									html += "<td>" + data[i].sid + "</td>";
									html += "<td>" + data[i].sname + "</td>";
									html += "<td>" + data[i].dept + "</td>";

									var $birth = new Date(data[i].birth)
											.toLocaleDateString();
									html += "<td>" + $birth + "</td>";
									//   html+="<td>"+$hire.getFullYear()+'-'+($hire.getMonth()+1)+'-'+$hire.getDate()+"</td>";

									html += "<td>" + data[i].sex + "</td>";
									html += "<td>" + data[i].pid + "</td>";
									html += "</tr>";

									// 	    				  	var $pid=data[i].pid;
									// 	    					var $pname=data[i].pname;
									// 	    					var $dept=data[i].dept;
									// 	    					var $post=data[i].post;
									// 	    					var $pay=data[i].pay;

									// 	    					var $hire=new Date(data[i].hire).toLocaleDateString();
									// 	    					var $major=data[i].major;
									// 	    					var $campus=data[i].campus;

									// 	    					var row=$("<tr/>").append($("<td/>").text($pid),$("<td/>").text($pname),$("<td/>").text($dept),$("<td/>").text($post),$("<td/>").text($pay),$("<td/>").text($hire),$("<td/>").text($major),$("<td/>").text($campus));
									// 	    					tb.append(row); 

								}
								tb.append(html);
								console.log(tb);
								$(".wrap").append(tb);
							}

						}
					});
		}
		$("tr").on("click", function(e) {
			//	e.preventDefault();
			$(".wrap").empty();
			var pidno = $(this).index();
			pidno = $(".move").eq(pidno).text();
			console.log("pidno" + pidno);
			getList({
				pid : pidno
			});
		});

		$("#regBtn").on("click", function() {
			self.location = "add";
		});
	});
</script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	line-height: 1;
}

.red {
	background-color: #f00;
}

.blue {
	background-color: #00f;
}

.green {
	background-color: #0f0;
}

#p3, #p4 {
	width: 100px;
	height: 50px;
	padding: 20px;
	border: 5px solid #000;
	background-color: #ff0;
}

#box_wrap1 {
	width: 800px;
	height: 300px;
	margin: 50px auto 0;
	position: relative;
	background-color: #ccc;
}

#wrap1 {
	height: 4000px;
	padding-top: 600px;
}

#tbl {
	width: 600px;
	height: 200px;
	position: absolute;
	left: 50px;
	top: 50px;
	background-color: #f00;
}
</style>
</head>
<body>

	<!-- Button trigger modal -->
	<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button> -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>


	<div id="box_wrap">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">교수리스트</div>
				<button id="regBtn" type="button" class="btn btn-primary btn-xs pull-right">등록</button>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr id="head">
							<th id="head1">교수번호</th>
							<th id="p1">교수이름</th>
							<th scope="col">학과</th>
							<th scope="col">교수직위</th>
							<th scope="col">연봉</th>
							<th scope="col">임용일</th>
							<th scope="col">전공</th>
							<th scope="col">캠퍼스</th>
						</tr>
					</thead>
					<tbody id=titlebody>
						<c:if test="${list.size() <1 }">
							<tr>
								<td>교수 리스트가 없습니다</td>
							</tr>
						</c:if>
						<c:forEach var="item" items="${list}">
							<tr id=title>
								<td id="p2" class="move fire">${item.pid}</td>
								<td id=title1><a href="get?pid=${item.pid}">${item.pname}</a></td>
								<td>${item.dept }</td>
								<td>${item.post }</td>
								<td>${item.pay }</td>
								<td><fmt:formatDate value="${item.hire}" pattern="yyyy-MM-dd" /></td>
								<td id=title5>${item.major }</td>
								<td>${item.campus }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">교수리스트</div>
				<div class="panel-body wrap"></div>
			</div>
		</div>
	</div>

</body>
</html>