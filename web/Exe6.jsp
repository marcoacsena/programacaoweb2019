<%-- 
    Document   : Exe6
    Created on : 27/02/2019, 09:23:22
    Author     : Marco
--%>

<%@page import="java.lang.Integer"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
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
        <form action="Exe6.jsp" method="post">
            Digite a quantidade de arquivos (.txt) armazenados no diretório:<br/><br/>
            
            <input type="text" name="numero_de_arquivos" value="" />
            <input type="submit" name="submit" value="Ler Arquivos" /><br/><br/><hr/>
            
        </form>
        
        
         <%
            String [] dadosDoArquivo = null;
            String numeroDeArquivos = request.getParameter("numero_de_arquivos");
            
                if(numeroDeArquivos == null){         
                    numeroDeArquivos = "";       
                    out.print("Número de arquivos ainda não foi informado!");
                    }else if(numeroDeArquivos != ""){

                try{
                    int n = Integer.parseInt(numeroDeArquivos);
                    dadosDoArquivo = new String [n];
                    
                        for(int i = 1; i <= n; i++){
                            FileReader encontrarArquivo = new FileReader("C:\\webprogramming\\aula1\\" +"teste" +i +".txt");
                            BufferedReader lerArquivo = new BufferedReader(encontrarArquivo);
                            dadosDoArquivo[i-1] = lerArquivo.readLine(); 
                        }

                    }catch(Exception e){
                        out.print("Erro na conversão do número de arquivos para inteiro");
                    }
                }
                
        %>
        </div>
        
        <div class="secao2">
        <h1>Informações obtidas a partir dos arquivos armazenados são:</h1>   
       
            <%
                
                if(dadosDoArquivo != null){
                for(int i = 0; i < dadosDoArquivo.length; i++){
                    
                    out.println(dadosDoArquivo[i] +"</br>" +"<hr>");
                    }                
                }    
            %>   
       </div>       
               
    </body>
</html>
