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
        <link rel="stylesheet" type="text/css" href="./ahmad_jsp_style.css" />
        <title>JSP Page</title>
    </head>
    <%
        double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
        double overtimeHourlyPay = hourlyPay * 1.5;
        double overtimeHoursWorked = 0;
        double grossPay;
        double taxablePay;
        double taxAmount;
        double postTaxPay;
        double netPay;
        if (hoursWorked > 40) {
            overtimeHoursWorked = hoursWorked - 40;
            double regHours = 40;
            double otPay = overtimeHourlyPay * overtimeHoursWorked;
            double regPay = regHours * hourlyPay;
            grossPay = otPay + regPay;

        } else {

            grossPay = hoursWorked * hourlyPay;

        }
        taxablePay = grossPay - preTaxDeduct;

        if (grossPay < 500) {
            taxAmount = taxablePay * .18;
        } else {
            taxAmount = taxablePay * .22;
        }
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;


    %>
    <body>


        <h1>Salary Information</h1>

        <table id=tablecolor border="3">
            <tbody>
                <tr>
                    <td width="311">Total Hours Worked:</td>
                    <td width="74"><%=hoursWorked%></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%=hourlyPay%></td>
                </tr>
                <tr>
                    <td># of Hours of Overtime:</td>
                    <td><%=overtimeHoursWorked%></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%=overtimeHourlyPay%></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%=grossPay%></td>
                </tr>
                <tr>
                    <td>Pre-Tax Deduct:</td>
                    <td><%=preTaxDeduct%></td>
                </tr>
                <tr>
                    <td>Pre-Tax Pay:</td>
                    <td><%=taxablePay%></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%=taxAmount%></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%=postTaxPay%></td>
                </tr>
                <tr>
                    <td>Post-Tax Deduct:</td>
                    <td><%=postTaxDeduct%></td>
                </tr>
                <tr>
                    <td>Net Pay</td>
                    <td><%=netPay%></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
