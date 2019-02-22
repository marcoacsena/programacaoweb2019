<%-- 
    Document   : Exe2
    Created on : 21/02/2019, 11:02:45
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
        
        <h1>Digite 5 nomes de pessoas</h1>
              
        <form method="post" action="ordenarlistadenomes">
            Nome1: <br>
            <input type="text" name="nome1"></br>
            Nome2: <br>
            <input type="text" name="nome2"></br>
            Nome3: <br>
            <input type="text" name="nome3"></br>
            Nome4: <br>
            <input type="text" name="nome4"></br>
            Nome5: <br>
            <input type="text" name="nome5"></br></br>
            
            <input type="submit" value="Enviar">
            
        </form>
       
        </br>
        </hr> 
        </br>
       
          <h1>Lista de nomes ordenados</h1>
            <%
                if(request.getAttribute("listaDeNomes")!=null){
                    String[] array =  (String[]) request.getAttribute("listaDeNomes");
                    
//                        for(int i=0;i<array.length;i++){
//                         out.println(array[i] +"<br >");
//                        }
               
                

            %>
            
       
        <table border="1"> 
            <thead>
            <td>Lista de Nomes Ordenada </td>
                
            </thead>
                <% for (int i=0; i < array.length; i++)
                {%>
                <tr>
                    
                <td><%out.print(array[i]); %></td>
                
                </tr>
                <%}%>
        </table>
            
          <%} %>
        
    </body>
</html>
