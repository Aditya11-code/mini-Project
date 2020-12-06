<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
        function confirmdelete()
        {
            var c=confirm("Are you sure to delete profile");
            
            window.location.replace("delete.jsp?mess="+c);
         }
        </script>
    </head>
    <body onload="confirmdelete()">
        
        
        
    </body>
</html>
