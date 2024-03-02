<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
    .topnav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #333;
        padding: 10px;
        color: white;
    }
    
    .topnav a {
        margin: 0 10px;
        color: white;
        text-decoration: none;
    }
    
    .search-container {
        margin: 0 10px;
    }
    
    body {
        margin: 0;
    }
</style>
</head>
<body>
<!-- Header -->
<div class="topnav sticky">
    <!-- Navigation links -->
    <%String email = session.getAttribute("email").toString(); %>
    <center><h2>Change Details<i class="fa fa-edit"></i></h2></center>
    <h2><a href="home.jsp"><i class='fas fa-arrow-circle-left'></i> Back</a></h2>
    <h2><a href=""><i class='fas fa-user-alt'></i> Your Profile (<%out.println(email);%>)</a></h2>
    <a href="changePassword.jsp"><i class='fas fa-key'></i> Change Password</a>
    <a href="addChangeAddress.jsp"><i class='fas fa-map-marker-alt'></i> Add or Change Address</a>
    <a href="changeSecurityQuestion.jsp"><i class="fa fa-repeat"></i> Change Security Question</a>
    <a href="changeMobileNumber.jsp"><i class='fas fa-phone'></i> Change Mobile Number</a>
</div>
<br>
<!-- Rest of the content -->
</body>
</html>
