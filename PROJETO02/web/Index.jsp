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
        <%-- Include do cabecalho --%>
        <%@include file="WEB-INF/header.jspf" %>
        
        <div class="flexbox-grupo">
            <div class="grupo">
                <h3 class="h3-grupo">Grupo composto por:</h3>
                <ol>
                    <li>Baden</li>
                    <li>Eduardo Simao</li>
                    <li>Julio Takeda</li>
                    <li>Pablo Miguel</li>
                    <li>Victoria Rodovalho</li>
                </ol>
            </div>
            <div class="finalidade">
                <h3>Finalidade do Projeto</h3>
                <p class="p-index">Calcular os sistemas de amortizacao, atraves dos calculos da Tabela Price, Tabela SAC (Sistema de Amortizacao Constante) e Sistema Americano.</p>
            </div>
        </div>
        
        <section class="secao-inicio blog">
            <h2>O que é?</h2>
            <ol>
                <li class="mais-recente">
                    <a href="poo.html">Amortizacao</a>
                    <p class="inicio-post">
                        Amortização é o mesmo que redução da dívida, ou seja, amortizar é pagar uma parte da dívida para que ela reduza de tamanho até a sua eliminação. Entretanto, em toda dívida há cobrança de juros, portanto para amortizar uma dívida é necessário que o pagamento seja maior que os juros cobrados no período. 
                    </p>
                <li class="mais-recente">
                    <a href="tabelaprice.jsp">Tabela Price</a>
                    <p class="inicio-post">
                        Também chamado de Sistema de Parcelas Fixas, ou Sistema Francês, é caracterizado por pagamentos mensais iguais, embutindo uma amortização crescente.
                    </p>
                </li>
                <li>
                    <a href="amortcons.jsp">Tabela SAC</a>
                    <p class="inicio-post">
                        Também conhecido como Sistema de Amortização Constante, ou Método Hamburguês, é caracterizado por pagamentos mensais decrescentes, que embutem uma amortização constante.
                    </p>
                </li>
                <li>
                    <a href="amortamer.jsp">Sistema Americano</a>
                    <p class="inicio-post">
                        É caracterizado por pagamentos mensais equivalentes aos juros, não havendo amortizações mensais e prevendo a amortização total da dívida inicial em um único pagamento ao final de um período estipulado (em meses ou anos).
                    </p>
                </li>
            </ol>
        </section>
        
    <%-- Include do rodapé --%>
    <%@include file="WEB-INF/footer.jspf" %>
    </body>
</html>
