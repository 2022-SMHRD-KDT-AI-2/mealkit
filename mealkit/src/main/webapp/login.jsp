<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="center">
	<div class="panel-heading pull" >
		<c:if test="${empty memVO}">
			<form class="form-inline" action="/mealkit/login.do" method="post">
				<div class="form-group">
					<label for="memid">ID:</label> <input type="text"
						class="form-control" name="memId">
				</div>
				<div class="form-group">
					<label for="mempwd">Password:</label> <input type="password"
						class="form-control" name="memPwd">
				</div>
				<button id="login" type="submit" class="btn btn-info">�α���</button>
			</form>
		</c:if>
		<c:if test="${!empty memVO}">
			<div>
				<label>${memVO.m_id}�� �湮�� ȯ���մϴ�.</label>
				<button class="btn btn-info btn-sm" onclick="goOut()">�α׾ƿ�</button>
			</div>
		</c:if>

	</div>
</body>
</html>