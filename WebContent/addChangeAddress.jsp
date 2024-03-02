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
<title>Add or Change Address</title>
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
if("valid".equals(msg)){
%>
<h3 style="color: black; text-align: center;" class="alert">Address Successfully Updated !</h3>
<%} %>
<%if("invalid".equals(msg)){
	%>
<h3 style="color: black; text-align: center;" class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"'" );
	while(rs.next())
	{
%>
<form action="addChangeAddressAction.jsp" method="post">
<h3 style="color: black; text-align: center;">Enter Address</h3>
 <input class="input-style" type="text" name="address" value="<%=rs.getString(7) %>" placeholder="Enter Address" required>
 <hr>
 <h3 style="color: black; text-align: center;">Enter city</h3>
  <input class="input-style" type="text" name="city" value="<%=rs.getString(8) %>" placeholder="Enter City" required>
<hr>
<h3 style="color: black; text-align: center;">Enter State</h3>
 <input class="input-style" type="text" name="state" value="<%=rs.getString(9) %>" placeholder="Enter State" required>
<hr>
<h3 style="color: black; text-align: center;">Enter country</h3>
 <input class="input-style" type="text" name="country" value="<%=rs.getString(10) %>" placeholder="Enter Country" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
<br><br><br>
</html>