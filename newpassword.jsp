<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/kanyakumari";
con = DriverManager.getConnection(url, "root", "root");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from registration where oldpassword= '"+ OldPassword + "'");
if (rs.next()) { 
    id = rs.getInt(1);
pass = rs.getString("oldpassword");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update registration set oldpassword='"+ Newpass + "' where id = '"+ id +"'");
out.println("Password changed successfully");
st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
}else{
out.println("new password and confirm new password is not matching");
}
}
catch (Exception e) {
out.println(e);
}
%>