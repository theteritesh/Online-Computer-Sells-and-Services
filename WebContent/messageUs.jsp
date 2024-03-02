<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ysabeau&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
<style>
    input {
      font-family: 'Julius Sans One', sans-serif;
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
  
    th {
        background-color: #64c64c;
        color: white;
    }
    .alert{
color:black;
}
    
</style>
<script>
    window.onload = function() {
        if (!window.location.hash) {
            window.location = window.location + '#loaded';
            window.location.reload();
        }
    }
</script>
</head>
<body>
<br>
<hr>
<div style="color: black; text-align: center; font-size: 30px;">Send us your requirements...!!!</div>
<hr>
<br>
<div style="color: black; text-align: center; font-size: 15px; margin : 0px 25px 0px 25px;">We also provide personalized computers to our customers according to their requirements in various categories such as gaming, professional work, editing, and more. If you want to build a PC with specific specifications, send us your requirements, and we will contact you to guide you further in building your dream machine.</div>
<br>
<hr>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:black;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 style="text-align:center; color:black ">Something Went Wrong! Try Again!</h3>
<%} %>
<form action="messageUsAction.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="What do you want to build? Gaming/Editing/Professional PC" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter Your Requirements [Hardware / Software]" required></textarea>
<hr>
<input class="input-style" type="text" name="contactno" placeholder="Enter mobile number" pattern="[0-9]{10}" required title="Please enter a 10-digit mobile number">
<hr>
<button class="button" type="submit"> Send<i class="far fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
</body>
</html>
