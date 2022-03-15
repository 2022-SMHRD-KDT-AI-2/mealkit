<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
   Strongly Typed by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
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
   <link rel="stylesheet" href="assets/css/index.css">

<script type="text/javascript">
   function goOut() {
      location.href="/mealkit/logout.do"
   }
   function gologin(){
      location.href="login.jsp"
   }
   function goJoin(){
      location.href="join.jsp"
   }
</script>
<style>
.image img {
   width: 50%;
   
}   
</style>

</head>
<body class="homepage is-preload">
<c:if test="${empty memVO}">
         <div  style="width: 100%;" align="right">
            <button class="btn btn-lg btn-primary"  onclick="gologin()">로그인</button>
            <button class="btn btn-join btn-primary" onclick="goJoin()">회원가입</button>
         </div>
         </c:if>
         <c:if test="${!empty memVO}">
         <div  style="width: 100%;" align="right">
            <button class="btn btn-lg btn-primary"  onclick="goOut()">로그아웃</button>
         </div>
         </c:if>
   <div id="page-wrapper">
      <div class="searchbar"></div>

      <!-- Header -->
      <section id="header">
         <div class="contain">
                     <div id="logob">
                        <div class="hamjung">
                     <h1 id="logo"><a href="index.html">함정요리</a></h1>
                  
                  </div>
                  
                     
                  
         

                  <!-- Nav -->
              <nav id="nav">
               <ul>
                  <li><a id="sea" class="icon solid fa-search" href="/mealkit/keyword.do"><span>검색</span></a>
            
               
               
               </li>
                  <li>
                    <a href="#" class="icon fa-chart-bar"><span>레시피</a></span>
            
                  </li>
                  <li><a class="icon solid fa-cog" href="left-sidebar.html"><span>밀키트</span></a></li>
                  <li><a class="icon solid fa-retweet" href="right-sidebar.html"><span>즐겨찾기</span></a></li>
                  <li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>게시판</span></a></li>
               </ul>
             </nav>

      
            
               
            <nav id="nav">
               <ul>
                  <li><a id="sea" class="icon solid fa-search"
                     href="/mealkit/keyword.do"><span>검색</span></a></li>
                  <li><a href="/mealkit/recipemain.do"
                     class="icon fa-chart-bar"><span>레시피</span></a></li>
                  <li><a class="icon solid fa-cog" href="left-sidebar.html"><span>밀키트</span></a></li>
                  <li><a class="icon solid fa-retweet"
                     href="right-sidebar.html"><span>즐겨찾기</span></a></li>
                  <li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>게시판</span></a></li>
               </ul>
            </nav>
         </div>
      </section>
         <!-- Main -->
            <section id="main">
               <div class="container">
                  <div id="content">

                     <!-- Post -->
                       <article class="">
                           <header>
                              <h2 clsaa="">${r_name}</h2>
                           </header>
                           <span class="image featured"><img src="p1.jpg" alt="" ></span>
                           <h3>요리재료</h3>
                           <p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
                           ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
                           sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
                           in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
                           magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
                           consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
                           justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
                           mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
                           Curabitur leo nibh, rutrum eu malesuada in tristique</p>
                           <h3>요리 설명</h3>
                           <p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat
                           Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit ligula
                           vel quam viverra sit amet mollis tortor congue. Sed quis mauris sit amet
                           magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada in,
                           tristique Curabitur leo nibh, rutrum eu malesuada in, tristique
                           at erat lorem ipsum dolor sit amet lorem ipsum sed consequat magna
                           tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros consequat
                           magna tempus</p>
                           
                        </article>

                  </div>
               </div>
            </section>

         
            
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