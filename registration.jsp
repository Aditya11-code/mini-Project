<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="scripts/js1.js">
            </script>
            <link rel="stylesheet" type="text/css" href="scripts/css1.css">
        <title>JSP Page</title>
    </head>
    <body>
       <div id="container">
            <div id="header">
                <div id="image1">
                    <img src="images/img.png" width="100%" height="150px">
                </div>
                <div id="menubar">




                </div>
            </div>
            <div id="main">
                <div id="login" >

                    <form name="f1" method="post" onsubmit="return validate();" action="savedata.jsp">
                        <table>
                            <tr><td>Name</td><td><input type="text" name="t1" required></td></tr>
                            <tr><td>Password</td><td><input type="password" name="t2" required></td></tr>
                            <tr><td>User Name</td><td><input type="text" name="t3" required></td></tr>
                            <tr><td>Email Id</td><td><input type="text" name="t4" required></td></tr>
                            <tr><td>Mobile Number</td><td><input type="text" name="t5" required></td></tr>
                            <tr><td>School/College</td><td><input type="text" name="t6" required></td></tr>
                            <tr><td>Class/Branch</td><td><input type="text" name="t7" required></td></tr>
                            <tr><td>Date of Birth</td><td><input type="text" name="t8" required></td></tr>
                            <tr><td>Address</td><td><input type="text" name="t9" required></td></tr>
                            <tr><td><input type="submit" value="Register"></td><td><input type="reset" value="Clear"></td></tr>
                        </table>

                    </form>

                </div>


            </div>
            <div id="footer">
                <p>All Rights Reserved</p>
            </div>




        </div>
    </body>
</html>
