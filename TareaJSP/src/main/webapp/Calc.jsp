<%-- 
    Document   : MainCalculadora
    Created on : 26/09/2020, 10:31:44
    Author     : aguare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Main.Calculadora" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora JSP</title>
    </head>
    
        <% if (request.getParameter("n1") == null && request.getParameter("n2") == null) {
        %>
    <Center>
        <h1>Calculadora Básica</h1>
        <Form method="GET" ACTION="MainCalculadora.jsp">
         <label>Número 1:</label>
        <input type="number" name="n1" onchange="setTwoNumberDecimal" step="0.01" value="0.00" /> 
        <label>Número 2:</label>
        <input type="number" name="n2" onchange="setTwoNumberDecimal" step="0.01" value="0.00" />
        <br/><br/>
        <label for="opcion">Seleccione la operación:</label>
        <select name="operaciones" id="op">
            <option value="suma">Suma</option>
            <option value="multiplicar">Multiplicación</option>
            <option value="mayor">Obtener Mayor</option>
            <option value="potencia">Potencia No.1 ^ No.2</option>
            <option value="binario">Obtener Binarios</option>
        </select>
        <br/><br/>
        <input type="submit" value="Calcular">  
            
        </Form>

    </Center>
    <% } else { %>
    <%
        Double n1, n2;
        String opcion, respuesta = "";
        Calculadora calcular = new Calculadora();
    %>
    <%
        n1 = Double.parseDouble(request.getParameter("n1"));
        n2 = Double.parseDouble(request.getParameter("n2"));
        opcion = request.getParameter("operaciones");
        switch (opcion) {
            case "suma":
                respuesta = "RESPUESTA: " + calcular.suma(n1, n2);
                break;
            case "multiplicar":
                respuesta = "RESPUESTA: " + calcular.multiplicacion(n1, n2);
                break;
            case "mayor":
                respuesta = "RESPUESTA: " + calcular.obtenerMayor(n1, n2);
                break;
            case "potencia":
                respuesta = "RESPUESTA: " + calcular.potencia(n1, n2);
                break;
            case "binario":
                respuesta = "RESPUESTA: " + calcular.obtenerBinarios(n1, n2);
                break; 
            default:
                respuesta = "Opción Inválida";
                break;
        }
        
    %>
    <P>
        <B><%= respuesta %></B>
    </P>
    <% } %>

</html>
