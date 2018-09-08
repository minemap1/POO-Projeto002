<%-- 
    Document   : Amortizaçao Constante
    Created on : 08/09/2018, 16:55:47
    Author     : julio
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amostização Constante </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              crossorigin="anonymous">       
    </head>
    <body>
        <h1>AC</h1>
        <div>
            <h1>Amortização Constante</h1><br/>
            <form> 
                <p>Valor emprestimo:</p>
                <input type="number"  name="ValorEmprestimo" required /><br>
                
                <p>Quantidade de meses:</p>
                <input type="number" name="QuantidadeMeses" required /><br>
                
                 <p>Juros (%):</p>
                 <input type="number"  name="ValorJuros" required /><br>
                
                <input type="submit" value="Calcular"/>
          
            </form>
             <br/>
            <% try { %>
            <%  int meses = Integer.parseInt(request.getParameter("QuantidadeMeses"));
                Float emprestimo = Float.parseFloat(request.getParameter("ValorEmprestimo"));
                Float taxaJuros = Float.parseFloat(request.getParameter("ValorJuros"));
                Float amConstante = emprestimo / meses;
                Float salDevedor = emprestimo;
                Float prestação;
                Float juros;
            %>
             <table class="table table-sm">
                <thead class="thead-dark">
                    <tr><th>Mês</th><th>Saldo devedor</th><th>Amortização</th><th>Juros</th><th>Prestação</th></tr>
                </thead>
                        <tr>
                            <th>0</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <%= NumberFormat.getCurrencyInstance().format(salDevedor) %>
                            </td>
                        </tr>
                        <tr>
                            <%
                                for(int i=1; i<=meses; i++) {
                                    juros=(meses-i+1)*(taxaJuros/100)*amConstante;
                                    prestação = amConstante + juros;
                                    salDevedor = salDevedor - amConstante;
                            %>
                            <th><%= i %></th>
                            <td><%= NumberFormat.getCurrencyInstance().format(prestação) %></td>
                            <td><%= NumberFormat.getCurrencyInstance().format(juros) %></td>
                            <td><%= NumberFormat.getCurrencyInstance().format(amConstante) %></td>
                            <td><%= NumberFormat.getCurrencyInstance().format(salDevedor) %></td>
                        </tr>
                            <%}%>
                    </table>

            <% } catch (Exception e) {
                    if (request.getParameter("valor") != null) {
                        out.println(e);
                    }
                }%>    
                
            
            
        </div>
           
    </body>
    
</html>
