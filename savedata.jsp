<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<%
String name,user_name,password,user_type,mobile_number,email_id,address,soc,cob,dob;
name=request.getParameter("t1");
password=request.getParameter("t2");
user_name=request.getParameter("t3");
email_id=request.getParameter("t4");
mobile_number=request.getParameter("t5");
soc=request.getParameter("t6");
cob=request.getParameter("t7");
dob=request.getParameter("t8");
address=request.getParameter("t9");

try{
int x;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancecoder","root","");

 PreparedStatement pst=con.prepareStatement("insert into members(name,password,user_name,email_id,phone_number,college_school,class_branch,dob,address) values(?,?,?,?,?,?,?,?,?)");

pst.setString(1, name);
pst.setString(2,password);
pst.setString(3,user_name);
pst.setString(4, email_id);
pst.setString(5, mobile_number);
pst.setString(6, soc);
pst.setString(7, cob);
pst.setString(8, dob);
pst.setString(9, address);

x=pst.executeUpdate();
if(x==1)
{
response.sendRedirect("index.jsp");
}
else
out.println("Sorry Error in Registration");
}
catch(Exception ex)
{
out.println("<section id=op-popup class=op-popup>"+ex.getMessage()+"</section>");
}
%>
</body>
</html>