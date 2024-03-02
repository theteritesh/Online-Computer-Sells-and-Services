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
    </style>
</head>
<body>
<hr>
<div style="color: black; text-align: center; font-size: 30px;">Messages Received <i class='fas fa-comment-alt'></i></div>
<hr>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Subject</th>
            <th>Body</th>
            <th>Contact No</th>
        </tr>
    </thead>
    <tbody>
    <%
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from request");
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
    </tr>
    <%
    }
    } catch (Exception e) {
        System.out.println(e);
    }
    %>
    </tbody>
</table>
<br>
<br>
<br>
</body>
</html>
