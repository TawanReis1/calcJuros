<%-- 
    Document   : juros-composto
    Created on : 26/02/2019, 01:33:29
    Author     : User
--%>

<%
    Object rendaMes;
    Object montante;

    rendaMes = request.getAttribute("rendaMes");
    montante = request.getAttribute("montante");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Juros Composto</title>
    </head>
    <body>
        <h1>Calculadora de Juros Composto</h1>
        <form action="juros-composto" method="POST">
            Capital:<br>
            <input type="text" size="10" name="capital"><br>
            Juros(Mês):<br>
            <input type="text" size="10" name="juros"><br>
            Tempo(Mês):<br>
            <input type="text" size="10" name="tempo"><br>
            <input type="submit" value="calcular">
        </form>
        <div id="valores">
            <p>Juros: R$<%=rendaMes%></p>
            <p>Montante: R$<%=montante%></p> 
        </div>
    </body>
</html>
