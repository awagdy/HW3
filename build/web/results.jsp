<%-- 
    Document   : results
    Created on : Sep 29, 2015, 8:23:58 PM
    Author     : thewagdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
        double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
        
        
        
        
        
        
        
        
        
        
        
        %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
