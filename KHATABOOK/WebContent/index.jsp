<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


 <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
   
 
<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: white;
   color: black;
   text-align: center;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
  
}
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
  font-size: 35px;
  font-weight: bold;
}


.header a {
  font-size:20px;
  color: #e62e00;
}

.header a.active {
  background-color: #7575a3;
  color: white;
  margin-left:1px;
  margin-right:1px;
}
.header a.active1 {
  background-color: #7575a3;
  color: white;
  margin-left:1px;
  margin-right:1px;
}
.header a.active2 {
  background-color: #7575a3;
  color: white;
  margin-left:1px;
  margin-right:1px;
}
.header a.active3 {
  background-color: #7575a3;
  color: white;
  margin-left:1px;
  margin-right:1px;
}


.header-right {
  float: right;
}
.aa{
background-color:#00004d
;
text-align: center;
color:white;
margin-left:400px;
margin-right: 400px;
height:300px;
justify-content:center;
align-items: center;

 }
 .bb{
background-color:white;
text-align: center;
color:black;
height:250px;
 }
 .ss{
background-color:#f0f0f5;
text-align: center;
margin-top:10px;
margin-bottom: 10px;

 }
 .uu{
background-color:#f0f0f5;
margin-left:20px;
height:50px;
font-weight: bold;
font-size:20px;
margin-top:10px;
margin-bottom: 10px;



 }
 
 
 .cc{
background-color:white;
text-align: center;
color:gray;
height:250px;
margin-top:10px;
margin-bottom: 10px;
 }
 


media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
</style>
</head>
<body style="background-image:url('khatabook-800x600.gif');">

<div class="header" style="background-color: #f0f0f5;">
  <a href="#default" class="logo">KHATABOOK</a>
  <div class="header-right">
    <a class="active" href="prep_reg_form.htm">Sign Up</a>
    <a class="active1" href="prep_log_form.htm">Sign In</a>
    <a class="active2"href="about">Get the app</a>
    <a class="active3"href="logout.htm">Logout</a>
  </div>
</div>

	

<div class="footer">
  <p> © Copyright 2020, KhataBook</p>
</div>






	
</body>
</html>