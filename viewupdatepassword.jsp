<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="scripts/css1.css">
    </head>
    <body>
       <div id="container">
            <div id="header">
                <div id="image1">
                    <img src="images/img1.jpg" width="100%" height="150px">
                </div>
                
            </div>
            
            
           
                <div id="mainpage">
                     <h2><a href="userprofile.jsp">View Profile</a>|| <a href="updateprofile.jsp">Update Profile</a>
              || <a href="viewupdatepassword.jsp">Update Password</a>||
                <a href="deleteprofile.jsp">Delete Profile</a></h2>
                    <div>
                        <form name="f1" method="post" action="updatepassword.jsp">
                            Enter Old Password<input type="password" name="t1"><br>
                            Enter New Password<input type="password" name="t2"><br>
                            Confirm New Password<input type="password" name="t3"><br>
                            <input type="submit" value="Change Password">
                            <input type="reset" value="Clear">
                        </form>
                     </div>
                </div>
           
            <div id="footer">
                <p>All Rights Reserved</p>
            </div>
            
            
            
            
        </div>
    </body>
</html>
