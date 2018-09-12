<%-- 
    Document   : Index
    Created on : Sep 1, 2018, 11:51:21 AM
    Author     : pablom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo de Amortizacao</title>
    </head>
    <body>
        <h1 class="h1-amortizacao">Calculo de Amortizacao</h1>
        <h2 class="h2-amortizacao">POO - Projeto 02</h2>
        
        <div class="flexbox-grupo">
            <h3>Grupo composto por:</h3>
            <ol>
                <li>Baden</li>
                <li>Eduardo Simao</li>
                <li>Julio Takeda</li>
                <li>Pablo Miguel</li>
                <li>Victoria Rodovalho</li>
            </ol>
        </div>
        
        <div class="flexbox-finalidade">
            <h3>Finalidade do Projeto</h3>
            <p>Calcular os sistemas de amortizacao, atraves dos calculos da Tabela Price, Tabela SAC (Sistema de Amortizacao Constante) e Sistema Americano.</p>
        </div>
        
        <div class="flexbox-btn">
            <a class="btn" href="amortamer.jps">Amortizacao Americana</a>
            <a class="btn" href="tabelaprice.jps">Tabela Price</a>
            <a class="btn" href="amortcons.jps">Tabela SAC</a>
        </div>
        
    <%-- Include do rodapé --%>
    <%@include file="WEB-INF/footer.jspf" %>
    </body>
</html>
