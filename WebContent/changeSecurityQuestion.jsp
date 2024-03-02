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
<title>Change Security Question</title>
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
if("done".equals(msg))
{
%>
<h3 style="color: black; text-align: center;" class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 style="color: black; text-align: center;" class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3 style="color: black; text-align: center;">Select Your New Securtiy Question</h3>
  <select class="input-style" name="securityQuestion">
  <option value="Who is your best friend?">Who is your best friend?</option>
  <option value="What is the the name of your village?">What is the the name of your village?</option>
  <option value="What is the name of your primary School?">What is the name of your primary School?</option>
  <option value="What is the name of your favourite book?">What is the name of your favourite book?</option>
  </select>
 <hr>
 <h3 style="color: black; text-align: center;">Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your New Answer" required>
<hr>
<h3 style="color: black; text-align: center;">Enter Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="Enter your Password" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>