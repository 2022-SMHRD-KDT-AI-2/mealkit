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
	position:relative;


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
		
		#search{
		margin-left:45%;
		position:absolute;
		}
		
		
		#menu1 div{
		
		  float: left;
		  padding: 40px;
	
		}
<<<<<<< HEAD
		#ulid tab-content{
	     color : blue;
	     
		}
		#form > div{

		}
	li{
	list-style:none;
	font-size:15px;

	color:#333;

	
	}
	.btn{
	text-align:center;}

div{
text-size"30px";}
.searchdiv{
	float:left;
width:140px;
=======
		
		.kname{
		font-size:50px;
		}
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-AI-2/mealkit.git
	</style>
	<script type="text/javascript">
	
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

			<c:forEach var="v" items="${listSuper}">
				<li><a data-toggle="tab" href="${shap}${v.k_super_seq}">${v.k_super_name}</a></li>
			</c:forEach>
		</ul>
		
		<form action="/mealkit/search.do" id = "form">
		
			<div class="tab-content">
				<c:forEach var="i" begin="1000" end="13000" step="1000">
					<div id="${i}" class="tab-pane fade">
						<c:forEach var="v" items="${list}">
							<c:if test="${v.k_super_seq == i}">
<<<<<<< HEAD
								<div class="searchdiv"><li><input class="kname" type="checkbox" name="${v.k_name}" value='1'
									id="input_check" />${v.k_name}</li></div>
									<div class="searchdiv"><li><input class="kname" type="hidden" name="${v.k_name}" value='0'
								
									id="input_check_hidden" /></li></div>
=======
								<input class="kname" type="checkbox" name="${v.k_name}" value='1'
									id="input_check" />${v.k_name}
								<input class="kname" type="hidden" name="${v.k_name}" value='0'
									id="input_check_hidden" />
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-AI-2/mealkit.git
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
				
			</div>
			
		</form>
	</div>
	<div id=search>
	     <button type="button" class="btn" onclick="aa()">검색</button>
	     </div>
			
	
<script>
		
        function aa(){
        	var formData = new FormData($('#form')[0]);
            $.ajax({
            	url : "http://127.0.0.1:8082/analysis",
            	type : "post",
                data : formData,
                cache : false,
                contentType : false,
                processData : false,
                success : function(){
                	alert("suc입니다!");
                	//왜 success 가 안뜰까요??
                },
                error : function(){
                    alert("erro입니다!");
                }
            });
        }
    </script>
    
    
</body>
</html>