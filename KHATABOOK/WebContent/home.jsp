<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

body{

background-color:#f0f0f5;
}

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


.act4 {
  background-color:  #e6005c;
  color: white;
font-weight:bold;
border-radius:25px;
height: 24px;
justify-content:center;
align-items: center;

}
.act5 {
  background-color:  #e6005c;
  color: white;
  font-weight:bold;
border-radius:25px;
height: 24px;
justify-content:center;
align-items: center;



}




</style>




</head>
<body>
<div class="header">
  <a href="#default" class="logo">KHATABOOK</a>
  <div class="header-right">
    <a class="active" href="prep_reg_form.htm">Sign Up</a>
    <a class="active1" href="prep_log_form.htm">Sign In</a>
    <a class="active2"href="about">Get the app</a>
    <a class="active3"href="logout.htm">Logout</a>
  </div>
</div>

<table align="center" style="margin-top: 15px;">
		<tr><td>&nbsp;&nbsp;</td></tr>
		
		<tr>
		
			<td>Add customers here: </td>
			<td><a class="act4" href="prep_customer_add_form.htm" >+ ADD CUSTOMER</a> </td>
		</tr>
		
		<tr>
			<td> List of customers: </td>
			<td><a class="act5" href="customer_list.htm" > CUSTOMER LIST</a> </td>
		</tr>
		</table>
		
		
		
<h1 style="text-align:center ;color:#3d3d5c; margin-top: 50px;">Digital India's </h1>
	<h1 style="text-align:center ;color:#3d3d5c;margin-bottom: 50px;">Digital Khata </h1>
	<p style="text-align:center ;color:#7575a3;">Manage your Business & Personal ledgers on your phone and computer.</p>
		
	
	
	
	
	
	
	
	
	<p style="text-align: center; margin-bottom:20px">"Khatabook raises $25M to help small businesses in India record financial transactions digitally and accept online payments.
"</p>
<p style="font-weight: bold; color:black ;font-size:20px;margin-left: 20px;">What people say about us</p>
<div class="aa">
<br>
<p style="margin-top: 50px; margin-bottom: 60px; font-size: 20px;">"Credit is essential for our business.Khatabook has made it easy for me to give credits which has given a big boost to  my business Great web app."-Sayali  </p>
<br>

</div>
<div class="bb">
<br>
<p style="font-weight: bold;font-family: sans-serif;font-size:30px; margin-top: 50px;margin-bottom: 50px;">Small business big dreams</p>
<p style="color:gray; ">It's easy to grow your business with Khatabook.<p>
</div>



<div class="ss">

<p style="color:blue;font-weight: bold;" >FREE REMINDER</p>
<p style="font-weight: bold;font-family: sans-serif;font-size:30px;">3 Times faster return on credits with FREE payment reminders</p>
<p> With Payment Reminders feature, an automatic SMS is sent to your customers everytime a transaction is recorded - for FREE. High transparency with faster repayments is great for growth!
</p>
</div>


<div class="ss">

<p style="color:blue;font-weight: bold;">SAFE AND SECURE</p>

<p style="font-weight: bold;font-family: sans-serif;font-size:30px;">Business in your pocket</p>
<p>All details of credit-debit for any number of customers across multiple businesses is ready and handy on your phone. Every merchant has the right to stress-free business!
</p>

</div>
<div class="ss">

<p style="color:blue;font-weight: bold;">MANAGE CREDIT ACCOUNTS</p>

<p style="font-weight: bold;font-family: sans-serif;font-size:30px;">Time is moneys</p>
<p>Save precious hours by updating daily business accounts in minutes, only on the KhataBook app. More time for growth, more time for life!
</p>

</div>
<div class="ss">

<p style="color:blue;font-weight: bold;">MULTILINGUAL</p>

<p style="font-weight: bold;font-family: sans-serif;font-size:30px;">Available in 10+ languages</p>
<p>KhataBook is available in 10+ languages like Hindi, Punjabi, Kannada, Tamil and even Hinglish. It is truly an app for everyone!
</p>

</div>



<div class="cc">
<br>
<p style="font-weight: bold;font-family: sans-serif;font-size:20px; margin-top: 50px;margin-bottom: 50px;">"Sequoia Surge-Backed Khatabook Is Helping Indian Kirana Stores Get "Cash Back" Digitally".</p>
<p style="color:blue;font-weight: bold; ">Read article<p>
</div>
<div class="uu">
<br>
<p style="font-size:30px;
  color: #e62e00;"></p>
  
</div>




		
		
	
	<div class="footer">
	
  <p>© Copyright 2020, KhataBook </p>
</div>
	
</body>
</html>

