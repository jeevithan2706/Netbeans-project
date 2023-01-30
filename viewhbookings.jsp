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
<h1 align="center"><font color="ightblue"><strong>BOOKINGS</strong></font></h1>
<br><br>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>CheckIn</b></td>
<td><b>CheckOut</b></td>
<td><b>CheckInTime</b></td>
<td><b>Adults</b></td>
<td><b>Children</b></td>
</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM hbooking";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("checkin")%></td>
<td><%=resultSet.getString("checkout")%></td>
<td><%=resultSet.getString("checkinTime")%></td>
<td><%=resultSet.getString("adults")%></td>
<td><%=resultSet.getString("children")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </body></html>
