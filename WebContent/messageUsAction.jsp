<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email = session.getAttribute("email").toString();
String subject = request.getParameter("subject");
String body = request.getParameter("body");
String contactno = request.getParameter("contactno");
try{

Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("insert into request(email,subject,body,contactno) values(?,?,?,?)");
ps.setString(1,email);
ps.setString(2,subject);
ps.setString(3,body);
ps.setString(4,contactno);
ps.executeUpdate();
response.sendRedirect("messageUs.jsp?msg=valid");
}
catch(Exception e)
{
System.out.println(e);
response.sendRedirect("messageUs.jsp?msg=invalid");
}
%>
