<%@page language="java" contentType="text.html;charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username = request.getParameter("username");
session.putValue("username", username);
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kanyakumari", "root", "root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from registration where username='" + username + "' and oldpassword='" + password + "'");
try{
 rs.next();
 if (rs.getString("oldpassword").equals(password) && rs.getString("username").equals(username)) {
  out.println("<a href='menu1.html'>welcome</a>");
 } else {
  out.println("Invalid password or username.");
 }
} catch (Exception e) {
 e.printStackTrace();
}
%>
