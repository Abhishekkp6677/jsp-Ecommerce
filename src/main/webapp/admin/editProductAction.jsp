<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Ecom.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
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
	Connection con = ConnectionProvider.getCon();
	String id= request.getParameter("id");
	String productName= request.getParameter("productName");
	String category= request.getParameter("productCategory");
	String price= request.getParameter("price");
	try{
		 PreparedStatement stmnt = con.prepareStatement("UPDATE products SET pro_name = ?, category = ?, price = ? WHERE id = ?");
		    stmnt.setString(1, productName);
		    stmnt.setString(2, category);
		    stmnt.setDouble(3, Double.parseDouble(price)); 
		    stmnt.setString(4, id);
		    int rowsAffected = stmnt.executeUpdate();
		    if (rowsAffected > 0) {
		        response.sendRedirect("viewProduct.jsp");
		    } else {
		        
		    }
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>