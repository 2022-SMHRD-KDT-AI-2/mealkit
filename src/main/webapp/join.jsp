<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SIGN-UP AMPM</title>

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="assets/css/style.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
      #ham{
     margin-left: 30%;
      list-style: none;
       text-decoration: none !important;
       color: #ed786a;
      }
    </style>
  </head>
  <body>


      <article class="container">
        <div class="page-header">
          <h1>회원가입 	<a id="ham" href="index.jsp">함정요리</a></h1>

        </div>
        <form class="form-horizontal" action="/mealkit/memberinsert.do" method="post">
			<div class="col-md-6 col-md-offset-3">
				<div class="form-group">
					<label for="InputId">아이디</label> <input type="text"
						class="form-control" id="Id" name="id" placeholder="아이디">
				</div>

				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> <input type="password"
						class="form-control" id="Password" name="Password" placeholder="비밀번호">
				</div>

				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label> <input type="password"
						class="form-control" id="Password2" name="Password2" placeholder="비밀번호 확인">
					<p class="help-block">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p>
				</div>

				<div class="form-group">
					<label for="inputPhoneNum">전화번호</label> <input type="text"
						class="form-control" id="PhoneNum" name="phoneNum" placeholder="전화 번호를 입력해 주세요">
				</div>

				<div class="form-group">
					<label for="InputEmail">생년월일</label> <input type="date"
						class="form-control" id="birthday" name="birthday" placeholder="전화 번호를 입력해 주세요">
				</div>

				<div class="form-group">
					<label for="useradress">주소</label> <input type="text"
						class="form-control" id="adress" name="adr" placeholder="주소를 입력해 주세요">
				</div>



				<div class="form-group">
					<label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="Email" name="emai" placeholder="이메일 주소를 입력해 주세요">
				</div>

				<div class="form-group text-center">
					<button type="submit" class="btn btn-info">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="reset" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</div>
		</form>

      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>

