<%-- 
    Document   : Index
    Created on : 28/02/2015, 02:17:53 PM
    Author     : Jairo Hernández
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SIADSO .::. Inicio</title>

        <link rel="shortcut icon" href="favicon.ico">

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" />
        <!-- Squad theme CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link href="color/default.css" rel="stylesheet">

    </head>

    <body id="page-top" data-spy="scroll" data-target=".navbar-custom">
        <!-- Preloader -->
        <div id="preloader">
            <div id="load"></div>
        </div>

        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="Index.jsp" title="Inicio">
                        <h1>SIADSO</h1>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#intro">Inicio</a></li>
                        <li><a href="#about">Nosotros</a></li>
                        <li><a href="#service">Servicios</a></li>
                        <li><a href="#contact">contacto</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clientes <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="Login.jsp" target="_blank">Iniciar Sesión</a></li>  
                                <li><a href="#">Registro</a></li> 
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Section: intro -->
        <section id="intro" class="intro">

            <div class="slogan">
                <h2>BIENVENIDO A <span class="text_color">SIADSO</span> </h2>
                <h4>MESA DE AYUDA ESPECIALIZADA EN LA ADMINISTRACION DE SOPORTE TECNICO</h4>
            </div>
            <div class="page-scroll">
                <a href="#service" class="btn btn-circle">
                    <i class="fa fa-angle-double-down animated"></i>
                </a>
            </div>
        </section>
        <!-- /Section: intro -->

        <!-- Section: about -->
        <section id="about" class="home-section text-center">
            <div class="heading-about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <div class="section-heading">
                                    <h2>NOSOTROS</h2>
                                    <i class="fa fa-2x fa-angle-down"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">

                <div class="row">
                    <div class="col-lg-2 col-lg-offset-5">
                        <hr class="marginbot-50">
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="wow bounceInUp" data-wow-delay="0.2s">
                            <div class="team boxed-grey">
                                <div class="inner">
                                    <h5>EDWIN LEÓN</h5>
                                    <p class="subtitle">Analista y Desarrollador</p>
                                    <div class="avatar"><img src="img/team/1.jpg" alt="" class="img-responsive img-circle" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="wow bounceInUp" data-wow-delay="0.5s">
                            <div class="team boxed-grey">
                                <div class="inner">
                                    <h5>DANIEL LÓPEZ</h5>
                                    <p class="subtitle">Analista y Desarrollador</p>
                                    <div class="avatar"><img src="img/team/2.jpg" alt="" class="img-responsive img-circle" /></div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="wow bounceInUp" data-wow-delay="0.8s">
                            <div class="team boxed-grey">
                                <div class="inner">
                                    <h5>OSCAR RONCANCIO</h5>
                                    <p class="subtitle">Analista y Desarrollador</p>
                                    <div class="avatar"><img src="img/team/3.jpg" alt="" class="img-responsive img-circle" /></div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="wow bounceInUp" data-wow-delay="1s">
                            <div class="team boxed-grey">
                                <div class="inner">
                                    <h5>JAIRO A. HERNÁNDEZ</h5>
                                    <p class="subtitle">Analista y Desarrollador</p>
                                    <div class="avatar"><img src="img/team/4.jpg" alt="" class="img-responsive img-circle" /></div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>		
            </div>
        </section>
        <!-- /Section: about -->


        <!-- Section: services -->
        <section id="service" class="home-section text-center bg-gray">

            <div class="heading-about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <div class="section-heading">
                                    <h2>NUESTROS SERVICIOS</h2>
                                    <i class="fa fa-2x fa-angle-down"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-lg-offset-5">
                        <hr class="marginbot-50">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-md-3">
                        <div class="wow fadeInLeft" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-1.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Print</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-2.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Web Design</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-3.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Photography</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <div class="wow fadeInRight" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-4.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Cloud System</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>		
            </div>
        </section>
        <!-- /Section: services -->




        <!-- Section: contact -->
        <section id="contact" class="home-section text-center">
            <div class="heading-contact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <div class="section-heading">
                                    <h2>PONTE EN CONTACTO</h2>
                                    <i class="fa fa-2x fa-angle-down"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">

                <div class="row">
                    <div class="col-lg-2 col-lg-offset-5">
                        <hr class="marginbot-50">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="boxed-grey">
                            <form id="contact-form" action='Servlet'>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">
                                                Nombre</label>
                                            <input type="text" class="form-control" id="txtnombre" placeholder="Ingrese nombre y apellido..." required />
                                        </div>
                                        <div class="form-group">
                                            <label for="email">
                                                Dirección de E-Mail</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                                </span>
                                                <input type="email" class="form-control" id="txtemail" placeholder="Ingresa tu direccion de email..." required /></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="subject">
                                                Motivo</label>
                                            <select id="txtasunto" name="txtasunto" class="form-control" required="required">
                                                <option value="na" selected="">Seleccione uno:</option>
                                                <option value="service">Inquietud general sobre el servicio</option>
                                                <option value="suggestions">Sugerencias</option>
                                                <option value="product">Soporte sobre el producto</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">
                                                Mensaje</label>
                                            <textarea name="txtmensaje" id="txtmensaje" class="form-control" rows="9" cols="25" required
                                                      placeholder="Ingresa tu mensaje..."></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
                                            Enviar mensaje</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="widget-contact">
                            <h5>Oficina Principal</h5>

                            <address>
                                <strong>SIADSO, LTDA.</strong><br>
                                Tower 795 Folsom Ave, Beautiful Suite 600<br>
                                Bogotá, Colombia.<br>
                                <abbr title="Phone">PBX:</abbr> 000 0000
                            </address>

                            <address>
                                <strong>Email</strong><br>
                                <a href="mailto:#">centrodenegocios@ciadso.com.co</a>
                            </address>	
                            <address>
                                <strong>Encuentranos en redes sociales</strong><br>
                                <ul class="company-social">
                                    <li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                    <li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                </ul>	
                            </address>					

                        </div>	
                    </div>
                </div>	

            </div>
        </section>
        <!-- /Section: contact -->

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="wow shake" data-wow-delay="0.4s">
                            <div class="page-scroll marginbot-30">
                                <a href="#intro" id="totop" class="btn btn-circle">
                                    <i class="fa fa-angle-double-up animated"></i>
                                </a>
                            </div>
                        </div>
                        <p>&copy;Copyright 2015 - SIADSO. Derechos reservados.</p>
                    </div>
                </div>	
            </div>
        </footer>

        <!-- Core JavaScript Files -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>	
        <script src="js/jquery.scrollTo.js"></script>
        <script src="js/wow.min.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="js/custom.js"></script>

    </body>

</html>
