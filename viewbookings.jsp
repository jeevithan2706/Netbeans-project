<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "kanyakumari";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
    <head>
        <title>MyBookings</title>
        <link rel="icon" type="image/x-icon" href="icon1.png">
    </head>
    <body>
<h2 align="center"><font color="#FF00FF"><strong>BOOKINGS</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>Id</b></td>
<td><b>Name</b></td>
<td><b>Current location</b></td>
<td><b>Destination </b></td>
<td><b>No of passengers</b></td>
<td><b>Date of booking</b></td>
</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM cabbooking";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("id")%></td>
<td><%=resultSet.getString("fname")%></td>
<td><%=resultSet.getString("currentlocation")%></td>
<td><%=resultSet.getString("destination")%></td>
<td><%=resultSet.getString("noofpassengers")%></td>
<td><%=resultSet.getString("dateofbooking")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </body></html>