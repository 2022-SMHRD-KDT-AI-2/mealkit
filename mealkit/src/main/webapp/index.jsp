<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script type="text/javascript">
   function goOut() {
      location.href="/mealkit/logout.do"
   }
   function gologin(){
      location.href="/mealkit/loginform.do"
   }
   function goJoin(){
      location.href="/mealkit/memberinsertform.do"
   }
</script>

</head>
<body class="homepage is-preload">
    <!-- Header -->
	<%@ include file="/mainHeader.jsp" %>

	<!-- Features -->
      <section id="features">
         <div class="container">
            <header>
               <h2>
                  오늘 추천 <strong>레시피!!!!!!!!!</strong>
               </h2>
            </header>
            <div id="hidden" class="row aln-center">
               <div class="col-4 col-6-medium col-12-small">

                  <!-- Feature -->
         
                  <section>
                     <a class="no" href="#"><img class="im" src="images/p2.jpg"
                        alt="" width="300px" height="200px"></a>
                     <header>
                        <h3>닭볶음탕</h3>
                     </header>
                     <p>
                        <strong>재료 : </strong>닭1.1kg,감자1개,양파1개,당근1/3개,대파1/2대,홍고추1개,설탕2,고춧가루2,고추장1,카레가루1,간장3,다진마늘1,후추약간
                     </p>
                     <p>
                        <strong>레시피 : </strong> 1.감자,양파,당근,대파,홍고추 큼직하게 썰어준다.
                        2.설탕2,고춧가루2,고추장1,카레가루1,간장3,다진마늘1,후추 약간 넣고 양념장을 만들어준다.
                     </p>
                  </section>

               </div>
               <div class="col-4 col-6-medium col-12-small">

                  <!-- Feature -->
                  <section>
                     <a class="no" href="#"><img class="im" src="images/p1.jpg"
                        alt="" width="300px" height="200px" /></a>
                     <header>
                        <h3>제육볶음</h3>
                     </header>
                     <p>
                        <strong>재료 : </strong>닭1.1kg,감자1개,양파1개,당근1/3개,대파1/2대,홍고추1개,설탕2,고춧가루2,고추장1,카레가루1,간장3,다진마늘1,후추약간
                     </p>
                     <p>
                        <strong>레시피 : </strong> 1.감자,양파,당근,대파,홍고추 큼직하게 썰어준다.
                        2.설탕2,고춧가루2,고추장1,카레가루1,간장3,다진마늘1,후추 약간 넣고 양념장을 만들어준다.
                     </p>
                  </section>

               </div>
               <div class="col-4 col-6-medium col-12-small">

                  <!-- Feature -->
                  <section>
                     <a class="no" href="#"><img class="im" src="images/p3.jpg"
                        alt="" width="300px" height="200px" /></a>
                     <header>
                        <h3>불고기</h3>
                     </header>
                     <p>
                        <strong>재료 : </strong>닭1.1kg,감자1개,양파1개,당근1/3개,대파1/2대,홍고추1개,설탕2,고춧가루2,고추장1,카레가루1,간장3,다진마늘1,후추약간
                     </p>
                     <p>
                        <strong>레시피 : </strong> 1.감자,양파,당근,대파,홍고추 큼직하게 썰어준다.
                        2.설탕2,고춧가루2,고추장1,카레가루1,간장3,다진마늘1,후추 약간 넣고 양념장을 만들어준다.
                     </p>
      
                  </section>         
                  <div class="dir">
                  <div class="prebar">
                  <a href="#" class="prev">&lang;</a>
                  </div>
                                 <div class="nextbar">
             <a href="#" class="next">&rang;</a>
             </div>
             </div>
               </div>
  
               <div class="col-12">
                  <ul class="actions">
                     <li><a href="#" class="button icon solid fa-file">맨위로</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
      <%@ include file="/footer.jsp" %>
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