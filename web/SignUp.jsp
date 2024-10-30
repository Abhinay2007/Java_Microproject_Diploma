<%-- 
    Document   : SignUp
    Created on : Oct 17, 2024, 10:45:01 AM
    Author     : Sushil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up Form</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #8e2de2, #4a00e0);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .signup-form {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      width: 350px;
    }
    .signup-form h2 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 24px;
      color: #333;
    }
    .signup-form p {
      text-align: center;
      font-size: 14px;
      color: #666;
    }
    .signup-form input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
      font-size: 16px;
    }
    .signup-form input:focus {
      border-color: #4a00e0;
      outline: none;
    }
    .signup-form button {
      width: 100%;
      padding: 12px;
      border: none;
      border-radius: 5px;
      background-color: #4a00e0;
      color: #fff;
      font-size: 16px;
      cursor: pointer;
    }
    .signup-form button:hover {
      background-color: #3a00b5;
    }
    .signup-form .login-link {
      text-align: center;
      margin-top: 10px;
      font-size: 14px;
      color: #666;
    }
    .signup-form .login-link a {
      color: #4a00e0;
      text-decoration: none;
    }
  </style>
</head>
<body>
      <form action="SignUpServlet" method="post">
     <div class="signup-form">
    <h2>Sign Up</h2>
    <p>Sign up to Clue Mediator</p>
    <form action="#">
              <input type="text" name="name" placeholder="Name" required>
              <input type="email" name="email" placeholder="Email Address" required>
              <input type="tel" name="number" placeholder="Mobile Number" required>
              <input type="text" name="usname" placeholder="Username" required>
              <input type="password" name="pwd" placeholder="Password" required>
              <input type="password" name="cpwd" placeholder="Confirm Password" required>
             
      
              <button type="submit">Sign Up</button>
      </form>
      
      <form action="#" method="post">
           <p class="login-link">Already have an account? <a href="login.jsp">Log in</a></p>
    
  </div>
</form>
</body>
</html>

