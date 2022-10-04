<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>

<script>	 
	 $(function()  {	
		 var formObj = $("#operForm");
		 $("button[data-oper='modify']").on("click", function(e) {
			 formObj.attr("action", "update").submit();
		 });
		 
		 $("button[data-oper='list']").on("click", function() {
			 formObj.find("#pid").remove();
			 formObj.attr("action", "list").submit();
		 })		
	 });
</script>
</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">교수정보</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">교수정보</div>
				<div class="panel=body">
					<div class="form-group">
						<label>교수번호:</label> 
						<input class="form-control" type="number" name="pid" value="${item.pid}" readonly="readonly" />
					</div>
					<div class="form-group">
						<label>교수이름:</label> 
						<input class="form-control" type="text" name="pname" value="${item.pname}" readonly="readonly" />
					</div>
					<div class="form-group">
						<label>학과:</label> 
						<input class="form-control" type="text" name="dept" value="${item.dept}" readonly="readonly" />
					</div>
					<div class="form-group">
						<label>직위:</label> 
						<input class="form-control" type="text" name="post" value="${item.post}" readonly="readonly" />
					</div>
					<div class="form-group">
						<label>월급:</label> 
						<input class="form-control" type="number" name="pay" value="${item.pay}" readonly="readonly" />
					</div>
					<div class="form-group">
						<label>임용날짜:</label> 
						<input class="form-control" type="text" name="hire" value='<fmt:formatDate pattern="yyyy-MM-dd" value="${item.hire}"/>' readonly="readonly" />
					</div>
					<div class="form-group">
						<label>전공:</label> 
						<input class="form-control" type="text" name="major" value="${item.major}" readonly="readonly" />
					</div>
					<div class="form-group">
						<label>캠퍼스:</label> 
						<input class="form-control" type="text" name="campus" value="${item.campus}" readonly="readonly" />
					</div>

					<button data-oper="modify" class="btn btn-primary btn-default">Modify</button>
					<button data-oper="list" class="btn btn-info">List</button>
					<form action="modify" id="operForm" method="get">
						<input type="hidden" type="number" id="pid" name="pid" value="${item.pid}">
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>