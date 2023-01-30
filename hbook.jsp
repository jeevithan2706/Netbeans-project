<%@page language="java" contentType="text.html;charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String checkin=request.getParameter("checkin");
String checkout=request.getParameter("checkout");
String checkinTime=request.getParameter("checkinTime");
String adults=request.getParameter("adults");
String children=request.getParameter("children");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kanyakumari", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into hbooking(checkin, checkout, checkinTime, adults, children)values('"+checkin+"','"+checkout+"','"+checkinTime+"','"+adults+"','"+children+"')");
out.println("<a href='hotelbooking.html'>Hotel Booked Successfully</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>