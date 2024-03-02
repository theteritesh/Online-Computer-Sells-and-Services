<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../css/home-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <style>
        body {
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }
        
        nav {
            background-color: white;
        }
        
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #e9e9e9;
            display: flex;
            justify-content: center;
        }
        
        li {
            margin: 0 10px;
        }
        
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 16px;
            text-decoration: none;
        }
        
        li a:hover {
            background-color: #111111;
        }
    </style>
</head>

<body>
    <!--Header-->
    <nav>
        <div class="topnav sticky">
            <%String email=session.getAttribute("email").toString(); %>
            <center><h2>The Computer Shop</h2></center>
            <ul>
                <li><a href="addNewProduct.jsp"><i class='fas fa-plus-square'></i> Add New Product</a></li>
                <li><a href="allProductEditProduct.jsp"><i class='fab fa-elementor'></i> All Products & Edit Products</a></li>
                <li><a href="messagesReceived.jsp"><i class='fas fa-comment-alt'></i> Messages Received</a></li>
                <li><a href="ordersReceived.jsp"><i class="fas fa-archive"></i> Orders Received</a></li>
                <li><a href="cancelOrders.jsp"><i class='fas fa-window-close'></i> Cancel Orders</a></li>
                <li><a href="deliveredOrders.jsp"><i class='fas fa-dolly'></i> Delivered Orders</a></li>
                <li><a href="../logout.jsp"><i class='fas fa-share-square'></i> Logout</a></li>
            </ul>
        </div>
    </nav>
    <br>
    <!--table-->
</body>
</html>
