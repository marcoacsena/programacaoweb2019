<%-- 
    Document   : Exe5_1
    Created on : 26/02/2019, 14:04:02
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício 5.1</title>
    </head>
    <body>
        <h1>O conteúdo do arquivo digitado é:</h1>
        
        <form>
            
            <input type="text" size="100" value="<%= request.getAttribute("conteudo")%>" />
        </form>
        
    </body>
</html>
