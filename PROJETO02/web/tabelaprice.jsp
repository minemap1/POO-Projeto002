<%-- 
    Document   : TabPrice
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%-- Include do header jspf --%> 
                <%@include file="WEB-INF/header.jspf" %>

        <title>Tabela Price</title>
            <%
                double pmt = 0;
                double juros = 0;
                double val = 0;
             %>     
    </head>
    <body>
        <%-- Include do menu jspf --%> 
        <%@include file="WEB-INF/Menu.jspf" %>
        <div align="center">
        <h1>Tabela Price</h1>
        <div class="panel panel-default">
        <div class="panel-body">
            <p>A Tabela PRICE é um sistema de amortização de dívidas, também chamado de sistema francês de amortização. É conhecido por ter as parcelas constantes – e não a amortização, como no caso do SAC. É muito utilizado para calcular empréstimos de curto prazo (compras parceladas em geral) e financiamentos de curto e médio prazos (financiamentos de veículos, por exemplo).</p>
        </div>
        <hr/>
        <h3>Informa o Capital</h3>
        <form>
        <input type="text" name="PV"/>
        <h3>Informe a taxa(Em %)</h3>       
        <input type="text" name="i"/>        
        <h3>Informe o periodo(Em meses)</h3>        
        <input type="text" name="n"/></br>
        <input type="submit" value="Calcular"/>
        </form><hr/>
        
            
            <% try{ %>
            <%   
                double PV = Double.parseDouble(request.getParameter("PV"));
                double i = Double.parseDouble(request.getParameter("i")) / 100 ;
                int n = Integer.parseInt(request.getParameter("n")); %>
            <div class="container">
            <table class="table table-bordered">
            <tr><th colspan="1">Periodo (Meses)</th><th>Saldo(R$)</th><th>Parcela(R$)</th><th>Juros(R$)</th><th>Prestação(R$)</th></tr>
           <%
                      val = PV;
                      pmt = PV /((1- Math.pow((1+i),-n))/i );
                      
                      for(int count =1; count <= n; count++){ 
                        juros = val * i ;
                        val = val -  ( pmt - juros);
                        
                      DecimalFormat df = new DecimalFormat("0,00");
            %>
                
            
             <tr><th><%= count %></th><td><%=  df.format(val) %></td><td><%= df.format( pmt)  %></td><td><%=  df.format(juros) %></td><td><%=  df.format(pmt - juros) %></td></tr>
          <% }%> 
            <%-- </tbody> --%>

              </table>
        <%}catch(Exception ex){%>
            <b>Informe todos os dados acima corretamente</b>.
        <%}%>
        <br><hr>
        </div>
        <%-- Include do rodapé --%>
                <%@include file="WEB-INF/footer.jspf" %>

    </body>
</html>
