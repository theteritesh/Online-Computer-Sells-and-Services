<!DOCTYPE html>
<html>
<head>
  <title>The Computer Shop - Sign Up</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #c7fabe;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .signup {
      max-width: 400px;
      background-color: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .signup h1 {
      text-align: center;
      color: #333;
      font-size: 28px;
      margin-bottom: 30px;
    }

    .signup input[type="text"],
    .signup input[type="email"],
    .signup input[type="password"],
    .signup select {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
      font-size: 16px;
    }

    .signup input[type="submit"] {
      width: 100%;
      padding: 12px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    .signup p {
      text-align: center;
      margin-top: 20px;
      font-size: 14px;
    }

    .signup .links {
      text-align: center;
      margin-top: 20px;
    }

    .signup .links a {
      color: #555;
      text-decoration: none;
      margin: 0 10px;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="signup">
      <h1>The Computer Shop <br> Sign Up</h1>
      <form action="signupAction.jsp" method="post">
        <input type="text" name="name" placeholder="Enter name" required>
        <input type="email" name="email" placeholder="Enter email" required>
        <input type="text" name="mobilenumber" placeholder="Enter mobile number" pattern="[0-9]{10}" required title="Please enter a 10-digit mobile number">
        <select name="SecurityQuestion">
          <option value="Who is your best friend?">Who is your best friend?</option>
          <option value="What is the name of your village?">What is the name of your village?</option>
          <option value="What is the name of your primary School?">What is the name of your primary School?</option>
          <option value="What is the name of your favourite book?">What is the name of your favourite book?</option>
        </select>
        <input type="text" name="answer" placeholder="Enter answer" required> 
        <input type="password" name="password" placeholder="Enter your password" required minlength="8" maxlength="20">
        <input type="submit" value="Sign Up">
      </form>
      <div class="links">
        <a href="login.jsp">Login</a>
      </div>
    </div>
    <div class="whysign">
      <% 
      String msg = request.getParameter("msg");
      if (msg != null) {
        if (msg.equals("valid")) 
        { 
          %>
          <h1>Succesfully Registered</h1>
        <% } else if (msg.equals("invalid")) { %>
          <h1>Something Went Wrong</h1>
        <% }
      } %>
    </div>
  </div>
</body>
</html>
