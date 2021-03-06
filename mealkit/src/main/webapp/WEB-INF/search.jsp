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
   <link rel="stylesheet" href="assets/css/search.css" />
   
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
               url : "http://220.95.45.213:8083/analysis",
               type : "post",
                data : formData,
                contentType: 'application/json',
                success : function(data){
                	$(".list-group").html("");
                    for(let i = 0; i < Object.keys(data).length; i++){
                       $(".list-group").append("<div class='container'><a href='/mealkit/searchdetail.do?r_seq="+Object.values(data)[i][0]+"' class='list-group-item'><div id='search_data'><table id='table1' border='1'><tr><td>"+Object.values(data)[i][1]+"</a></div></table></div></td></tr><tr><td>"+Object.values(data)[i][2]+"</td></tr>");
                       
                    }
                    console.log(Object.keys(data).length);
                    if(Object.keys(data).length == 0){
                    	$(".list-group").append("<div class='container'><a href='#' class='list-group-item'><div id='search_data'><table id='table1' border='1'><tr><td>???????????? ????????????<td></a></div></table></div></td></tr><tr><td>???????????? ????????????</td></tr>");
                        
                    }
                },
                error : function(){
                    alert("erro?????????!");
                }
            });
        }
</script>


</head>
<body>
   <!-- Header -->
	<%@ include file="/mainHeader.jsp"%>
	<section id="body">
		<div class="container">
			<ul class="nav nav-tabs" id="ulid">
				<c:forEach var="v" items="${listSuper}">
					<li><a class="" data-toggle="tab"
						href="${shap}${v.k_super_seq}">${v.k_super_name}</a></li>
				</c:forEach>
			</ul>

			<form action="/mealkit/search.do" id="form">
				<div class="button" style="margin:50px; postion:absolute; left:35%;">
					<button type="button" class="btn btn-primary" onclick="aa()">??????</button>
					<button type="reset" class="btn btn-primary">?????????</button>
				</div>
				<div class="tab-content">
					<c:forEach var="i" begin="1000" end="13000" step="1000">
						<div id="${i}" class="tab-pane fade">
							<c:forEach var="v" items="${list}">
								<c:if test="${v.k_super_seq == i}">
									<div class="searchdiv">
										<input class="kname" type="checkbox" name="${v.k_name}" value='1' />${v.k_name}
										<%-- <input class="kname" type="checkbox" name="${v.k_name}" value='-1' />${v.k_name}??????--%>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</c:forEach>
				</div>
				
			</form>
			
			<div class="list-group" style="margin-top:200px;">
			
			</div>
		</div>
	</section>
	

</body>
</html>