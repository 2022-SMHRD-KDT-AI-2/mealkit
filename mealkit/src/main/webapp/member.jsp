<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
          <h1>ȸ������ 	<a id="ham" href="index.jsp">�����丮</a></h1>

        </div>
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
              <label for="InputId">���̵�</label>
              <input type="text" class="form-control" id="Id" placeholder="���̵�">
            </div>
			
            <div class="form-group">
              <label for="InputPassword1">��й�ȣ</label>
              <input type="password" class="form-control" id="Password" placeholder="��й�ȣ">
            </div>
			
            <div class="form-group">
              <label for="InputPassword2">��й�ȣ Ȯ��</label>
              <input type="password" class="form-control" id="Password2" placeholder="��й�ȣ Ȯ��">
              <p class="help-block">��й�ȣ Ȯ���� ���� �ٽ� �ѹ� �Է� �� �ּ���</p>
            </div>

            <div class="form-group">
              <label for="inputPhoneNum">��ȭ��ȣ</label>
              <input type="text" class="form-control" id="PhoneNum" placeholder="��ȭ ��ȣ�� �Է��� �ּ���">
            </div>

            <div class="form-group">
              <label for="InputEmail">�������</label>
              <input type="date" class="form-control" id="birthday" placeholder="��ȭ ��ȣ�� �Է��� �ּ���">
            </div>

            <div class="form-group">
              <label for="useradress">�ּ�</label>
              <input type="text" class="form-control" id="adress" placeholder="�ּҸ� �Է��� �ּ���">
            </div>
                     
	

            <div class="form-group">
              <label for="InputEmail">�̸��� �ּ�</label>
              <input type="email" class="form-control" id="Email" placeholder="�̸��� �ּҸ� �Է��� �ּ���">
            </div>
			
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">ȸ������<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">�������<i class="fa fa-times spaceLeft"></i></button>
            </div>
        </div>

      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
