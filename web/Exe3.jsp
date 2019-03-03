<%-- 
    Document   : Exe3
    Created on : 23/02/2019, 15:32:52
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="secao1">
        <h1>Recebe uma informação do usuário e a registre em um arquivo texto!</h1>
        
        <form method="post" action="registrarinfo">
            Digite a informação: <br>
            <input type="text" name="info"></br><br>     
            <input type="submit" value="Registrar Informação">
            
        </form><br><br>
        </div> 
      
        <div class="secao2">
             
        
        <h1>Informação Lida com Sucesso</h1>
        
        <form>
            A informação a seguir foi lida por meio de um programa JAVA: <br>
            <input type="text" size="100" name="nomedoarquivo" value="<%= request.getAttribute("dadosExibidos")%>"></br>
            
        </form>       
      </div>
        
    </body>
</html>
