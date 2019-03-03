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
        
    </head>   
                  
    <body>  
       <h1>Informação obtida a partir de arquivo armazenado!</h1>   
                 
       <%out.println(request.getAttribute("conteudo"));%>
       
    
    </body>    
</html>
