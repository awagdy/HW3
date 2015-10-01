<%-- 
    Document   : index
    Created on : Sep 29, 2015, 7:47:58 PM
    Author     : Ahmad Wagdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./ahmad_jsp_style.css" />
    </head>
    <body>
        <h1>Tax Calculator</h1>


        <form name=testForm" action="results.jsp" method="post">
          <table id=tablecolor border="3">
              <tbody>
                    <tr>
                      <td>Hours Worked:</td>
                        <td id="tdnoborder"><input type="text" name="hoursWorked" value="" size="20"</td>
                    </tr>
                    <tr>
                      <td>Hourly Pay:</td>
                        <td id="tdnoborder"><input type="text" name="hourlyPay" value="" size="20"</td>
                    </tr>
                    <tr>
                      <td> Pre-tax Deduct:</td>
                        <td id="tdnoborder"><input type="text" name="preTaxDeduct" value="" size="20"</td>
                    </tr>
                    <tr>
                      <td>Post-tax Deduct:</td>
                        <td id="tdnoborder"><input type="text" name="postTaxDeduct" value="" size="20"</td>
                    </tr>
              
                    <tr id="buttons"> <td id="tdbuttons">
                      <div align="center">
                        <input  type="reset" value="Clear" id="clear">
                      </div></td>
                      <td id="tdbuttons"><div align="center">
                        <input  type="submit" value="Submit" id="submit">
                      </div></td>
                    </tr>
            </tbody>
  
          </table>
    </form>
        
          
       
    </body>
</html>
