<%-- 
    Document   : amortamer
    Created on : Sep 1, 2018, 12:14:21 PM
    Author     : EduardoSimao
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Amortização Americana</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
    </head>

   

    <body>
        <div>
            <h1><center>Amortização Americana</center></h1><br>
            <div class="container">
                <form action="amortamer.jsp" method="POST">
                    <div class="col-md-6 offset-md-5">
                        <label>Empréstimo</label><br />
                        <input type="text" name="saldo" /><br />
                    </div>
                    <div class="col-md-6 offset-md-5">
                        <label>Meses</label><br />
                        <input type="text" name="m" /><br />
                    </div>
                    <div class="col-md-6 offset-md-5">
                        <label>Taxa </label><br />
                        <input type="text" name="t" /><br />
                    </div>
                    <br />
                    <div class="col-md-6 offset-md-5">
                        <input class="btn btn primary" type="submit" value="Enviar" />
                        <input class="btn btn primary" type="submit" value="Cancelar" />
                    </div>
                </form>
            </div>
        </div>
        <br>
        <div > 
            <%
                  
                    out.println("<table class='table'>");
                        out.println("<thead>");
                        out.println("<tr>");
                            out.println("<th scope='col'>Meses</th>");
                            out.println("<th scope='col'>Saldo Devedor</th>");
                            out.println("<th scope='col'>Amortização</th>");
                            out.println("<th scope='col'>Juros</th>");
                            out.println("<th scope='col'>Prestação</th>");
                        out.println("</tr>");
                        out.println("</thead>");
                        
                        try{
                        double emprestimo = Double.parseDouble(request.getParameter("saldo"));
                        double meses = Double.parseDouble(request.getParameter("m"));
                        double taxa = Double.parseDouble(request.getParameter("t"));
                          
                        double juros = (emprestimo * (taxa / 100));
                                
                        DecimalFormat f = new DecimalFormat("#,##0.00");
                        for(int cont = 0; cont <= meses; cont++){

                            

                            if(cont == 0){
                                out.println("<th scope='col'>"+ cont +"</th>");
                                out.println("<td scope='col'>" + f.format(emprestimo)+"</td>");
                                out.println("<td scope='col'>----</td>");
                                out.println("<td scope='col'>----</td>");
                                out.println("<td scope='col'>----</td>");
                                out.println("</tbody");
                                out.println("</table>");

                            } else if(cont == meses){ 
                                out.println("<th scope='col'>"+ cont +"</th>");
                                out.println("<td scope='col'>"+ f.format(emprestimo) +"</td>");
                                out.println("<td scope='col'>"+ f.format(emprestimo) +"</td>");
                                out.println("<td scope='col'>"+ f.format(juros) +"</td>");
                                out.println("<td scope='col'>"+ f.format(juros + emprestimo) +"</td>");
                                out.println("</tbody");
                                out.println("</table>");        

                            }else{ 
                                out.println("<th scope='row'>"+ cont +"</th>");
                                out.println("<td scope='col'>"+ f.format(emprestimo) +"</td>");
                                out.println("<td scope='col'>----</td>");
                                out.println("<td scope='col'>"+ f.format(juros) +"</td>");
                                out.println("<td scope='col'>"+ f.format(juros) +"</td>");
                                

                                out.println("</tbody");
                                out.println("</table>");        
                            }
                        }
                                out.println("<th scope='col'></th>");
                                out.println("<th scope='col'>Total</th>");
                                out.println("<th scope='col'>"+ f.format(emprestimo) +"</th>");
                                out.println("<th scope='col'>"+ f.format(juros * meses) +"</th>");
                                out.println("<th scope='col'>"+ f.format(emprestimo + (juros * meses)) +"</th>");
                                out.println("</tbody");
                                out.println("</table>");
                    
                
                        
                } catch (Exception ex){
                   
                }
            %>
        </div>
    </body>
</html>