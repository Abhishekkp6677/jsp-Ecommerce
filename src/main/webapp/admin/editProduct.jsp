<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="adminHeader.jsp" %>
<%@include file="adminFooter.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/adminHome.css">
</head>
<body>
<%
	String id= request.getParameter("id");
	String name= request.getParameter("name");
	String category= request.getParameter("category");
	String price= request.getParameter("price");
%>
	<div class="form-container">
    <form action="editProductAction.jsp" method="post"  >
        <h2>Edit Product</h2>

        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required value="<%=name%>">
            <input type="hidden" id="id" name="id" required value="<%=id%>">
        </div>

        <div class="form-group">
            <label for="productCategory">Product Category:</label>
            <select id="productCategory" name="productCategory" required >
                <option value="">Select a category</option>
                <option value="electronics" <%= category.equals("electronics") ? "selected" : "" %>>Electronics</option>
                <option value="clothing" <%= category.equals("clothing") ? "selected" : "" %>>Clothing</option>
                <option value="accessories" <%= category.equals("accessories") ? "selected" : "" %>>Accessories</option>
                <option value="other" <%= category.equals("other") ? "selected" : "" %>>other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required value="<%=price%>">
        </div>

        <div class="form-group">
            <label>Active:</label>
            <label for="activeYes"><input type="radio" id="activeYes" name="active" value="yes" checked> Yes</label>
            <label for="activeNo"><input type="radio" id="activeNo" name="active" value="no"> No</label>
        </div>

       

        <button type="submit">Edit Product</button>
    </form>
</div>
</body>
</html>