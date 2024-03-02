<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ysabeau&display=swap" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    <style>
        h1 {
            color: black;
            text-align: center;
            font-size: 50px;
        }
        
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
        
        .container {
            text-align: center;
            margin-top: 50px;
        }
        
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            font-size: 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Welcome Admin!</h1>
    <div class="container">
        <h3>THE COMPUTER SHOP</h3>
        <br>
        <a href="allProductEditProduct.jsp" class="button">Products</a>
        <a href="ordersReceived.jsp" class="button">Orders</a>
        <a href="messagesReceived.jsp" class="button">Messages</a>
    </div>
</body>
</html>
