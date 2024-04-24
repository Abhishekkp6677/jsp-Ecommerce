<%@page import="java.math.BigDecimal"%>
<%@page import="java.sql.ResultSet"%>
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
		String pro_name= request.getParameter("productName");
		String category= request.getParameter("productCategory");
		String price= request.getParameter("price");
		String active= request.getParameter("active");
		int id=1;
		System.out.println(price+"  :price");
		System.out.println(category+"  :productCategory");
		System.out.println(pro_name+"  :productName");
		
		
		try {
			Connection con= ConnectionProvider.getCon();
			
			PreparedStatement stmnt1= con.prepareStatement("select max(id) from products");
			ResultSet rs = stmnt1.executeQuery();
			while(rs.next()){
				id=rs.getInt(1);
				id=id+1;
			}
			stmnt1.close();
			rs.close();
			
			
			PreparedStatement stmnt= con.prepareStatement("insert into products(id,pro_name,category,price,active)values(?,?,?,?,?)");
			stmnt.setInt(1, id);
			stmnt.setString(2, pro_name);
			stmnt.setString(3, category);
			stmnt.setString(4, price);
			stmnt.setString(5, active);
			int i= stmnt.executeUpdate();
			if (i>0){
				response.sendRedirect("adminHome.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
	%>
</body>
</html>