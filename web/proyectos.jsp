<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROYECTOS - DCR</title>

        <link rel="stylesheet" href="css/estilos.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>


    <body background="images/contacto.jpg" style="background-color:#000050 background-position: center; background-size: cover; background-repeat:no-repeat; max-width: 100%; max-height: 100%;">

        <nav class="nav">
            <a class="nav-link" href="index.html">INICIO</a>
            <a class="nav-link" href="#">HABILIDADES</a>    
            <a class="nav-link" href="programador.jsp" target="descripcion">EXPERIENCIA</a>
            <a class="nav-link" href="contacto.jsp">CONTACTO</a>
            <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </nav>

        <h2 style="color:orange" >&nbsp;&nbsp;PROYECTOS</h2> <br>

        <div class="card-deck" align="center">

            <table style="width: 70%" class="style3">
                <tr>
                    <td>

                        <div class="card">
                            <img class="card-img-top" src="images/foto2.gif" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Programador</h5>
                                <p class="card-text">Amplia experiencia en programación. Lenguajes utilizados como PHP, HTML, VBA, Java, JS, JSP, Access, además de diversas Bases de Datos MySQL.</p>
                            </div>
                            <div class="card-footer">

                                <nav class="nav">
                                    <a class="nav-link" href="programador.jsp" target="descripcion">Ver Proyectos...</a>
                                </nav>

                            </div>
                        </div>
                    </td>

                    <td>
                        <div class="card">
                            <img class="card-img-top" src="images/foto3.gif" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Redes</h5>
                                <p class="card-text">Diseño e instalación de redes de datos para todo tipo de organizaciones. Basada en redes físicas (Punto a Punto) y Redes Inalámbricas (WIFI).</p>
                            </div>
                            <div class="card-footer">

                                <nav class="nav">
                                    <a class="nav-link" href="programador.jsp" target="descripcion">Ver Proyectos...</a>
                                </nav>

                            </div>
                        </div>    
                    </td>

                    <td>
                        <div class="card">
                            <img class="card-img-top" src="images/web.gif" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Servicios Web</h5>
                                <p class="card-text">Diseños web personalizados, complementado con logotipo, mantenimientos y actualición de información. Gestión de dominio y Hosting.</p>
                            </div>
                            <div class="card-footer">

                                <nav class="nav">
                                    <a class="nav-link" href="programador.jsp" target="descripcion">Ver Proyectos...</a>
                                </nav>

                            </div>
                        </div>
                    </td>

                    <td>
                        <div class="card">
                            <img class="card-img-top" src="images/soporte.gif" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Soporte</h5>
                                <p class="card-text">Amplia experiencia en soporte computacional, como instalación y configuración de Programas, Correo, Wifi, instalación de piezas, entre otros.</p>
                            </div>

                            <div class="card-footer">

                                <nav class="nav">
                                    <a class="nav-link" href="programador.jsp" target="descripcion">Ver Proyectos...</a>
                                </nav>


                            </div>
                        </div>
                    </td>
                </tr>


                <tr>
                    <td>&nbsp;</td>
                </tr>        

                <tr>
                    <td colspan="4">

                        
                        
                        <main>
                            <iframe name="descripcion" src="" width="100%" height="350" frameborder="0" scrolling="yes"> </iframe>
                        </main>

                    </td>
                </tr>        

            </table>

        </div>        

        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>