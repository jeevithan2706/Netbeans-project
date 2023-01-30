<%@page language="java" contentType="text.html;charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String address=request.getParameter("address");
String email=request.getParameter("email");
String phoneno=request.getParameter("phone");
String date=request.getParameter("date");
String username=request.getParameter("username");
String password=request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kanyakumari", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into registration(fname, lname, address, email, phone, date, username, oldpassword)values('"+fname+"','"+lname+"','"+address+"','"+email+"','"+phoneno+"','"+date+"','"+username+"','"+password+"')");
out.println("<a href='title.html'>Login</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>