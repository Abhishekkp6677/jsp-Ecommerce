<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="adminHeader.jsp" %>
<%@include file="adminFooter.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Admin Home</title>
	<link rel="stylesheet" href="../css/adminHome.css">
</head>

<body>
<div class="form-container">
    <form action="addProduct.jsp" method="post"  >
        <h2>Add New Product</h2>

        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required>
        </div>

        <div class="form-group">
            <label for="productCategory">Product Category:</label>
            <select id="productCategory" name="productCategory" required>
                <option value="">Select a category</option>
                <option value="electronics">Electronics</option>
                <option value="clothing">Clothing</option>
                <option value="accessories">Accessories</option>
                <option value="other">other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required >
        </div>

        <div class="form-group">
            <label>Active:</label>
            <label for="activeYes"><input type="radio" id="activeYes" name="active" value="yes" checked> Yes</label>
            <label for="activeNo"><input type="radio" id="activeNo" name="active" value="no"> No</label>
        </div>

       

        <button type="submit">Add Product</button>
    </form>
</div>
</body>
</html>