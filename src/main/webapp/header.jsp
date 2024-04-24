<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>
<body>
	<header class="header">
    <div class="container">
        <div class="logo">
            <h2>My website</h2>
            <form class="search-form" action="search.jsp" method="post">
            <input type="text" placeholder="Search..." name="search">
            <button type="submit"><i class="fas fa-search"></i></button>
        	</form>
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="#"><i class="fas fa-shopping-cart"></i> Cart</a></li>
                <li><a href="#"><i class="fas fa-clipboard-list"></i> My Orders</a></li>
                <li><a href="#"><i class="fas fa-user-cog"></i> Change Details</a></li>
                <li><a href="#"><i class="fas fa-envelope"></i> Message Us</a></li>
                <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
                <li class="user-dropdown">
                    <a href="#"><i class="fas fa-user"></i> <%=session.getAttribute("email") %> </a>
                    <ul class="dropdown-content">
                        <li><a href="#"><i class="fas fa-user"></i> Profile</a></li>
                        <li><a href="logoutAction.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>
	
</body>
</html>