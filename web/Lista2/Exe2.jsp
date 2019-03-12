<%-- 
    Document   : Exe2
    Created on : 03/03/2019, 17:10:22
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Equação do 2º Grau</title>
    </head>
    <body>
        <h1>Equação do Segundo Grau!</h1>
        
        <h3>Digite os 3 coeficientes da equação do segundo grau Ax² + Bx +C:</h3>
        <form action="exe2" method="post">
            Coeficiente A:
            <input type="text" name="a"/><br><br>
            Coeficiente B:
            <input type="text" name="b"/><br><br>
            Coeficiente C:
            <input type="text" name="c"/><br><br><br>
            
            <input type="submit" value="Calcular as Raízes"/>
        </form> <br/><br/><br/><hr/>
        
        <%
//            Double X1 = (Double) request.getAttribute("X1");
//            Double X2 = (Double) request.getAttribute("X2");
        
          out.print("As raízes são: ");%>
          
          <input type="text" value="<%= (Double) request.getAttribute("X1")%>"/>
          <input type="text" value="<%= (Double) request.getAttribute("X2")%>"/>
    </body>
</html>
