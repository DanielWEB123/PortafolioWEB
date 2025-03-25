<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXPERIENCIA - DCR</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body background="images/base.jpg" style="background-color:#000050 background-position: center; background-size: cover; background-repeat:no-repeat; max-width: 100%; max-height: 100%;">

        <header>
            <img src="images/perfilx.gif" alt="..." />
            <h1 style="color:orange" >&nbsp;&nbsp;EXPERIENCIA</h1>
        </header>        
        
        <nav class="nav">
            <a class="nav-link" href="index.html">INICIO</a>
            <a class="nav-link" href="proyectos.jsp">PROYECTOS</a>    
            <a class="nav-link" href="habilidades.jsp">HABILIDADES</a>
            <a class="nav-link" href="contacto.jsp">CONTACTO</a>
        </nav>

        <table border="0" style="width: 80%" align="center">
            <tr>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td valign="top">

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

                            ps = con.prepareStatement("select * from hab_exp where item = 'experiencia'");
                            rs = ps.executeQuery();

                        %>

                        <% while (rs.next()) {%>

                        <tr style="color:white">
                            <td> &nbsp;</td>
                        </tr>

                        <tr style="color:white">
                            <td> <h5><%= rs.getString("descripcion")%></h5> </td>
                        </tr>

                        <% }%>


                    </table>

                </td>

        </table>

        <br><br><br>&nbsp;&nbsp;<footer style="color:white;"> © Desarrollado para IPChile </footer>

        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>