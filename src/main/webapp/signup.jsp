<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="container">
        <div class="signup-form">
            <h2>Sign Up</h2>
            <form action="signupAction.jsp" method="post">
                <div class="form-group">
                    <input type="text" id="name" name="name" placeholder="Name" required>
                </div>
                <div class="form-group">
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <input type="tel" id="mobile" name="mobile" placeholder="Mobile Number" required>
                </div>
                <div class="form-group">
                     <select id="security-question" name="security-question" required>
                        <option value="" disabled selected>Select a security question</option>
                        <option value="book">What is the title of your favorite book?</option>
                        <option value="pet">What was the name of your first pet?</option>
                        <option value="movie">What is the title of your favorite movie?</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" id="security-answer" name="security-answer" placeholder="Security Answer" required>
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <button type="submit">Sign Up</button>
            </form>
            <div class="links">
                <a href="login.jsp">Login</a>
            </div>
        </div>
        <div class="info">
            <h2>E-commerce Website</h2>
            <p>Welcome to our e-commerce website. Shop for your favorite items with ease!</p>
        </div>
    </div>
</body>
</html>