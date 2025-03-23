<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= request.getParameter("nom")%></h1>
        <h1><%= request.getParameter("correo")%></h1>
        <h1><%= request.getParameter("celu")%></h1>
        <h1><%= request.getParameter("comen")%></h1>
        <h1><%= request.getParameter("suscribir")%></h1>
    </body>


    <%

        String nomx, correox, celux, comenx, suscribirx;

        Date dNow = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy/MM/dd");
        String currentDate = ft.format(dNow);

        nomx = request.getParameter("nom");
        correox = request.getParameter("correo");
        celux = "+56" + request.getParameter("celu");
        comenx = request.getParameter("comen");
        suscribirx = request.getParameter("suscribir");

        Connection con;
        String url = "jdbc:mysql://localhost:3306/bd_portafolio";
        String Driver = "com.mysql.jdbc.Driver";
        String user = "root";
        String clave = "dan123";
        Class.forName(Driver);
        con = DriverManager.getConnection(url, user, clave);

        PreparedStatement ps;

        ps = con.prepareStatement("insert into suscripcion (fecha,nombre,correo,celular,comentario,suscrito)value('"+currentDate+"','"+nomx+"','"+correox+"','"+celux+"','"+comenx+"','"+suscribirx+"')");
        ps.executeUpdate();
        response.sendRedirect("contacto.jsp");

    %>



</html>
