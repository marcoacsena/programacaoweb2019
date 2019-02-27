<%-- 
    Document   : Exe5
    Created on : 26/02/2019, 14:03:10
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício 5</title>
    </head>
    <body>
        <h1>Digite o nome do arquivo!</h1>
        
        <form action="exe5" method="get">
            Nome do Arquivo:<br>
            <input type="text" name="nomedoarquivo"/>             
            <input type="submit" name="submit" value="Mostrar Conteúdo" />
        </form>
        
    </body>
</html>
