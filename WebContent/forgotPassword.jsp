<!DOCTYPE html>
<html>
<head>
  <title>The Computer Shop - Forgot Password</title>
  <style>
    /* CSS styles */
    body {
      font-family: Arial, sans-serif;
      background-color: #c7fabe; /* Light shade background color */
    }

    #container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .forgot-password {
      max-width: 400px;
      background-color: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .forgot-password h1 {
      text-align: center;
      color: #333;
      font-size: 28px;
      margin-bottom: 30px;
    }

    .forgot-password input[type="email"],
    .forgot-password input[type="text"],
    .forgot-password select,
    .forgot-password input[type="password"],
    .forgot-password input[type="submit"] {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
      font-size: 16px;
    }

    .forgot-password input[type="submit"] {
      background-color: #4caf50;
      color: #fff;
      cursor: pointer;
    }

    .forgot-password a {
      text-decoration: none;
      color: #555;
      font-size: 14px;
    }

    .why-forgot-password {
      text-align: center;
      margin-top: 20px;
    }

    .why-forgot-password h1 {
      margin-bottom: 10px;
    }

    .why-forgot-password h2 {
      font-size: 18px;
      margin-bottom: 10px;
    }

    .why-forgot-password p {
      color: #777;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div id="container">
    <div class="forgot-password">
      <h1>The Computer Shop<br>Forgot Password</h1>
      <form action="forgotPasswordAction.jsp" method="post">
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" pattern="[0-9]{10}" required title="Please enter a 10-digit mobile number">
        <select name="SecurityQuestion">
          <option value="Who is your best friend?">Who is your best friend?</option>
          <option value="What is the name of your village?">What is the name of your village?</option>
          <option value="What is the name of your primary School?">What is the name of your primary School?</option>
          <option value="What is the name of your favourite book?">What is the name of your favourite book?</option>
        </select>
        <input type="text" name="answer" placeholder="Enter Answer" required>
        <input type="password" name="password" placeholder="Enter Your New Password" required minlength="8" maxlength="20">
        <input type="submit" value="Save">
      </form>
      <h2><a href="login.jsp">Login</a></h2>
    </div>
    <div class="why-forgot-password">
      <% String msg=request.getParameter("msg");
      if ("done".equals(msg)) {
        %>
        <h1>Password Changed Successfully!</h1>
      <%}%>
      <% if ("invalid".equals(msg)) {
        %>
        <h1>Something Went Wrong! Try Again!</h1>
      <%}%>

   </div>
  </div>
</body>
</html>
