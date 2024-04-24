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
	String password= request.getParameter("password");
	
	if("admin@gmail.com".equals(email) && "admin".equals(password)){
		response.sendRedirect("admin/adminHome.jsp");
		session.setAttribute("email", email);
	}else{
		try {
			Connection con= ConnectionProvider.getCon();
			PreparedStatement stmnt= con.prepareStatement("select name,password from users where email=? and password=?");
			stmnt.setString(1, email);
			stmnt.setString(2, password);
			ResultSet rs= stmnt.executeQuery();
			if (rs.next()){
				System.out.println("login successfull");
				session.setAttribute("email", email);
				request.getRequestDispatcher("home.jsp").forward(request,response);
			}else{
				request.getRequestDispatcher("login.jsp?msj=invalid").forward(request,response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	%>
</body>
</html>