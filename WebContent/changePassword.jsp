<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ysabeau&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
<style>
hr
{width:70%;}
input {
      font-family: 'Ysabeau', sans-serif;
    }
     body {
      font-family: 'Ysabeau', sans-serif;
      font-weight: bold;
      background-color: #C7FABE;
    }
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
	<h3 style="color: black; text-align: center;" class="alert">New password and Confirm password does not match!</h3>
<%} %>
<%
if("wrong".equals(msg))
{%>
<h3 style="color: black; text-align: center;" class="alert">Your old Password is wrong!</h3>
<%} %>
<%
if("done".equals(msg))
{%>
<h3 style="color: black; text-align: center;" class="alert">Password change successfully!</h3>
<%} %>
<%
if("invalid".equals(msg))
{%>
<h3 style="color: black; text-align: center;" class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form action="changePasswordAction.jsp" method="post">
<h3 style="color: black; text-align: center;">Enter Old Password</h3>
 <input class="input-style" type="password" name="oldPassword" placeholder="Enter old Password" required>
  <hr>
 <h3 style="color: black; text-align: center;">Enter New Password</h3>
 <input class="input-style" type="password" name="newPassword" placeholder="Enter New Password" required>
 <hr>
<h3 style="color: black; text-align: center;">Enter Confirm Password</h3>
<input class="input-style" type="password" name="confirmPassword" placeholder="Re-enter your New Password" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>