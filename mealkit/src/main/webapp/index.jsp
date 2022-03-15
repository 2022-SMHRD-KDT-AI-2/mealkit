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
	<link rel="stylesheet" href="assets/css/index.css">

<script type="text/javascript">
	function goOut() {
		location.href="/mealkit/logout.do"
	}
	function gologin(){
		location.href="/mealkit/login.do"
	}
	function goJoin(){
		location.href="/mealkit/memberinsertform.do"
	}
</script>
<style>
#logi{
left:8%;
position:relative;
height:30px;
float:right;

}

#joi{
left:10%;
position:relative;
height:30px;
float:right;


}
#mem{
left:12%;
position:relative;
height:30px;
float:right;


}
#logo{
position:relative;
height:30px;
float:right;
}
#logi,#joi, #mem:hover{
   cursor: pointer;
}



</style>

</head>
<body class="homepage is-preload">

	<div id="page-wrapper">
		<div class="searchbar"></div>

<<<<<<< HEAD
			<!-- Header -->
				<section id="header">
					<div class="contain">


							<h1 id="logo"><a href="index.jsp">�����丮</a></h1>
							<p>���ϴ� ��Ḧ �����ؼ� �丮�� ��ŰƮ�� ��õ���ִ� ����Ʈ �Դϴ�.</p>
=======
		<!-- Header -->
		<section id="header">
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-AI-2/mealkit.git
		
			<div class="contain">
		
				<div id="logob">
					<div class="hamjung">
						<h1 id="logo">
							<a href="index.jsp">함정요리</a>
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
					
<<<<<<< HEAD
			<c:if test="${empty memVO}">
=======

			<div align="center">
			<div id="mem" onclick="gologin()"><img src="images/top_mem.png" alt="로그인"><br>회원정보</div>
			 	<div id="joi" onclick="goJoin()"><img src="images/top_join.gif" alt="회원가입"><br>회원가입</div>
				<div id="logi" onclick="gologin()"><img src="images/top_login.gif" alt="로그인"><br>로그인</div>
			
			
<c:if test="${empty memVO}">
					
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-AI-2/mealkit.git
				<div align="center">
<<<<<<< HEAD
			 		<div id="joi" onclick="goJoin()"><img src="images/top_join.gif" alt="ȸ������"><br>ȸ������</div>
					<div id="login" onclick="gologin()"><img src="images/top_login.gif" alt="�α���"><br>�α���</div>
=======
				<div id="mem" onclick="gologin()"><img src="images/top_mem.png" alt="�α���"><br>ȸ������</div>
			 	<div id="joi" onclick="goJoin()"><img src="images/top_join.gif" alt="ȸ������"><br>ȸ������</div>
				<div id="logi" onclick="gologin()"><img src="images/top_login.gif" alt="�α���"><br></br></div>

			</div>
				
			</c:if>
			<c:if test="${!empty memVO}">
			<div  style="width: 100%;" align="right">
				<div id="logo" onclick="goOut()"><img src="images/top_login.gif" alt="로그아웃"><br>로그아웃</div>
			</div>
			</c:if>
					
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-AI-2/mealkit.git
				</div>
			</c:if>
			
			<c:if test="${!empty memVO}">
				<div  style="width: 100%;" align="right">
					<div id="logo" onclick="goOut()"><img src="images/top_login.gif" alt="�α׾ƿ�"><br>�α׾ƿ�</div>
				</div>
			</c:if>
			</div>
				<nav id="nav">
					<ul>
						<li><a id="sea" class="icon solid fa-search"
							href="/mealkit/keyword.do"><span>검색</span></a></li>
						<li><a href="/mealkit/recipemain.do"
							class="icon fa-chart-bar"><span>레시피</span></a></li>
						<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>밀키트</span></a></li>
						<li><a class="icon solid fa-retweet"
							href="Star.jsp"><span>즐겨찾기</span></a></li>
						<li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>게시판</span></a></li>
					</ul>
				</nav>
			</div>
		</section>

		<!-- Features -->
		<section id="features">
			<div class="container">
				<header>
					<h2>
						오늘 추천 <strong>레시피!!!</strong>!
					</h2>
				</header>
				<div class="row aln-center">
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

					</div>
					<div class="col-12">
						<ul class="actions">
							<li><a href="#" class="button icon solid fa-file">맨위로</a></li>
						</ul>
					</div>
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