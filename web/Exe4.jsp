<%-- 
    Document   : Exe4
    Created on : 24/02/2019, 09:30:36
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>   
    
        <div class="pagina1">
        <h1>Mostra o conteúdo do arquivo cujo nome foi informado pelo cliente!</h1>
        
        <form method="post" action="lerinfodearq">
            Digite o nome do arquivo: <br>
            <input type="text" name="nomedoarquivo"></br><br>     
            <input type="submit" value="Mostrar Conteúdo">
            
        </form><br><br>
        </div> 
      
        <div class="pagina2">
             
        
        <h1>A informação contida no arquivo indicado pelo usuário é:</h1>
        
        <form>
            
            <input type="text" size="100" value="<%= request.getAttribute("conteudoDoArquivo")%>"></br>
            A informação acima foi lida por meio de um programa JAVA! <br>
        </form>       
      </div>
    
    
</html>
