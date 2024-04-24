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
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	String mobile= request.getParameter("mobile");
	String securityQuestion= request.getParameter("security-question");
	String securityAnswer= request.getParameter("security-answer");
	String password= request.getParameter("password");
	
	try {
		Connection con= ConnectionProvider.getCon();
		PreparedStatement stmnt= con.prepareStatement("insert into users(name,email,mobileNumber,securityQuestion,securityAnswer,password)values(?,?,?,?,?,?) ");
		stmnt.setString(1, name);
		stmnt.setString(2, email);
		stmnt.setString(3, mobile);
		stmnt.setString(4, securityQuestion);
		stmnt.setString(5, securityAnswer);
		stmnt.setString(6, password);
		stmnt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<jsp:forward page="login.jsp"></jsp:forward>
</body>
</html>