<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
String un,pd;
un=request.getParameter("t1");
pd=request.getParameter("t2");
int c=0;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancecoder","root","");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select user_name,password from members");
while(rs.next())
{
if(un.equals(rs.getString(1)) && pd.equals(rs.getString(2)))
{
    session.setAttribute("username", un);
    session.setAttribute("password", pd);
c++;
}
}
 con.close();

 }
catch(Exception e)
{
System.out.println(e.getMessage());
}
if(c==1)
response.sendRedirect("userprofile.jsp");
else
out.println("login Failed");
out.print("<a href='index.jsp'>Click Here to login</a>");
%>
</body>
</html>