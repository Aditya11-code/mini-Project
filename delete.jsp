<%-- <%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String message=request.getParameter("mess");
            if(message.equals("true"))
            {
                String un=(String)session.getAttribute("username");
                 String pd=(String)session.getAttribute("password");
    int x;

   PreparedStatement pp;
       try
            {
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancecoder","root","");
	pp=con.prepareStatement("delete from members where user_name=? and password=?");
		pp.setString(1,un);
                                        pp.setString(2,pd);
		x=pp.executeUpdate();
		if(x==1)
		{
//			out.println("record has been deleted");
                    response.sendRedirect("logout.jsp");
		}
                else
                    out.println("record not deleted");

		}
		catch(Exception ex)
		{
		out.println("check data"+ex.getMessage());
		}
            }
            else
            {
                response.sendRedirect("userprofile.jsp");
            }

%>
    </body>
</html>
