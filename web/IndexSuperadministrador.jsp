<% //Codigo para evitar retornar a paginas cuando la sesion esta cerrada.
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-Control", "must-revalidate");
    response.addHeader("Cache-Control", "no-cache");
    response.addHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);
%>
<%-- 
    Document   : IndexSuperadministrador
    Created on : 2/03/2015, 07:26:35 PM
    Author     : Jairo Hernández
--%>

<%@page import="dtos.DTOPersonas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>SIADSO .::. Superadministrador</title>
        <meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
        <meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/icons.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <script src="js/modernizr.custom.js"></script>    
    </head>
    <body>
        <div class="container">
            <!-- Push Wrapper -->
            <div class="mp-pusher" id="mp-pusher">

                <!-- mp-menu -->
                <nav id="mp-menu" class="mp-menu">
                    <div class="mp-level">
                        <h2 class="icon icon-male">SUPERADMINISTRADOR:</br>
                            <%
                                HttpSession sesion = request.getSession(false);
                                if (sesion.getAttribute("usuario") == null) {
                                    out.print("<SCRIPT LANGUAGE='javascript'>alert('Sesion caducada, ingresa nuevamente.');document.location=('Login.jsp')</script>"); //Notifique y redireccione.
                                } else {
                                    DTOPersonas usuarioMostrar = new DTOPersonas();
                                    usuarioMostrar = ((DTOPersonas) sesion.getAttribute("usuario"));
                                    out.print(usuarioMostrar.getNombres() + " " + usuarioMostrar.getApellidos());
                                }
                            %>
                        </h2>

                        <%-- GESTION: Administracion de datos que alimentan la base --%>        
                        <ul>
                            <li class="icon icon-arrow-left"><a class="icon icon-search" href="#">Gestión</a>
                                <div class="mp-level">
                                    <h2 class="icon icon-search">Gestión</h2>
                                    <a class="mp-back" href="#">Volver al menú</a>
                                    <ul>
                                        <li><a href="#" target="iframe">Personas</a></li>
                                        <li class="icon icon-arrow-left"><a href="#" >Equipos</a>
                                            <div class="mp-level">
                                                <h2 class="icon icon-search">Equipos</h2>
                                                <a class="mp-back">Volver a Gestión</a>
                                                <ul>
                                                    <li class="icon icon-arrow-left"><a>Tipos</a>
                                                        <div class="mp-level">
                                                            <h2>Tipos</h2>
                                                            <a class="mp-back">Volver a equipos</a>
                                                            <ul>
                                                                <li><a href="#">Agregar</a></li>
                                                                <li><a href="#">Modificar</a></li>
                                                                <li><a href="#">Borrar</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                    <li class="icon icon-arrow-left"><a>Marcas</a>
                                                        <div class="mp-level">
                                                            <h2>Marcas</h2>
                                                            <a class="mp-back">Volver a equipos</a>
                                                            <ul>
                                                                <li><a href="#">Agregar</a></li>
                                                                <li><a href="#">Modificar</a></li>
                                                                <li><a href="#">Borrar</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                    <li class="icon icon-arrow-left"><a>Modelos</a>
                                                        <div class="mp-level">
                                                            <h2>Modelos</h2>
                                                            <a class="mp-back">Volver a equipos</a>
                                                            <ul>
                                                                <li><a href="#">Agregar</a></li>
                                                                <li><a href="#">Modificar</a></li>
                                                                <li><a href="#">Borrar</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                    <li class="icon icon-arrow-left"><a>Estados</a>
                                                        <div class="mp-level">
                                                            <h2>Estados</h2>
                                                            <a class="mp-back">Volver a equipos</a>
                                                            <ul>
                                                                <li><a href="#">Agregar</a></li>
                                                                <li><a href="#">Modificar</a></li>
                                                                <li><a href="#">Borrar</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li><a href="#" target="iframe">Solicitudes</a></li>
                                    </ul>
                                </div>
                            </li>        

                            <%-- REGISTROS --%>
                            <li class="icon icon-arrow-left">
                                <a class="icon icon-search" href="#">Registro</a>
                                <div class="mp-level">
                                    <h2 class="icon icon-news">Registro</h2>
                                    <a class="mp-back" href="#">Volver al menu</a>
                                    <ul>
                                        <li><a href="#">Personas</a></li>
                                        <li><a href="#">Equipos</a></li>
                                        <li><a href="#">Casos</a></li>
                                        <li><a href="#">Solicitudes</a></li>
                                    </ul>
                                </div>
                            </li>

                            <li class="icon icon-arrow-left">
                                <a class="icon icon-search" href="#">Cancelar servicios</a>
                                <div class="mp-level">


                                    <h2 class="icon icon-shop">Cancelar servicios</h2>
                                    <a class="mp-back" href="#">Volver al menú</a>
                                    <ul>


                                        <li class="icon icon-arrow-left">
                                            <a class="icon icon-t-shirt" href="#">Clothes</a>


                                            <div class="mp-level">
                                                <h2 class="icon icon-t-shirt">Clothes</h2>
                                                <a class="mp-back" href="#">Volver</a>
                                                <ul>
                                                    <li class="icon icon-arrow-left">
                                                        <a class="icon icon-female" href="#">Women's Clothing</a>
                                                        <div class="mp-level">
                                                            <h2 class="icon icon-female">Women's Clothing</h2>
                                                            <a class="mp-back" href="#">back</a>
                                                            <ul>
                                                                <li><a href="#">Tops</a></li>
                                                                <li><a href="#">Dresses</a></li>
                                                                <li><a href="#">Trousers</a></li>
                                                                <li><a href="#">Shoes</a></li>
                                                                <li><a href="#">Sale</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                    <li class="icon icon-arrow-left">
                                                        <a class="icon icon-male" href="#">Men's Clothing</a>
                                                        <div class="mp-level">
                                                            <h2 class="icon icon-male">Men's Clothing</h2>
                                                            <a class="mp-back" href="#">back</a>
                                                            <ul>
                                                                <li><a href="#">Shirts</a></li>
                                                                <li><a href="#">Trousers</a></li>
                                                                <li><a href="#">Shoes</a></li>
                                                                <li><a href="#">Sale</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a class="icon icon-diamond" href="#">Jewelry</a>
                                        </li>
                                        <li>
                                            <a class="icon icon-music" href="#">Music</a>
                                        </li>
                                        <li>
                                            <a class="icon icon-food" href="#">Grocery</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <%-- ADMINISTRACION:  --%>        
                            <ul>
                                <li class="icon icon-arrow-left">
                                    <a class="icon icon-search" href="#">Administración</a>
                                    <div class="mp-level">
                                        <h2 class="icon icon-news">Administración</h2>
                                        <a class="mp-back" href="#">Volver al menu</a>
                                        <ul>
                                            <li><a href="#">Personas</a></li>
                                            <li><a href="#" target="iframe">Equipos</a></li>
                                            <li><a href="#" target="iframe">Solicitudes</a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="icon icon-arrow-left">
                                    <a class="icon icon-search" href="#">Informes</a>
                                    <div class="mp-level">
                                        <h2 class="icon icon-news">Informes</h2>
                                        <a class="mp-back" href="#">Volver al menú</a>
                                        <ul>
                                            <li><a href="#">Por Area</a></li>
                                            <li><a href="#">Por Fecha</a></li>
                                            <li><a href="#">Por Solicitud</a></li>
                                            <li><a href="#">Por Rol</a></li>
                                        </ul>
                                    </div>
                                </li>





                                <li><a class="icon icon-search" href="#">Actualizar Datos</a></li>

                            </ul>

                    </div>
                </nav>
                <!-- /mp-menu -->

                <div class="scroller"><!-- this is for emulating position fixed of the nav -->
                    <div class="scroller-inner">
                        <!-- Top Navigation -->
                        <div class="content clearfix">
                            <div class="block block-40 clearfix">
                                <p><a href="#" title="Menu de opciones" id="trigger" class="menu-trigger">Menu</a>
                                    II
                                    <a href="CierreSesion.jsp" 
                                       title="Cerrar Sesión"
                                       onclick="confirmar(this.href);
                                               return false"> 
                                        <font color="red"><font color="red"><b>Cerrar Sesión</b>
                                        </font></a>
                            </div>

                            <iframe  src="../../Registro equipo/RegistroEquipo.html" name="iframe"
                                     width="1150" height="700" scrolling="auto" frameborder="1">
                            <p>Texto alternativo para navegadores que no aceptan iframes.</p>
                            </iframe>

                        </div>
                    </div>



                    <!-- /scroller-inner -->
                </div><!-- /scroller -->

            </div><!-- /pusher -->
        </div><!-- /container -->
        <script src="js/classie.js"></script>
        <script src="js/mlpushmenu.js"></script>
        <script>
                                           new mlPushMenu(document.getElementById('mp-menu'), document.getElementById('trigger'), {
                                               type: 'cover'
                                           });

        </script>
        <script language="JavaScript" type="text/javascript">

            var bPreguntar = true;

            window.onbeforeunload = preguntarAntesDeSalir;

            function preguntarAntesDeSalir()
            {
                if (bPreguntar)
                    return "¿Seguro que quieres salir?";
            }
        </script>        
    </body>
</html>
