
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%-- 
    Document   : index
    Created on : 31 de out de 2022, 15:38:36
    Author     : Fatec
--%>

<%@page import="java.time.Month"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String errorMessage = null;
            boolean hasParameterM = request.getParameter("m")!=null;
            boolean hasParameterY = request.getParameter("y")!=null;
            int m=0, y=0;
            Date calendario = new Date();
            try{
            m= Integer.parseInt(request.getParameter("m"));
            y= Integer.parseInt(request.getParameter("y"));
            }catch(Exception ex){
            errorMessage = ex.getMessage();
            }
         %>
        <h1>Calendario</h1>
         <div>
            <% if(errorMessage!=null){ %>
                <div style="color:red"><%= errorMessage %></div>
            <% } %>
            <form>
                mes:<input type="number" name="m"/> 
                 ano:<input type="number" name="y"/>
                <input type="submit" value="gerar calendario"/>
            </form>
          <% 
            calendario.setDate(1);
            calendario.setMonth(m-1);
            calendario.setYear(y-1900);
            
            System.out.println("D S T Q Q S S");
        System.out.println("-------------");
        for(int i = 1; i < dia; i++){
            System.out.print("  ");
        }
        for(int i = 1; i <= dias; i++){
            System.out.print("|" + i);
            if(dia == 7){
                dia = 1;
                System.out.print("\\n");
            }else{
                dia++;
            }
        }
            
          %>
        </body>
</html>