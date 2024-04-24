<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Ecom.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="adminHeader.jsp" %>
<%@include file="adminFooter.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="../css/viewProduct.css">

</head>
<body>
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Category</th>
      <th>Price</th>
      <th>Status</th>
      <th>Edit</th>
    </tr>
  </thead>
 
<% 
	try {
			Connection con= ConnectionProvider.getCon();
			PreparedStatement stmnt= con.prepareStatement("select * from products");
			ResultSet rs= stmnt.executeQuery();
			while(rs.next()){
%>
			 <tbody>
			    <tr>
      			<td><%=rs.getInt(1) %></td>
     			<td><%=rs.getString(2)%></td>
      			<td><%=rs.getString(3)%></td>
      			<td><%=rs.getFloat(4)%></td>
      			<td><%=rs.getString(5)%></td>
      			<td><a href="editProduct.jsp?id=<%=rs.getInt(1)%>&name=<%=rs.getString(2)%>&category=<%=rs.getString(3)%>&price=<%=rs.getFloat(4)%>">Edit</a></td>
    			</tr>
  			</tbody>
<% 				
			}	
%>

			</table>

<%		
		} catch (Exception e) {
			e.printStackTrace();
		}
%>
</body>
</html>