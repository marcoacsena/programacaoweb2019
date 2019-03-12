<%-- 
    Document   : Exe5
    Created on : 05/03/2019, 09:27:36
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
</head>
<body>
    
    <h1>Cálculo de Determinante!</h1>
        
    <h3>Digite os 9 valores da matriz a seguir:</h3>
     
    <form action="matriz" method="post">      
        <input type="text" name="M11" size="2" height="100"/> <input type="text" name="M12" size="2" /> <input type="text" name="M13" size="2" /><br><br>
     <input type="text" name="M21" size="2" /> <input type="text" name="M22" size="2" /> <input type="text" name="M23" size="2" /><br><br>
     <input type="text" name="M31" size="2"/> <input type="text" name="M32" size="2" /> <input type="text" name="M33" size="2" /><br><br>
     
    <input type="submit" value="Calcular Determinante"/><br><br><hr> 
    
    </form> 
    
        <% 
            Object determinante = request.getAttribute("determinante");
            out.print("O determinante da matriz é: " +determinante);
        %>
        <hr> 
</body>
</html>
