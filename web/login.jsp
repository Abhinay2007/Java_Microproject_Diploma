<%-- 
    Document   : login
    Created on : Oct 14, 2024, 10:38:36 PM
    Author     : Sushil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet, java.io.IOException , java.io.PrintWriter , java.sql.Connection , java.sql.DriverManager , java.sql.PreparedStatement , java.sql.ResultSet, java.sql.SQLException, java.util.logging.Level, java.util.logging.Logger, jakarta.servlet.http.HttpServletRequest, java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #3a81f1, #a159d1);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background-color: white;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .login-box h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-box a {
            text-decoration: none;
            color: #555;
            font-size: 12px;
        }

        .login-box a:hover {
            color: #3a81f1;
        }

        .login-box button {
            width: 100%;
            padding: 10px;
            border: none;
            background-color: #f1f1f1;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
            font-size: 16px;
        }

        .login-box button:hover {
            background-color: #e0e0e0;
        }

        .signup {
            margin-top: 20px;
            font-size: 14px;
        }

        .signup a {
            color: #3a81f1;
            text-decoration: none;
        }

        .signup a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form action="LoginServlet" method="post">
     <div class="login-box">
        <h2>Login</h2>
        <form action="#">
            <input type="text" name="txtname" placeholder="Username" required>
            <input type="password" name="txtPwd" placeholder="Password" required>
            <a href="#">Forget Password?</a><br><br>
            <button type="submit">Login</button>
        </form>
        <form action="#" method="post">
           <div class="signup">
            Not a Member? <a href="SignUp.jsp">Signup</a> 
         </div>
        </form>

    </div>   
        
    </form>

    

</body>
</html>
