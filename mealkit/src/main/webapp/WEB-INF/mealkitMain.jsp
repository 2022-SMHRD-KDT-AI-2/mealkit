<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
</head>
<body>
	<div id="page-wrapper">
		<div class="searchbar"></div>
		<!-- Header -->
		<%@include file="/mainHeader.jsp"%>
	</div>


	<div class="list-group" style="padding-top: 50px;">
		<div class='container'>
			<c:forEach var="v" items="${mlist}">
				<div class="card" style="width: 50rem; position:relative; left:30%" >
					<a href="#"> <img src="${v.getMl_addr_img()}" width="400px" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${v.getMl_name()}</h5>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

	
</body>
</html>