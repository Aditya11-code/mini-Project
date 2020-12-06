<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" type="text/css" href="scripts/css1.css">
</head>
<body>
     <h2> <a href="updateprofile.jsp">Update Profile</a>
              || <a href="viewupdatepassword.jsp">Update Password</a>||
                <a href="deleteprofile.jsp">Delete Profile</a>||
                <a href="logout.jsp">Logout</a></h2>
<div id="container">

<div id="p1">
    
<%= java.util.Calendar.getInstance().getTime() %>


</div>
<div id="mainpage">
    <table>
<%
String un,pd;
un=(String)session.getAttribute("username");
pd=(String)session.getAttribute("password");
out.print("Hello,"+ un);
try{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancecoder","root","");
Statement stmt=con.createStatement();

 ResultSet rs=stmt.executeQuery("select * from members");

 while(rs.next())
{
    
if(un.equals(rs.getString(3))){
out.print("<tr><td>User Name</td><td><input type='text' disabled value='"+rs.getString(3)+"'></td></tr>");
 out.print("<tr><td>Name</td><td><input type='text' disabled value='"+rs.getString(5)+"'></td></tr>"); 
  out.print("<tr><td>Email Id</td><td><input type='text' disabled value='"+rs.getString(6)+"'></td></tr>"); 
 out.print("<tr><td>Mobile Number</td><td><input type='text' disabled value='"+rs.getString(7)+"'></td></tr>"); 
  out.print("<tr><td>College/School</td><td><input type='text' disabled value='"+rs.getString(8)+"'></td></tr>"); 
 out.print("<tr><td>Branch/Class</td><td><input type='text' disabled value='"+rs.getString(9)+"'></td></tr>"); 
 out.print("<tr><td>D.O.B</td><td><input type='text' disabled value='"+rs.getString(10)+"'></td></tr>"); 
 out.print("<tr><td>Address</td><td><input type='text' disabled value='"+rs.getString(11)+"'></td></tr>");    
}
}
con.close();

 }
catch(Exception e)
{
out.println(e.getMessage());
}

 %>
</table>
</div>
<div id="footer">
<p>All Rights Reserved</p>
</div>


</div>

 </body>
</html>