<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ysabeau&display=swap" rel="stylesheet">

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Home</title>
    <style>
        input {
            font-family: 'Ysabeau', sans-serif;
        }

        body {
            font-family: 'Ysabeau', sans-serif;
            font-weight: bold;
            background-color: #C7FABE;
        }

        h3 {
            color: black;
            text-align: center;
            font-size: 80px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #64c64c;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a.button {
            display: inline-block;
            padding: 8px 16px;
            background-color: #64c64c;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #3f9441;
        }
    </style>
</head>
<body>
<hr>
<div style="color: black; text-align: center; font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></div>
<hr>
<%
String msg = request.getParameter("msg");
if ("done".equals(msg)) {
%>
<h3 class="alert">Product Successfully Updated!</h3>
<% } %>
<%
if ("wrong".equals(msg)) {
%>
<h3 class="alert">Something went wrong! Try again!</h3>
<% } %>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Status</th>
            <th>Edit</th>
        </tr>
    </thead>
    <tbody>
    <%
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from product ");
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><a href="editProduct.jsp?id=<%= rs.getString(1) %>" class="button">Edit</a></td>
    </tr>
    <%
    }
    } catch (Exception e) {
        System.out.println(e);
    }
    %>
    </tbody>
</table>

</body>
</html>
