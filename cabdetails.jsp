<%@page language="java" contentType="text.html;charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.,java.util."%>
<%
String fname=request.getParameter("fname");
String address=request.getParameter("currentlocation");
String email=request.getParameter("destination");
String phone=request.getParameter("noofpassangers");
String date=request.getParameter("dateofbooking");
String username=request.getParameter("timeofbooking");
Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/kanyakumari";
con = DriverManager.getConnection(url, "root", "root");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from cabooking");

{
    out.println("your cad has been booked");
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>