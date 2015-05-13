<%-- 
    Document   : Login
    Created on : 28/02/2015, 02:36:44 PM
    Author     : Jairo Hernández
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--------------------
        LOGIN FORM
        by: Amit Jakhu
        www.amitjakhu.com
        --------------------->
        <link rel="shortcut icon" href="favicon.ico">
        <!--META-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>SIADSO .::. Inicio de Sesión</title>
        <!--STYLESHEETS-->
        <link href="css/styleLogin.css" rel="stylesheet" type="text/css" />
        <!--SCRIPTS-->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js">
        </script>
        <!--Slider-in icons-->
        <script type="text/javascript">
            $(document).ready(function () {
                $(".username").focus(function () {
                    $(".user-icon").css("left", "-48px");
                });
                $(".username").blur(function () {
                    $(".user-icon").css("left", "0px");
                });

                $(".password").focus(function () {
                    $(".pass-icon").css("left", "-48px");
                });
                $(".password").blur(function () {
                    $(".pass-icon").css("left", "0px");
                });
            });
        </script>
    </head>
    <body>
        <!--WRAPPER-->
        <div id="wrapper">
            <!--SLIDE-IN ICONS-->
            <div class="user-icon"></div>
            <div class="pass-icon"></div>
            <!--END SLIDE-IN ICONS-->

            <!--LOGIN FORM-->
            <form role="form" action="Servlet" class="login-form" method="GET">

                <!--HEADER-->
                <div class="header">
                    <!--TITLE--><h1>Iniciar sesión</h1><!--END TITLE-->
                    <!--DESCRIPTION--><span>Por favor ingrese cédula y contraseña para acceder a su panel de control.</span><br><!--END DESCRIPTION-->
                    <%
                        if (Utilidades.Conexion.getInstance() != null) {
                    %>
                    <span>Estado de conexión BD: <font color="Lime">Conectado<font></span>
                        <%
                        } else {
                        %>
                    <span>Estado de conexión BD: <font color="Red">Desconectado<font></span>
                        <%
                            }
                        %>
                </div>
                <!--END HEADER-->

                <!--CONTENT-->
                <div class="content">
                    <!--USERNAME-->
                    <input type="text" name="txtUsuario" id="txtUsuario" placeholder="Cédula de ciudadania" class="input username"/><!--END USERNAME-->
                    <!--PASSWORD-->
                    <input type="password" name="txtPassword" id="txtPassword" placeholder="Contraseña" class="input password"/><!--END PASSWORD-->
                </div>
                <!--END CONTENT-->
                <!--FOOTER-->
                <div class="footer">
                    <!--LOGIN BUTTON-->
                    <input type="hidden" name="rSesion" id="rSesion"  value="" />
                    <input type="submit" name="btnAcceder" value="Acceder" class="button" />
                    <!--END LOGIN BUTTON-->
                    <!--REGISTER BUTTON-->
                    <label for="checkbox"></label>
                    <input type="button" name="btnRecContrasena" value="Contraseña?" class="register" />
                    <!--END REGISTER BUTTON-->
                </div>
                <!--END FOOTER-->
            </form>
            <!--END LOGIN FORM-->
        </div>
        <!--END WRAPPER-->

        <!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

    </body>
</html>