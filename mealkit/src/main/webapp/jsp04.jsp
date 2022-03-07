<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String str[] = {"사고", "바나나", "포도", "귤"};
	request.setAttribute("str", str);
%>
<%
	//String fList = (String)request.getAttribute("str");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
		<tr>
			<td>과일목록</td>
		</tr>
		<c:forEach var="f" items="${str}">	
			<tr>
				<td>${f}</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>