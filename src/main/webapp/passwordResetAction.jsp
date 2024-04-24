<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Ecom.connection.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String email= request.getParameter("email");
	String mobile= request.getParameter("mobile");
	String securityQuestion= request.getParameter("security-question");
	String securityAnswer= request.getParameter("security-answer");
	String newPassword= request.getParameter("new-password");
	
	try {
		Connection con= ConnectionProvider.getCon();
		PreparedStatement stmnt= con.prepareStatement("select name from users where email=? and mobileNumber=? and securityQuestion=? and securityAnswer=? ");
		stmnt.setString(1, email);
		stmnt.setString(2, mobile);
		stmnt.setString(3, securityQuestion);
		stmnt.setString(4, securityAnswer);
		ResultSet rs= stmnt.executeQuery();
		if (rs.next()){
			PreparedStatement stmnt1= con.prepareStatement("update users set password=? where email=? ");
			stmnt1.setString(1, newPassword);
			stmnt1.setString(2, email);
			stmnt1.executeUpdate();
			response.sendRedirect("reset.jsp?msj=valid");
		}else{
			
			response.sendRedirect("reset.jsp?msj=invalid");

				
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>