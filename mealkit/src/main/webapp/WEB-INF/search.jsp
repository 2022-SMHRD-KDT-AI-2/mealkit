<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("shap", "#"); %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>


	}
	#header{


	}
	
		#ulid li{

		 margin-top: 50px;
		padding-left: 70px;
		font-size: 18px;
			
		}
		#logo{
		  color: #fd887a;
		  left:500px;
		}
		.container{
			margin:0 auto;
		width:1300px;
		height:100%;
		}
		.sideme{
		font-size:20px;
		width:200px;
		height:100px;
		float:left;
		position:relative;
				

		}
	#ulid > div:nth-child(1):hover{
	

		background-image: url(images/cow.jpg);
		background-size:100%;
		height:100px;
		width:200px;
			background-color:red;
		transition: 1.4s;
		background-color:none;
		
			transition:background-image 55s;   
	}
	
	#ulid > div:nth-child(2):hover{
	background-color:red;
		transition: 1.4s;
	}
		#ulid > div:nth-child(3):hover{
	background-color:blue;
		transition: 1.4s;
	}
			#ulid > div:nth-child(4):hover{
	background-color:black;
		transition: 1.4s;
	}
		#ulid > div:nth-child(4):hover{
	background-color:black;
		transition: 1.4s;
	}
		
		
		
		#menu1 div{
		
		  float: left;
		  padding: 40px;
	
		}
	</style>
	<script type="text/javascript">
	if(document.getElementById("input_check").checked) {
	    document.getElementById("input_check_hidden").disabled = true;
	}
	</script>
</head>
<body>
	<!-- Header -->
	<section id="header">
		<div class="hamjung">
			<br>
			<h1 id="logo">
				<a href="index.jsp">함정요리</a>
			</h1>
		</div>
	</section>

	<div class="container">
		<ul class="nav nav-tabs" id="ulid">
			<c:forEach var="v" items="${list}">
				<c:if test="${v.k_super_seq eq 0}">
			
					<div class="sideme"><li><a data-toggle="tab" href="${shap}${v.k_seq}">${v.k_name}</a></li></div>
				</c:if>
			</c:forEach>
		</ul>
		
		<form action="/mealkit/search.do" method="get">
			<div class="tab-content">
				<c:forEach var="i" begin="1000" end="13000" step="1000">
					<div id="${i}" class="tab-pane fade">
						<c:forEach var="v" items="${list}">
							<c:if test="${v.k_super_seq == i}">
								<input type="checkbox" name="${v.k_name}" value='1'
									id="input_check" />${v.k_name}
								<input type="hidden" name="${v.k_name}" value='0'
									id="input_check_hidden" />
							</c:if>
						</c:forEach>
			
						<button type="submit" class="btn">검색</button>
					</div>
				</c:forEach>
			</div>
		</form>
		
	</div>
	

</body>
</html>