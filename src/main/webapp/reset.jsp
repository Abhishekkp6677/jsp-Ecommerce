<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reset password</title>
 <link rel="stylesheet" href="css/login.css">
</head>
<body>
	 <div class="container">
        <div class="reset-form">
            <h2>Password Reset</h2>
            <form action="passwordResetAction.jsp" method="post">
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
                    <input type="password" id="new-password" name="new-password" placeholder="New Password" required>
                </div>
                <button type="submit">Save</button>
                <div class="links">
                <a href="login.jsp">Login</a>
            	</div>
            </form>
        </div>
        <div class="info">
            <h2>E-commerce Website</h2>
            <p>Welcome to our e-commerce website. Shop for your favorite items with ease!</p>
        <%
    		String msj = request.getParameter("msj");
            System.out.print(msj);
    		if ("valid".equals(msj)) {
		%>
        	<h3 class="success-message">Password Reset</h3>
		<%
    		} else if ("invalid".equals(msj)){
		%>
        	<h3 class="error-message">Try Again!!!</h3>
		<%
    		}
		%>
        </div>
    </div>
</body>
</html>