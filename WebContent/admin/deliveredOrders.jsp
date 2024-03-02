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
    <link rel="stylesheet" href="../css/ordersReceived-style.css">
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

        #customers {
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers th {
            background-color: #64c64c;
            color: white;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th:first-child,
        #customers td:first-child {
            width: 10%;
        }
    </style>
</head>
<body>
<hr>
<div style="color: black; text-align: center; font-size: 30px;">Delivered Orders <i class='fas fa-dolly'></i></div>
<hr>
<table id="customers">
    <thead>
        <tr>
            <th>Mobile Number</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Order Date</th>
            <th>Expected Delivery Date</th>
            <th>Payment Method</th>
            <th>T-ID</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <%
        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='Delivered'");
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString(10) %></td>
            <td><%= rs.getString(17) %></td>
            <td><%= rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%= rs.getString(5) %> </td>
            <td><%= rs.getString(6) %></td>
            <td><%= rs.getString(7) %></td>
            <td><%= rs.getString(8) %></td>
            <td><%= rs.getString(9) %></td>
            <td><%= rs.getString(11) %></td>
            <td><%= rs.getString(12) %></td>
            <td><%= rs.getString(13) %></td>
            <td><%= rs.getString(14) %></td>
            <td><%= rs.getString(15) %></td>
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
