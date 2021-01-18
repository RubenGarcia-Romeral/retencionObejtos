
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="miSalario" class="clases.Salario"/>
        <% 
           String nombre=request.getParameter("nombre");
           float salario= Float.parseFloat(request.getParameter("salario"));
        %>
        <jsp:setProperty name="miSalario" property="nombre" value="<%=nombre%>"/>
        
        <jsp:setProperty name="miSalario" property="salario" value="<%=salario%>"/>
        
        <p>El salario de <jsp:getProperty name='miSalario' property="nombre" />
            
        es <jsp:getProperty name='miSalario' property="salarioNeto" /> y tiene una retencion de 
        
        <jsp:getProperty name='miSalario' property="porcentaje" />% y un salario bruto de 
        
        <jsp:getProperty name='miSalario' property="salario" />
        
        </p>

        <a href="index.jsp">Atrás</a>
    </body>
</html>