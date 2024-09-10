<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

int p;
p=Integer.parseInt(request.getParameter("x"));

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/my_data","root","");


PreparedStatement ps=con.prepareStatement("delete from emp where emp_id='"+p+"'");
ps.executeUpdate();

response.sendRedirect("display.jsp");


%>
</body>
</html>