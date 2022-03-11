<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="./css/login.css">
<style>
body{
    text-align: center;
    background-color: lightgray;
}
#div_login{
margin-left: 30%;
width: 500px;

height: 800px;
background-color: white;
}
#div_login2{
padding-top: 50px;
font-size: 30px;

}
#div_member{
height: 40px;
margin-top: 30px;
font-size: 20px;
border-bottom: 1px solid lightgray;
}
#div_id{
width: 500px;
height: 60px;

text-align: center;
margin-top: 20px;
}
#div_password{
width: 500px;
height: 60px;

text-align: center;
margin-top: 20px;
}
#input_id{
width: 400px;
height: 50px;
text-align: center;

}
#input_password{
width: 400px;
height: 50px;
text-align: center;

}
#div_login_button{
width: 500px;
height: 60px;

text-align: center;
margin-top: 20px;

}
#button_login{
background-color: black;
color: white;
width: 400px;
height: 50px;
font-size: 20px;
font-weight: bold;
border-radius: 10px;
margin-top: 5px;
}
#out{
width: 500px;
height: 60px;

text-align: center;
margin-top: 20px;

}
#out_a{
background-color: rgb(14, 238, 227);
color: black;
width: 400px;
height: 50px;
font-size: 20px;
font-weight: bold;
border-radius: 10px;
margin-top: 5px;
border: none;

}


</style>
</head>
<body>
<form action="/mealkit/login.do"" method="post">
  <div id="div_login">
  
        <div id="div_login2"> <b>로그인</b> </div>
        <div id="div_member">  </div>
        
        <div id="div_id"> 
            <input type="text" name="memId" id="input_id" placeholder="아이디를 입력하세요 ">
        </div>
        <div id="div_password"> 
            <input type="password" name="memPwd" id="input_password" placeholder="비밀번호를 입력하세요 ">
        </div>
        <div id="div_login_button">
            <input type="submit" value="로 그 인"
            id="button_login">

        </div>
       
        <div style="margin-top: 15px;">
            <a href="zSignup.jsp" style="text-decoration: none; color: black;"> 회원가입 </a>
        </div>
        <div id="out">
            <input type="submit" value="회원탈퇴" id="out_a">
        </div>
        
    </div>
 
</form>
</body>
</html>