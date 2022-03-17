<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">


<style>

</style>

<script type="text/javascript">
	function favorite(r_seq) {
		location.href = "/mealkit/favorite.do?r_seq="+r_seq;
		console.log(r_seq);
				
	}
</script>


</head>
<body>
	<%@include file="/mainHeader.jsp" %>
	<c:if test="${empty flist}">

		<button class="btn btn-primary" onclick="favorite(${r_seq})" style="position:relative; left:40%;">즐겨찾기</button>

	</c:if>
	<c:if test="${!empty flist}">

		<button class="btn btn-primary" onclick="#" style="position:relative; left:40%;">즐겨찾기 삭제</button>

	</c:if>


	<div class="card" style="width: 40rem; position:relative; left:40%;">
		<a href="#"> <img src="images/p1.jpg" width="400px"
			class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">${r_name}</h5>
				<p class="card-text">${r_content}</p>
			</div>
		</a>
	</div>
	

	<div class="card" style="width: 18rem; position:relative; left:40%;">
		<div class="card-header">재료</div>
		<ul class="list-group list-group-flush">
			<c:forEach var="list" items="${mlist}">
				<li class="list-group-item">${list.mat_name }</li>
			</c:forEach>
		</ul>
	</div>





</body>
</html>