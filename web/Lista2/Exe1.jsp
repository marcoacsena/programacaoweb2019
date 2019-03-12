<%-- 
    Document   : Exe1
    Created on : 07/03/2019, 11:22:20
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
        
        <form action="exe1" method="get">
            Número de Aulas:<br/>
            <input type="text" name="numaulas" /><br/><br/>
            Número de Faltas:<br/>
            <input type="text" name="frequencia" /><br/><br/>
            <input type="submit" value="Situação do Aluno na Disciplina" />
        </form><hr/><hr/>
         
        <%        
            String resultado = (String) request.getAttribute("resultado");
            Double frequencia = (Double)(request.getAttribute("presenca"));
            
            out.println("Situação do Aluno: " +resultado +"<br>");
            out.println("Frequencia: " +frequencia +"%.");
        %>
        
    </body>
</html>
