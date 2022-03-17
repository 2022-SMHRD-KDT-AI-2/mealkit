<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/mainHeader.jsp" %>


	<div class="list-group" style="padding-top: 50px;">
		<div class='container'>
			<c:forEach var="v" items="${rlist}">
				<a href='/mealkit/searchdetail.do?r_seq=${v.getR_seq()}' class='list-group-item'>
					<div id='search_data'>
						<table id='table1' border='1'>
							<tr>
								<td>${v.getR_name()}</td>
							</tr>
							<tr>
								<td>${v.getR_content()}</td>
							</tr>
						</table>
					</div>
				</a>
			</c:forEach>
		</div>
	</div>

</body>
</html>