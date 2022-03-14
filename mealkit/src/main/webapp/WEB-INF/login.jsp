<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="./css/login.css">
<style>
*{
   list-style: none;
       text-decoration: none !important;
}
body{
text-align:center;

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
color: #ed786a;
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

.find_wrap, .relogin_find_wrap {
    padding: 20px 0 35px;
    text-align: center;
}
ol, ul {
    list-style: none;
}
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
    font-family: -apple-system,BlinkMacSystemFont,helvetica,"Apple SD Gothic Neo",sans-serif;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.wrap {
    position: relative;
    height: 100%;
    letter-spacing: -.5px;
}
body {
    height: 100%;
    color: #222;
    background-color: #fff;
}
html {
    height: 100%;
    font-size: 14px;
}

.find_wrap li{
margin-left:66px;
float:left;
}


</style>
</head>
<body>
<form action="/mealkit/login.do" method="post">
  <div id="div_login">
  
        <div id="div_login2"> <b>함정요리</b> </div>
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
            <a href="member.jsp" style="text-decoration: none; color: black;"> 회원가입 </a>
        </div>
        <div id="out">
            <input type="submit" value="회원탈퇴" id="out_a">
        </div>
        <ul class="find_wrap" id="find_wrap">
   <li><a target="_blank" href="#" class="find_text">아이디 찾기</a></li>

                <li><a target="_blank" href="#" class="find_text">비밀번호 찾기</a></li>
             
                <li><a target="_blank" href="#" class="find_text">고객센터</a>
                </li>

            </ul>
        
    </div>
    
 
</form>
</body>
</html>