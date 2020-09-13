<%-- 
    Document   : index
    Created on : 3 de set de 2020, 03:08:33
    Author     : Nilson
--%>
<%@page contentType="text/html" import="java.text.DecimalFormat" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    int p;
    float n;
    float t;
    try {
        n = Float.parseFloat(request.getParameter("n"));
        p = Integer.parseInt(request.getParameter("p"));
        t = Float.parseFloat(request.getParameter("t"));
    } catch (Exception ex) {
        n = 0;
        p = 0;
        t = 0;

        if ((request.getParameter("n") != null) || (request.getParameter("p") != null) || (request.getParameter("t") != null)) {
            erro = "Número inválido como parâmetro";
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Amortização Constante - WebSite</title>
    </head>
    <body> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container-fluid">
            <h1 style="color:lightslategray;">Sistema de Amortização Constante (SAC)</h1>
            <hr>
        </div>
        <div class="container">
            <br>
            <h3 style="color:lightslategray;">Como Funciona?</h3>
            <div>
                <br>
                <p>No Sistema de Amortização Constante, como o nome induz, a amortização é sempre a mesma ao longo do tempo, sendo o primeiro item a ser calculado. O juros, valor monetário, é calculado em cima da taxa de juros aplicada ao valor do saldo devedor em d-1 (dia anterior). Já a parcela, na tabela SAC, é resultado simplesmente da soma entre amortização e juros, ou seja:</p>
                <p><strong>Parcela = Amortização + Juros</strong></p> 
                <p>Como os juros diminuem a cada mês, as <u>prestações são decrescentes</u>.
                <p>Esse sistema ficou bastante conhecido no Brasil por ser utilizado no SFH (Sistema Financeiro de Habitação).</p>
                <br>
                <p>Para entender melhor como esse sistema funciona, simule um empréstimo digitando os dados nos campos abaixo:</p>
                <hr>
                <form>
                    <p>Digite o valor do empréstimo:
                        <input type="number" min="0" step="0.010" name="n"/></p>
                    <p>Digite o número de parcelas:
                        <input type="number"  name="p"/></p>
                    <p>Digite o valor da taxa a.m. :
                        <input type="number" min="0" step="0.010"  name="t"/></p> 
                    <input type="submit" name="Confirmar" value="Calcular"/>
                </form>
            </div>
            <%if ((request.getParameter("n") == null) || (request.getParameter("p") == null) || (request.getParameter("t") == null)) {%>
            <%} else if (erro != null) {%>
            <div><%= erro%></div>
            <%} else {%>
            <hr>
            <table border="1" >
                <tr align="center" style="background-color: #C0C0C0">
                    <th style="width: 100px">Mês</th>
                    <th style="width: 100px">Saldo Devedor</th>
                    <th style="width: 100px">Juros</th>
                    <th style="width: 100px">Amortização</th>
                    <th style="width: 100px">Prestação</th>
                </tr>
                <%
                    DecimalFormat df = new DecimalFormat("#0.00");
                    float amort = (n / p);
                    float saldoDev = n;
                    float juros = (saldoDev * (t / 100));
                    float parcela = (amort + juros);
                    float totalJ = juros;
                    float totalP = 0;
                    String a = "TOTAL";
                    for (int i = 1; i <= p; i++) {%>

                <tr>
                    <td align="center"><%= i%></td>
                    <td align="right">R$  <%= df.format(saldoDev)%></td>
                    <td align="right">R$  <%= df.format(juros)%></td>
                    <td align="right">R$  <%= df.format(amort)%></td>
                    <td align="right">R$  <%= df.format(parcela)%></td>
                </tr>  

                <%
                    saldoDev = (saldoDev - amort);
                    juros = (saldoDev * (t / 100));
                    parcela = (amort + juros);
                    totalJ = totalJ + juros;
                    totalP = n + totalJ;
                %>               
                <%}%>
                <tr style="background-color: #C0C0C0">
                    <td align="center"><strong><%= a%><strong></td>
                    <td align="right"><strong>R$  <%= df.format(saldoDev - saldoDev)%><strong></td>
                    <td align="right"><strong>R$  <%= df.format(totalJ)%><strong></td>
                    <td align="right"><strong>R$  <%= df.format(n)%><strong></td>
                    <td align="right"><strong>R$  <%= df.format(totalP)%></strong><strong></td>
                </tr> 
            </table>
            <%}%>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
