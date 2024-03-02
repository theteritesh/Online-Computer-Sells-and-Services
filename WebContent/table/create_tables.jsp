<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users (name varchar(100),email varchar(100) primary key, mobileNumber bigint, securityQuestion varchar(200),answer varchar(50),password varchar(30), address varchar(500), city varchar(40), state varchar(40), country varchar(40) )";
	String q2 = "create table product(id int, name varchar(200),category varchar(200),price int,active varchar(10))";
	String q3 = "create table cart(email varchar(100),product_id int, quantity int, price int,total int,address varchar(500),city varchar(20), state varchar(30),country varchar(30), mobileNumber bigint, orderDate varchar(100),deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(80),status varchar(20))";
 	String q4 = "create table request(id int AUTO_INCREMENT, email varchar(100),subject varchar(200),body varchar(1000),contactno varchar(100), PRIMARY KEY(id) )";
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	st.execute(q4);
	System.out.println("Table created");
	con.close();
}
catch(Exception e)
{
	System.out.print(e);
}
%>