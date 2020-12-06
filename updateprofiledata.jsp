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
        String name,mb,emid,addr,soc,cob,dob;
        name=request.getParameter("t1");
        emid=request.getParameter("t2");
        mb=request.getParameter("t3");
        soc=request.getParameter("t4");
        cob=request.getParameter("t5");
        dob=request.getParameter("t6");
        addr=request.getParameter("t7");
        
        
        
            if(username!=null && password!=null)
            {
                 PreparedStatement pst;
        int c;
           try
             {
	Class.forName("com.mysql.jdbc.Driver");  
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancecoder","root",""); 
	pst=con.prepareStatement("update members set name=?,email_id=?,phone_number=?,college_school=?,class_branch=?,dob=?,address=? where user_name=? and password=?");
			pst.setString(1,name);	
			pst.setString(2,emid);
			pst.setString(3,mb);
                        pst.setString(4,soc);
                        pst.setString(5,cob);
                        pst.setString(6,dob);
                        pst.setString(7,addr);
                        pst.setString(8,username);
                        pst.setString(9,password);
			c=pst.executeUpdate();
			if(c==1)
			{
			response.sendRedirect("userprofile.jsp");
			}
                        else
                        out.println(" Not updated");		
			
                }
                catch(Exception ex)
		{
			out.println("please check the data "+ex.getMessage());
		}
            }
            else
            {
                out.print("Please Login to Update");
            }
        
        
        
        
        
        %>
    </body>
</html>
