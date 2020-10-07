<%-- 
    Document   : calcularConsumo
    Created on : 7 oct. 2020, 15:27:43
    Author     : geofr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%
        // declarando
        int consumos=0, descuento=0;
        
        if(request.getParameter("OK") != null) {
            consumos = Integer.parseInt(
                    request.getParameter("valorConsumo"));
            
            if ((consumos >= 100) && (consumos <= 800)) { 
                descuento=consumos*10/100;
            }
            else if (consumos > 800) { 
                descuento=consumos*20/100;
            } 
            else {
                descuento=0;
            };
        };
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="calcularConsumo.jsp">
            <center>
                <table border="1"><br>
                    <tr><td>Consumo: </td><td><input type="text" name="valorConsumo" value=<%=consumos%>></td></tr>
                    <tr><td colspan="2">
                            <input type="submit" name="OK" value="Calcular %"></td></tr>
                    <tr><td>Descuento: </td><td><input type="text" name="valorDescuento" value=<%=descuento%>></td></tr>
                    <tr><td>Total:  </td><td><input type="text" value=<%=consumos-descuento%>></td></tr>
                </table>
            </center>
        </form>
    </body>
</html>
