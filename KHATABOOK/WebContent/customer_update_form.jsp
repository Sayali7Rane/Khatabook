<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    

<% if(session.getAttribute("user") == null){
   	 session.setAttribute("err_mssg", "Login Again...");
   	 response.sendRedirect("prep_log_form.htm");
   	 
     }
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update customer Form</title>
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


<p style="font-weight: bold;color:black; font-size: 30px; text-align: center; margin-top:25px;">Update List:</p>

	
	<spr:form action="customer_update.htm" method="post" commandName="customer" >
	<table align="center" >
		
		<tr>
			<td>
				Customer Name :
			</td>
			<td>
				<spr:input path="customerName"/>
			</td>
		</tr>
		<tr>
			<td>
				Mobile No :
			</td>
			<td>
				<spr:input path="mobileNo"/>
			</td>
		</tr>
		<tr>
			<td>
				Item Name :
			</td>
			<td>
				<spr:input path="itemName"/>
			</td>
		</tr>
		<tr>
			<td>
				Purchase Date :
			</td>
			<td>
				<spr:input path="purchaseDate"/>
			</td>
		</tr>
		<tr>
			<td>
				Price :
			</td>
			<td>
				<spr:input path="price"/>
			</td>
		</tr>
		<tr>
			<td>
				Received Amount :
			</td>
			<td>
				<spr:input path="recivedMoney"/>
			</td>
		</tr>
		<tr>
			<td>
				Pending Amount :
			</td>
			<td>
				<spr:input path="remainingMoney"/>
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="customerId"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="customer_list.htm" >Back</a>
			</td>
			<td>
				<input type="submit" style="color:white; background-color:#0000cc;padding:5px; margin-top:7px;" onclick="popUp()" value="Update" >
			</td>
		</tr>
	</table>
	</spr:form>
	
	<script >
	function popUp()
	{

    alert("Updated Successfully !!!!");
		}
	</script>
	
	<div class="footer">
  <p>© Copyright 2020, KhataBook </p>
</div>
	
</body>
</html>