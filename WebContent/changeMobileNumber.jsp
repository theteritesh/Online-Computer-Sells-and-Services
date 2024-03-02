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
<title>Change Mobile Number</title>
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
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 style="color: black; text-align: center;" class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 style="color: black; text-align: center;" class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3 style="color: black; text-align: center;">Enter Your New Mobile Number</h3>

 <input class="input-style" type="text" name="mobilenumber" placeholder="Enter mobile number" pattern="[0-9]{10}" required title="Please enter a 10-digit mobile number">
 <hr>
<h3 style="color: black; text-align: center;">Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Your Password :" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>

</body>
<br><br><br>
</html>