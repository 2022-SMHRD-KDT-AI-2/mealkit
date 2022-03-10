<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	fuction 
	function goOut() {
		location.href="/mealkit/logout.do"
	}
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="center">
	<div class="panel-heading" style="margin-top:200px" >
		<c:if test="${empty memVO}">
			<form class="form-inline" action="/mealkit/login.do" method="post">
				<div class="form-group">
					<label for="memid">ID:</label> <input type="text"
						class="form-control" name="memId">
				</div>
				<div class="form-group" style="margin-top:10px">
					<label for="mempwd">Password:</label> <input type="password"
						class="form-control" name="memPwd">
				</div>
				<button id="login" type="submit" class="btn btn-info" style="margin-top:10px">�α���</button>
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