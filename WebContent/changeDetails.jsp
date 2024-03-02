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

<title>Change Details</title>
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
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next())
	{


%>
<h3 style="color: black; text-align: center;">Name  :  <%=rs.getString(1) %> </h3>
<hr>
 <h3 style="color: black; text-align: center;">Email  :  <%=rs.getString(2) %> </h3>
 <hr>
 <h3 style="color: black; text-align: center;">Mobile Number  :  <%=rs.getString(3) %></h3>
 <hr>
<h3 style="color: black; text-align: center;">Security Question  :  <%=rs.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>