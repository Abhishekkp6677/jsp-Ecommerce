<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Ecom.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/home.css">
</head>
<body>
		<div class="home-container">
<%
		try {
			Connection con= ConnectionProvider.getCon();
			String search=request.getParameter("search");
			PreparedStatement stmnt= con.prepareStatement("  select * from products where pro_name like '%"+search+"%' or category like '%"+search+"%'  ");
			ResultSet rs= stmnt.executeQuery();
			while (rs.next()){
%>				
			<div class="card">
			
    			<img src="productImages/alt.png" alt="Product Image">
    			
    			<div class="card-body">
	       		 <h3 class="product-name"><%=rs.getString(2) %></h3>
	        	 <p class="product-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
	       		 <p class="product-category"><%=rs.getString(3) %></p>
	       		 <p class="product-price"><%=rs.getString(4) %></p>
	       	     <button class="add-to-cart-btn"><a href="addtocart.jsp">Add to Cart</a></button>
    		</div>
		</div>


<%							
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
%>

		

	</div>
</body>
</html>