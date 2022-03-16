<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 

<link rel = "stylesheet" href="assets/css/login.css">

</head>
<body>
	<form action="/mealkit/login.do" " method="post">
		<div id="div_login">
			<c:if test="${!empty n}">
				<h4>로그인이 실패하엿습니다.</h4>
			</c:if>

			<div id="div_login2">
				<b>함정요리</b>
			</div>
			<div id="div_member"></div>

			<div id="div_id">
				<input type="text" name="memId" id="input_id"
					placeholder="아이디를 입력하세요 ">
			</div>
			<div id="div_password">
				<input type="password" name="memPwd" id="input_password"
					placeholder="비밀번호를 입력하세요 ">
			</div>
			<div id="div_login_button">
				<input type="submit" value="로 그 인" id="button_login">

			</div>

			<div style="margin-top: 15px;">
				<a href="join.jsp" style="text-decoration: none; color: black;">
					회원가입 </a>
			</div>
			<div id="out">
				<input type="submit" value="회원탈퇴" id="out_a">
			</div>
			<ul class="find_wrap" id="find_wrap">
				<li><a target="_blank" href="#" class="find_text">아이디 찾기</a></li>

				<li><a target="_blank" href="#" class="find_text">비밀번호 찾기</a></li>

				<li><a target="_blank" href="#" class="find_text">고객센터</a></li>
			</ul>
		</div>
	</form>

</body>
</html>