<%-- 
    Document   : juros-simples
    Created on : 26/02/2019, 00:58:16
    Author     : User
--%>

<%
    Object calculoJuros;
    Object montante;

    calculoJuros = request.getAttribute("calculo");
    montante = request.getAttribute("montante");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Juros Simples</title>
    </head>
    <body>
        <h1>Cálculo do Juros Simples</h1>
        <form action="juros-simples" method="POST">
            Capital:<br>
            <input type="text" size="10" name="capital"><br>
            Juros(Mês):<br>
            <input type="text" size="10" name="juros"><br>
            Tempo(Mês):<br>
            <input type="text" size="10" name="tempo"><br>
            <input type="submit" value="calcular">
        </form>
        <div id="valores">
            <p>Juros: R$<%=calculoJuros%></p>
            <p>Montante: R$<%=montante%></p> 
        </div>
    </body>
</html>
