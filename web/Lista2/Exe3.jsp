<%-- 
    Document   : Exe3
    Created on : 04/03/2019, 09:57:51
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
        
        <h1>Área do triângulo retângulo!</h1>
        
        <h3>Digite o valor dos dois catetos de um triângulo retângulo:</h3>
        <form action="exe3" method="post">
            Cateto A:
            <input type="text" name="a"/><br><br>
            Cateto B:
            <input type="text" name="b"/><br><br>            
            
            <input type="submit" value="Calcular a área do triângulo"/>
        </form> <br/><br/><br/><hr/>
        
        <%
            out.print("A área do triângulo é: ");
        %>
          
        <input type="text" value="<%= request.getAttribute("area")%>"/>
        
    </body>
</html>
