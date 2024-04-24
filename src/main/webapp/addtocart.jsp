<%@page import="com.mysql.cj.jdbc.DatabaseMetaData"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Ecom.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<%


	
	Connection con = ConnectionProvider.getCon();
	
					 
	String pro_id= request.getParameter("id");
	String email=session.getAttribute("email").toString();
	int pro_quantity=1;
	double price=0;
	double total=price;
	PreparedStatement stmnt= con.prepareStatement("select * from products where id='"+pro_id+"'");
	ResultSet rs= stmnt.executeQuery();
	while(rs.next()){
		String pro_name=rs.getString(2);
		price=rs.getFloat(4);	
		total=price;
	}
	
	
	String cartName= "cart_"+email.replace("@", "").replace(".","_");
	String create_table_query = "CREATE TABLE  " + cartName +
	        "(pro_id INT, quantity INT, price DECIMAL(10, 2), total DECIMAL(10, 2), OrderDate DATE, DeliveryDate DATE, paymentMethod VARCHAR(100), transactionId VARCHAR(255), status VARCHAR(50))";
	try{
		
		if(!(ConnectionProvider.TableExists(con,cartName))){ //if table does nt exist for current user
			PreparedStatement stmnt1= con.prepareStatement(create_table_query);
			stmnt1.executeUpdate();
			PreparedStatement stmnt2= con.prepareStatement("insert into "+cartName+"(pro_id,quantity,price,total) values(?,?,?,?)");
			stmnt2.setString(1, pro_id);
			stmnt2.setInt(2, pro_quantity);
			stmnt2.setDouble(3, price);
			stmnt2.setDouble(4, price * pro_quantity);
			int result=stmnt2.executeUpdate();
			if(result>0){
				System.out.println("successfull");
			}else{
				System.out.println("failed");
			}
		}else{
			//if table already exists for current user
			
			PreparedStatement stmnt1= con.prepareStatement("select * from "+cartName+" where pro_id='"+pro_id+"'");
			ResultSet res=stmnt1.executeQuery();
			if(res.next()){ //if product is never added
				int quantity=res.getInt("quantity");
				double pro_price=res.getInt("price");
				quantity++;	
				PreparedStatement stmnt2= con.prepareStatement("update "+cartName+" set quantity=? , total=?");
				stmnt2.setInt(1, quantity);
				stmnt2.setDouble(2,quantity*pro_price);
				stmnt2.executeUpdate();
			}else{ //if product is added atleast once
				PreparedStatement stmnt2= con.prepareStatement("insert into "+cartName+"(pro_id,quantity,price,total) values(?,?,?,?)");
				stmnt2.setString(1, pro_id);
				stmnt2.setInt(2,pro_quantity);
				stmnt2.setDouble(3,price);
				stmnt2.setDouble(4,total);
				stmnt2.executeUpdate();

			}
		}
		
		
		response.sendRedirect("home.jsp");
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>