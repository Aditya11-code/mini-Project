<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String username=(String)session.getAttribute("username");
        String password=(String)session.getAttribute("password");
        String oldpd,newpd,cnewpd;
        oldpd=request.getParameter("t1");
        newpd=request.getParameter("t2");
        cnewpd=request.getParameter("t3");
        if(oldpd.equals(password)){
        if(newpd.equals(cnewpd))
        {
            if(username!=null && password!=null)
            {
                 PreparedStatement pst;
        int c;
           try
             {
	Class.forName("com.mysql.jdbc.Driver");  
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancecoder","root",""); 
	pst=con.prepareStatement("update members set password=? where user_name=? and password=?");
			pst.setString(1,newpd);	
			pst.setString(2,username);
			pst.setString(3,password);
			c=pst.executeUpdate();
			if(c==1)
			{
			response.sendRedirect("userprofile.jsp");
			}
                        else
	out.println("Password not updated");		
			
                }
                catch(Exception ex)
		{
			System.out.println("please check the data "+ex.getMessage());
		}
            }
            else
            {
                out.print("Please Login to Change Password");
            }
        }
        else
        {
            out.print("Password Not match");
            out.print("<a href='viewupdatepassword.jsp'>Click Here for Update Passowrd</a>");
        }
        
        
        }
        else{
            out.print("Enter correct old password");
        }
        %>
    </body>
</html>
