<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-commerce Website</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="container">
        <div class="login-form">
            <h2>Login</h2>
            <form action="loginAction.jsp" method="post">
                <div class="form-group">
                    <input type="text" id="email" name="email" placeholder="email" required>
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <button type="submit">Login</button>
            </form>
            <div class="links">
                <a href="signup.jsp">Sign Up</a> | <a href="reset.jsp">Forgot Password</a>
            </div>
        </div>
        <div class="info">
            <h2>E-commerce Website</h2>
            <p>Welcome to our e-commerce website. Shop for your favorite items with ease!</p>
            <%
            		String msj=request.getParameter("msj");
            		if("invalid".equals(msj)){
            %>
            		<h3 class="error-message">Invalid Credintials!!!</h3>
            <% 
            		}
            %>
    </div>
</body>
</html>