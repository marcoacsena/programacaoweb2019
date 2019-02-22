<%-- 
    Document   : Exe1
    Created on : 22/02/2019, 10:05:14
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
        
        <div class="pagina1">
        <h1>Lista de Números!</h1>
        
        <form method="post" action="ordenarlistadenumeros">
            Numero1: <br>
            <input type="text" name="numero1"></br>
            Numero2: <br>
            <input type="text" name="numero2"></br>
            Numero3: <br>
            <input type="text" name="numero3"></br>
            Numero4: <br>
            <input type="text" name="numero4"></br>
            Numero5: <br>
            <input type="text" name="numero5"></br>
            Numero6: <br>
            <input type="text" name="numero6"></br></br>
            
            <input type="submit" value="Ordenar Lista de Números">
            
        </form><br><br>
        </div> 
      
        <div class="pagina2">
             
        
        <h1>Lista Ordenada</h1>
        
        <form>
            Numero1: <br>
            <input type="text" name="numero1" value="<%= request.getAttribute("listaDeNumeros0")%>"></br>
            Numero2: <br>
            <input type="text" name="numero2" value="<%=request.getAttribute("listaDeNumeros1")%>"></br>
            Numero3: <br>
            <input type="text" name="numero1" value="<%= request.getAttribute("listaDeNumeros2")%>"></br>
            Numero4: <br>
            <input type="text" name="numero1" value="<%= request.getAttribute("listaDeNumeros3")%>"></br>
            Numero5: <br>
            <input type="text" name="numero1" value="<%= request.getAttribute("listaDeNumeros4")%>"></br> 
            Numero6: <br>
            <input type="text" name="numero1" value="<%= request.getAttribute("listaDeNumeros5")%>"></br>
        </form>       
      </div>  
        
    </body>
</html>
