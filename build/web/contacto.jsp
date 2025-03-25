<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTACTO - DCR</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device=width, initial-scale=1">
    </head>

    <body background="images/base.jpg" style="background-color:#000050 background-position: center; background-size: cover; background-repeat:no-repeat; max-width: 100%; max-height: 100%;">

        <header>
            <img src="images/perfilx.gif" alt="..." />
            <h1 style="color:orange" >&nbsp;&nbsp;CONTACTO</h1>
        </header>
        
        <nav class="nav">
            <a class="nav-link" href="index.html">INICIO</a>
            <a class="nav-link" href="proyectos.jsp">PROYECTOS</a>    
            <a class="nav-link" href="habilidades.jsp">HABILIDADES</a>
            <a class="nav-link" href="experiencia.jsp">EXPERIENCIA</a>
        </nav>

        
        <table border="0" style="width: 80%" align="center">

            <td valign="top"> 

                <form action="formulario.jsp">

                    <table border="1" style="width: 80%" align="center">

                        <tr>
                            <td colspan="3" style="color:white; text-align: center"><br><h2 style="color: aqua" >Formulario</h2><br></td>
                            <td></td>
                        </tr>    

                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td style="color:white">NOMBRE (*)</td>
                            <td>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="nom" id="usr" placeholder="Nombre" required>
                                </div>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td style="color:white">CORREO (*)</td>
                            <td>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="correo" id="exampleFormControlInput1" placeholder="name@example.com" required >
                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td style="color:white">CELULAR</td>
                            <td>
                                <input type="number" class="input-padron" name="celu" id="cel" placeholder="+56 x xxxx xxxx">

                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td style="color:white">COMENTARIO</td>
                            <td>
                                <div class="form-group">
                                    <textarea class="form-control" name="comen" id="exampleFormControlTextarea1" rows="3" placeholder=" Su Comentario"></textarea>
                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td colspan="3" style="color:white">

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="suscribir" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">SI</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="suscribir" id="inlineRadio2" value="option2" checked>
                                    <label class="form-check-label" for="inlineRadio2">NO</label>
                                </div>

                                DESEO SUSCRIBIRME </td>
                            <td>5</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26px">&nbsp;</td>
                            <td colspan="3" style="color:white">Si te suscribes, podrás recibir manuales, consejos y novedades sobre el mundo de la Informática, sobre todo de la Programación<br><br></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="width: 26px; color:white; text-align: left"> &nbsp; (*) Campos requeridos</td>
                            <td></td>
                            <td>
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Sign in</button>
                                </div><br>
                            </td>
                        </tr>

                    </table>

                </form>

            </td>

        </tr>
    </table>

    <table border="0" style="width: 80%" align="center">
        <tr>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td valign="top">

                <table border="0" style="width: 80%" align="center">
                    <tr>
                        <td><h2 style="color: aqua" >Suscritos:</h2></td>
                    </tr>

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

                        ps = con.prepareStatement("select * from suscripcion where suscrito = 'option1'");
                        rs = ps.executeQuery();

                    %>

                    <% while (rs.next()) {%>

                    <tr style="color:white">
                        <td> <h5><%= rs.getString("nombre")%></h5></td>
                        <td> <h5><%= rs.getString("correo")%></h5> </td>
                    </tr>

                    <% }%>

                </table>

            </td>

    </table>
                    
    <br>&nbsp;&nbsp;<footer style="color:white;"> © Desarrollado para IPChile </footer>

    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>