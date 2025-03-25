<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROGRAMACION - DCR</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body background="images/base.jpg" style="background-color:#000050 background-position: center; background-size: cover; background-repeat:no-repeat; max-width: 100%; max-height: 100%;">

        <h2 style="color: aqua" >&nbsp;&nbsp;Programación:</h2> <br>

        <table border="0" style="width: 95%" align="center">

            <%
                Connection con;
                String url = "jdbc:mysql://localhost:3306/bd_portafolio";
                String Driver = "com.mysql.jdbc.Driver";
                String user = "root";
                String clave = "dan123";
                Class.forName(Driver);
                con = DriverManager.getConnection(url, user, clave);

                PreparedStatement ps;
                ResultSet rs;

                ps = con.prepareStatement("select * from proyectos where item = 'prog'");
                rs = ps.executeQuery();

            %>

            <% while (rs.next()) {%>

            <tr style="color:white">
                <td style="width: 25%"> <h5><%= rs.getString("nombre")%> </h5><br></td>
                <td style="width: 75%"> <h5><%= rs.getString("descripcion")%> </h5><br></td>
            </tr>

            <% }%>

        </table>

        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>