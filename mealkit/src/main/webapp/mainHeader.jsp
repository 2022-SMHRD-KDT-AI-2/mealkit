<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
 <link rel="stylesheet" href="assets/css/main.css" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="assets/css/index.css">

<script type="text/javascript">
   function goOut() {
      location.href="/mealkit/logout.do"
   }
   function gologin(){
      location.href="/mealkit/loginform.do"
   }
   function goJoin(){
      location.href="/mealkit/memberinsertform.do"
   }
</script>


</head>
<body class="homepage is-preload">
	<section id="header">
		<div class="contain">
			<div id="logob">
				<div class="hamjung">
					<h1 id="logo">
						<a href="index.jsp">함정요리</a>
					</h1>
				</div>

				<c:if test="${empty memVO}">
					<div align="center">
						<div id="joi" onclick="goJoin()">
							<img src="images/top_join.gif" alt="회원가입"><br>회원가입
						</div>
						<div id="login" onclick="gologin()">
							<img src="images/top_login.gif" alt="로그인"><br>로그인
						</div>
					</div>
				</c:if>

				<c:if test="${!empty memVO}">
					<div style="width: 100%;" align="right">
						<div id="logo" onclick="goOut()">
							<img src="images/top_login.gif" alt="로그아웃"><br>로그아웃
						</div>
					</div>
				</c:if>
			</div>
			<%@ include file="/menubar.jsp"%>
		</div>
	</section>
</body>
</html>