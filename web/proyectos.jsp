<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROYECTOS - DCR</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body background="images/base.jpg" style="background-color:#000050 background-position: center; background-size: cover; background-repeat:no-repeat; max-width: 100%; max-height: 100%;">

        <header>
            <img src="images/perfilx.gif" alt="..." />
            <h1 style="color:orange" >&nbsp;&nbsp;PROYECTOS</h1>
        </header>

        <nav class="nav">
            <a class="nav-link" href="index.html">INICIO</a>
            <a class="nav-link" href="#">HABILIDADES</a>    
            <a class="nav-link" href="experiencia.jsp">EXPERIENCIA</a>
            <a class="nav-link" href="contacto.jsp">CONTACTO</a>
        </nav>

        <div align="center" class="card-group">
            <div class="card">
                <img class="card-img-top" src="images/foto2.gif" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Programador</h5>
                    <p class="card-text">Amplia experiencia en programación. Lenguajes utilizados como PHP, HTML, VBA, Java, JS, JSP, Access, además de diversas Bases de Datos MySQL.</p>
                </div>
                <div class="nav">
                    <a class="nav-link" href="programador.jsp" target="descripcion">Ver Proyectos...</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img-top" src="images/foto3.gif" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Redes</h5>
                    <p class="card-text">Diseño e instalación de redes de datos para todo tipo de organizaciones. Basada en redes físicas (Punto a Punto) y Redes Inalámbricas (WIFI).</p>
                </div>
                <div class="nav">
                    <a class="nav-link" href="redes.jsp" target="descripcion">Ver Proyectos...</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img-top" src="images/web.gif" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Servicios Web</h5>
                    <p class="card-text">Diseños web personalizados, complementado con logotipo, mantenimientos y actualición de información. Gestión de dominio y Hosting.</p>
                </div>
                <div class="nav">
                    <a class="nav-link" href="web.jsp" target="descripcion">Ver Proyectos...</a>
                </div>
            </div>

            <div class="card">
                <img class="card-img-top" src="images/soporte.gif" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Soporte</h5>
                    <p class="card-text">Amplia experiencia en soporte computacional, como instalación y configuración de Programas, Correo, Wifi, instalación de piezas, entre otros.</p>
                </div>
                <div class="nav">
                    <a class="nav-link" href="soporte.jsp" target="descripcion">Ver Proyectos...</a>
                </div>
            </div>

        </div>

        <main>
            <iframe name="descripcion" src="" width="100%" height="350" frameborder="0" scrolling="yes"> </iframe>
        </main>

        &nbsp;&nbsp;<footer style="color:white;"> © Desarrollado para IPChile </footer>

        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>