<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("Null", null); %>

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
#ulid li{
 margin-top: 50px;
padding-left: 130px;
font-size: 20px;
}
#logo{
  color: #fd887a;
}

#menu1 div{

  float: left;
  padding: 40px;
  border-right: 1px solid black;
}


  </style>
</head>
  <body class="homepage is-preload">



			<!-- Header -->
				<section id="header">
			

								<div class="hamjung">
      
                  <br>	<h1 id="logo"><a href="index.html">함정요리</a></h1>
				
			</div>
      </section>

<div class="container">

  <ul class="nav nav-tabs" id="ulid">
    <li><a data-toggle="tab" href="#menu1">고기</a></li>
	<c:forEach var="v" items="${list}">
		<c:if test="${v.k_super_seq eq 0}" >
			<li><a data-toggle="tab" href="#menu2" ">${v.k_name}</a></li>
		</c:if>
			
			
	
	</c:forEach>
  </ul>

  <div class="tab-content">
  
    <div id="menu1" class="tab-pane fade">
    <div><ul>
	    <c:forEach var="v" items="${list}">
			<c:if test="${v.k_super_seq eq 1000}">
				<input type="check box" id="vehicle1" name="vehicle1">123
			</c:if>
		</c:forEach>
	</ul></div>
</div>
</div>
</div>

</body>
</html>