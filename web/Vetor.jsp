<%-- 
    Document   : Vetor
    Created on : 21/02/2019, 14:28:41
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
        <h1>Impressão de Vetor de Strings</h1>
        
        <%
        
            String [] nomes = {"Marco", "Luciane", "Mario"};
        
            for(String nome: nomes){
            
                out.println(nome +"<br>");
            }
        %>
    </body>
</html>
