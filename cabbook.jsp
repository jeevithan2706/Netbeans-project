<%@page language="java" contentType="text.html;charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String currentlocation=request.getParameter("currentlocation");
String destination=request.getParameter("destination");
String noofpassengers=request.getParameter("noofpassengers");
String dateofbooking=request.getParameter("dateofbooking");
String timeofbooking=request.getParameter("timeofbooking");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kanyakumari", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into cabbooking(fname, currentlocation, destination, noofpassengers, dateofbooking, timeofbooking) values('"+fname+"','"+currentlocation+"','"+destination+"','"+noofpassengers+"','"+dateofbooking+"','"+timeofbooking+"')");
out.println("<a href='menu1.html'>Return To Home Page</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>