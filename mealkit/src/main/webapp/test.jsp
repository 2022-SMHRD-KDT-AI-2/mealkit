<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div id="pp"></div>
    <button onclick="aa()">��û</button>
	<script>
        function aa(){
            $.ajax({
            	type : "GET",
                url : "http://127.0.0.1:8082/analysis",
                
                success : function(){
                	alert("suc�Դϴ�!");
                	//�� success �� �ȶ���??
                },
                error : function(){
                    alert("erro�Դϴ�!");
                }
            });
        }
    </script>
</body>
</html>