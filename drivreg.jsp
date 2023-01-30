<%@page language="java" contentType="text.html;charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
String profilephoto=request.getParameter("profile");
String aadharcard=request.getParameter("aadhar");
String rcbook=request.getParameter("RCbook");
String carphoto=request.getParameter("carphoto");
String phone=request.getParameter("phone");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kanyakumari", "root", "root");
Statement st=conn.createStatement();
    int i=st.executeUpdate("insert into drivreg(name, profile, aadhar, RCbook, carphoto, phone) values('"+name+"','"+profilephoto+"','"+aadharcard+"','"+rcbook+"','"+carphoto+"','"+phone+"')");
out.println("<a href='menu1.html'>Login</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>