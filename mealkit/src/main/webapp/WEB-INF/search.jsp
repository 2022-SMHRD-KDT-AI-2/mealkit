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
	<link rel="stylesheet" href="assets/css/search.css">
<style>
</style>



<script>


		function objectifyForm(formArray) {
		    //serialize data function
		    var returnArray = {};
		    for (var i = 0; i < formArray.length; i++){
		        returnArray[formArray[i]['name']] = formArray[i]['value'];
		    }
		    return returnArray;
		}
		function serialize (rawData) {
			let rtnData = {};
			for (let [key, value] of rawData) {
				let sel = document.querySelectorAll("[name=" + key + "]");
				// Array Values 
				if (sel.length > 1) { 
					if (rtnData[key] === undefined) {
						rtnData[key] = []; 
						} 
					rtnData[key].push(value); 
				} 
				// Other 
				else { 
					rtnData[key] = value; 
					} 
				} 
			return rtnData; 
		}

		
		
        function aa(){
        	let formData = new FormData($('#form')[0]);
        	
        	let serializedFormData = serialize(formData);
        	formData = JSON.stringify(serializedFormData);
        	
        	//var formData1 = objectifyForm(formData);
        	//var formData2 = JSON.stringify(formData);
        	console.log(formData);
            //var rlist = "<c:out value='${rlist}'/>";
        	$.ajax({
            	url : "http://127.0.0.1:8083/analysis",
            	type : "post",
                data : formData,
                contentType: 'application/json',
                success : function(){
        			//$("#search_data").append("<div><button class='btn'></button></div>");
        			//console.log(rlist);
                	alert("suc입니다!");
                	console.log(formData);
                },
                error : function(){
                    alert("erro입니다!");
                }
            });
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
								<div class="searchdiv"><li><input class="kname" type="checkbox" name="${v.k_name}" value='1'
									  />${v.k_name}</li></div>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
			<button type="button" class="btn" onclick="aa()">검색</button>
		</form>
	</div>
	
	
	<div class="list-group">
		<c:forEach var="v" items="${rlist}">
			<div class="container">
				<a href="#" class="list-group-item">
					<div id="search_data" onclick="location.href='#'">
						<table border="1">
							<tr>
								<td>${v.getR_name()}</td>
							</tr>
							<tr>
								<td>${v.getR_content()}</td>
							</tr>
						</table>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
	--%>
	
</body>
</html>