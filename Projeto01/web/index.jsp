<%-- 
    Document   : index
    Created on : 3 de set de 2020, 03:08:33
    Author     : Nilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Página Inicial - WebSite</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <div class="container-fluid">
            <h1 style="color:lightslategray;">Home</h1>
            <hr>
        </div>
        <div class="container">
            <br>
            <br>
            <h3 style="color:lightslategray;">Sistemas de Amortização</h3>

            <p>Amortizar, no mundo das finanças, representa abater uma dívida em prestações. Como em finanças não é possível trabalhar com valores ao longo do tempo sem considerar uma taxa, é preciso realizar alguns cálculos de matemática financeira para calcular qual será o valor de cada parcela.
            <p><strong>Amortização = Parcela – Juros</strong></p>
            <p>Como mostra a equação acima, amortização é igual ao valor da parcela menos o juros. Essa é uma definição conceitual válida para qualquer sistema de amortização. A diferença entre os sistemas (SAC, PRICE, SAM, etc) está justamente na forma de chegar aos valores de cada um dos itens da equação.</p>
            <p>Neste site, falaremos de 3 sistemas de amortização: <a href="amortizacao-americana.jsp">Sistema de Amortização Americano (SAA)</a>, <a href="amortizacao-constante.jsp">Sistema de Amortização Constante (SAC)</a> e <a href="tabela-price.jsp">Tabela Price (PRICE)</a>.
                <br>
                <br>
            <hr>
            <h3 style="color:lightslategray;">Apresentação</h3>
            <p></p>
            <p>Esse projeto foi desenvolvido pelas alunas:</p>
            <p><strong>Amanda Fernandez Caetano</p>
            <p>Juliane Aparecida Monteiro Dos Santos </p>
            <p>Milena Audrey Nóbrega Marciano</p>
            <p>Nayara Ingrid Da Cruz Saltenis</strong></p>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
