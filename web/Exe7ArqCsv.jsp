<%-- 
    Document   : Exe7ArqCsv
    Created on : 28/02/2019, 08:33:53
    Author     : Marco
--%>

<%@page import="java.util.Scanner"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="tabelas.css">
        <title>CSV</title>
    </head>
    <body>
        <h1>Manipulação de arquivos CSV!</h1>

        <%
            File arquivoCSV = new File("C:\\webprogramming\\aula1\\teste4.csv");
            
            try {

                String linhasDoArquivo = new String();
                Scanner leitor = new Scanner(arquivoCSV);

                String[] colunasDoCabecalho = leitor.nextLine().split(",");           
                String [] dadosDeCadaLinha = null;
                
        %>

        <table class="tabela">

            <tr>

                <th><%out.print(colunasDoCabecalho[0]);%></th>
                <th><%out.print(colunasDoCabecalho[1]);%></th>
                <th><%out.print(colunasDoCabecalho[2]);%></th>
                <th><%out.print(colunasDoCabecalho[3]);%></th>

            </tr>

            <%
                while (leitor.hasNext()) {

                    linhasDoArquivo = leitor.nextLine();
                    dadosDeCadaLinha = linhasDoArquivo.split(",");%>
                    
                    <tr>
                
                    <td class="login"> <% out.print(dadosDeCadaLinha[0]);%></td> 
                    <td class="data"> <% out.print(dadosDeCadaLinha[1]);%></td>
                    <td class="titulo"> <% out.print(dadosDeCadaLinha[2]);%></td>
                    <td class="comentario"> <% out.print(dadosDeCadaLinha[3]);%></td>


                    </tr>           

    <%}%>

</table>
        

        <%} catch (FileNotFoundException e) {
                out.println("Não foi possível encontrar o arquivo!!!");
            }

        %>
    </body>
</html>

