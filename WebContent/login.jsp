<!DOCTYPE html>
<html>
<head>
  <title>The Computer Shop - Login</title>
  <style>
    /* Inline CSS styles */
    body {
      font-family: Arial, sans-serif;
      background-color: #c7fabe; /* Light shade background color */
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-form {
      max-width: 400px;
      background-color: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .login-form h1 {
      text-align: center;
      color: #333;
    }

    .login-form input[type="email"],
    .login-form input[type="password"] {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
      font-size: 16px;
    }

    .login-form input[type="submit"] {
      width: 100%;
      padding: 12px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    .login-form p {
      text-align: center;
      margin-top: 20px;
      font-size: 14px;
    }

    .login-form .links {
      text-align: center;
      margin-top: 20px;
    }

    .login-form .links a {
      color: #555;
      text-decoration: none;
      margin: 0 10px;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="login-form">
      <h1>The Computer Shop <br> Login</h1>
      <form action="loginAction.jsp" method="post">
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Login">
      </form>
      <div class="links">
        <a href="signup.jsp">Sign Up</a>
        <span>|</span>
        <a href="forgotPassword.jsp">Forgot Password?</a>
      </div>
    </div>
  </div>
</body>
</html>
