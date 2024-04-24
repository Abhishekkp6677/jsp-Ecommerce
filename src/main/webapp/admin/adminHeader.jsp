<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Navigation Bar</title>
    <link rel="stylesheet" href="../css/adminHeader.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome for icons -->
</head>
<body>
    <nav class="navbar">
        <div class="left">
            <h1>My Website</h1>
        </div>
        <div class="right">
            <ul>
                <li><a href="adminHome.jsp"><i class="fas fa-plus"></i> Add New Product</a></li>
                <li><a href="viewProduct.jsp"><i class="fas fa-eye"></i> View/Edit Product</a></li>
                <li><a href="#"><i class="fas fa-envelope"></i> Messages Received</a></li>
                <li><a href="#"><i class="fas fa-shopping-cart"></i> Orders Received</a></li>
                <li><a href="#"><i class="fas fa-times"></i> Cancel Orders</a></li>
                <li><a href="#"><i class="fas fa-check"></i> Delivered Orders</a></li>
                <li><a href="../logoutAction.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
            </ul>
        </div>
    </nav>
    
    
</body>
</body>
</html>