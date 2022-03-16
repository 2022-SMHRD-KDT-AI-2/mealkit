<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
   integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
   crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/recipeMain.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">

let Item1 = new Object();
Item1.id = '<c:out value="${memVO.getM_id()}"/>';
var jsonData = JSON.stringify(Item1);

$(function(){
    $.ajax({
          url : "http://220.95.45.213:8083/star",
          type : "post",
          contentType: 'application/json',
          data: jsonData,
        success : function(data){
           alert(data);
           $(".list-group").html("");
            for(let i = 0; i < Object.keys(data).length; i++){
               $(".list-group").append("<div class='container'><a href='/mealkit/searchdetail.do?r_seq="+Object.values(data)[i][0]+"' class='list-group-item'><div id='search_data'><table id='table1' border='1'><tr><td>"+Object.values(data)[i][1]+"</a></div></table></div></td></tr><tr><td>"+Object.values(data)[i][2]+"</td></tr>");
               
            }
        },
        error : function(){
            alert("erro입니다!");
        }
    });
})
</script>
</head>
<body class="homepage is-preload">
   <div id="page-wrapper">
      <div class="searchbar"></div>
      <!-- Header -->
      <%@include file="/mainHeader.jsp" %>
   </div>

   
   <div class="list-group">
         
   </div>
   

   



      <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.dropotron.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>
</body>
</html>