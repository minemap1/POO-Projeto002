<%-- 
    Document   : TabPrice
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Tabela Price</title>
            <%
                double pmt = 0;
                double juros = 0;
                double val = 0;
             %>     
    </head>
    <body>
        <header>
            <%-- Include do header jspf --%> 
            <%@include file="WEB-INF/header.jspf" %>
        <%-- Include do menu jspf --%> 
            <%@include file="WEB-INF/Menu.jspf" %>
        </header>
        
        <main>
            <div>
                <h1 class="font"><center>Tabela Price</center></h1><br>
                <div class="container">
                    <form action="amortamer.jsp" method="POST">
                        <div class="col-md-6 offset-md-5">
                            <label>Capital</label><br />
                            <input type="text" name="PV" /><br />
                        </div>
                        <div class="col-md-6 offset-md-5">
                            <label>Taxa (em percento)</label><br />
                            <input type="text" name="i" /><br />
                        </div>
                        <div class="col-md-6 offset-md-5">
                            <label>Periodo (em meses)</label><br />
                            <input type="text" name="n" /><br />
                        </div>
                        <br />
                        <div class="col-md-6 offset-md-5">
                            <input class="btn btn primary" type="submit" value="Enviar" />
                            <input class="btn btn primary" type="submit" value="Cancelar" />
                        </div>
                    </form>
                </div>
            </div>
        </main>
            
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
