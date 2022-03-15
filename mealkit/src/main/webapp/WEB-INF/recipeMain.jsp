<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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


<style>
li {
	list-style: none;
}

a {
	text-decoration: none !important;
}

#logob {
	position: relative;
}

.form-control {
	border: 1px solid #f86146
}

.hamjung {
	overflow: hidden;
	position: absolute;
	left: 16%;
}

#inputdiv {
	left: 45%;
	position: absolute;
}

#inputg {
	height: 50px;
	max-width: 400px;
}

#ing {
	font-size: 8px;
}

#icon {
	font-size: 18px;
}

.box {
	width: 200px;
	float: left;
	margin: auto;
	margin: 2%;
	margin-left: 2%;
}

#main {
	width: 1000px;
	height: 800px;
	margin: 0 auto;
	position: relative;
}

.boxone {
	width: 100%;
	height: 200px;
	position: absolute;
}

.boxtwo {
	width: 100%;
	height: 200px;
	position: absolute;
	top: 300px;
}

.boxthree {
	width: 100%;
	height: 200px;
	position: absolute;
	top: 500px;
	padding-bottom: 100px;
}

.contain {
	height: 300px !important;
}

#page-wrapper {
	margin: 0 auto;
	height: 100%;
	width: 100%;
}
</style>
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">
		<div class="searchbar"></div>

		<!-- Header -->
		<section id="header">
			<div class="contain">
			
				<div id="logob">
					<div class="hamjung">
						<h1 id="logo">
							<a href="index.html">함정요리</a>
						</h1>

					</div>
					<div id="inputdiv" class="input-group mb-3">
						<input id="inputg" type="text" class="form-control input-text"
							placeholder="재료검색">
						<div id="buttong" class="input-group-append">
							<button id="ing" type="button" name="ingredient">
								<i id="icon" class="fa fa-search"></i>
							</button>
						</div>

					</div>

				</div>
			
		

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a id="sea" class="icon solid fa-search"
							href="left-sidebar.html"><span>검색</span></a></li>
						<li><a href="#" class="icon fa-chart-bar" href="recipe.html"><span>레시피</a></span>
						</li> 
						<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>밀키트</span></a></li>
						<li><a class="icon solid fa-retweet"
							href="right-sidebar.html"><span>즐겨찾기</span></a></li>
						<li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>게시판</span></a></li>
					</ul>
				</nav>


			</div>
		</section>
	</div>

		<div id="main">
			<div class="zero"></div>
			<div class="boxone">
				<c:forEach begin="1" end="4">
					<div class="box">
						<div class="img">
							<img src="images/p1.jpg" width="200px">
						</div>
						<div calss="txt">
							<h4>제육볶음1</h4>
						</div>
					</div>
				</c:forEach>
			</div>
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