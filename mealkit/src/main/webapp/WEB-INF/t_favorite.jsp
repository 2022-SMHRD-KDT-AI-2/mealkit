<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  
render(){}  
  
  return(
       <>
     <div class="container">
     <header class="blog-header py-3">
       <div class="row flex-nowrap justify-content-between align-items-center">
       <div class="col-4 pt-1">
           <a class="text-muted" href="/">Information</a>
       </div>
       <div class="col-4 text-center">
           <a class="blog-header-logo text-dark" onClick={this.home}>함정요리</a>
       </div>
       <UserStatus></UserStatus>
       </div>
     </header>
     </div>
     </>
     )
     
     
   

</body>
</html>