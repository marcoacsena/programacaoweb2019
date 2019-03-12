<%-- 
    Document   : Exe4
    Created on : 04/03/2019, 16:14:31
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
        
        <h1>Cálculo de Média Ponderada!</h1>
        
        <h3>Digite o valor das três notas e os respectivos pesos:</h3>
        <form action="media" method="post">
            
            Nota 1: <input type="text" name="N1"/> Peso 1: <input type="text" name="P1" /><br><br>
            Nota 2: <input type="text" name="N2"/> Peso 2: <input type="text" name="P2" /><br><br>
            Nota 3: <input type="text" name="N3"/> Peso 3: <input type="text" name="P3" /><br><br>
            
            <input type="submit" value="Calcular Média"/>
        </form> <br/><br/><br/><hr/>
        
        <% 
            Object media = request.getAttribute("media");
            out.print("A média das notas fornecidas é: " +media);
        %>        
        
        
        
    </body>
</html>
