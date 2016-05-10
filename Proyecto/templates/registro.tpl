<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="es" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="es" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="es" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="es" class="no-js"> <!--<![endif]-->
    <head>
    	<!-- meta character set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Blue One Page HTML Template</title>
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <meta name="author" content="Muhammad Morshed">

		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- CSS
		================================================== -->

		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/jquery.fancybox.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/slit-slider.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/animate.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/main.css">

		<!-- Modernizer Script for old Browsers -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <style type="text/css">
        @font-face {
            font-family: mifuente;
            src: url("mifuente.ttf");
        }

        body{
            font-family: mifuente;
        }

        .ContenidoFormulario{
            color: #F7FC5D;
            font-weight: bold;
            width: 50%;
            margin-left: 25%;
            margin-top: 17%;
            padding-bottom: 10%;
        }
       .inputFormu{
            background-color: #FAFAD5;
            color:black;
        }
        .Formu{
            margin-top: 10%;
            margin-left: 10%;
        }

        p.consejo{
            font-size: 12px;
        }

        .tituloRegistro{

            font-size: 32px;
            font-weight: bold;
            color: #F9F636;
            margin-bottom: 12%;
            margin-top: -6%;
        }

        .posicionMenu{
            margin-left: 95%;
            margin-top: -4%;
            width: 60%;
            padding: 5%;
            color:#DED35C;

        }

        .posicionMenu input{
            font-size: 14px;
            padding-left: 1%;
        }

        </style>

        <script type="text/javascript">

        function logof(){
            window.location.href = "logof.php";
        }
        function index(){
            window.location.href = "index.php";
        }
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
            $('div.posicionMenu').hide();
                $("a.Ocultame").click(function(){
                    if($('a.Ocultame').attr("id") == "oculto"){
                        $('div.posicionMenu').show();
                        $('a.Ocultame').attr("id","visible");
                    }else{
                        $('div.posicionMenu').hide();
                        $('a.Ocultame').attr("id","oculto");
                    }

                });
        });
        </script>

    </head>

    <body>
    <!-- START BLOCK : menu0 -->

        <header id="navigation" class="navbar-inverse navbar-fixed-top animated-header">
            <div class="container">
                <ul id="nav" class="nav navbar-nav">
                    <li><a href="index.php" onclick="index()">Home</a></li>
                    <li><a href="#service">Rutas</a></li>
                    <li><a href="#portfolio">Noticias</a></li>
                    <li><a href="#testimonials">Leyes y prohibiciones</a></li>
                    <li><a href="#price">Entrenamiento</a></li>
                    <li><a href="#" class="Ocultame" id="oculto">Conectarse</a></li>
                    <div class="posicionMenu">
                        <table>
                            <form name='input' method="POST">
                                <tr>
                                    <td><label class="control-label"  for="username">Nombre de usuario</label></td>
                                    <td><input type="text" id="username" name="username" placeholder="" class="inputFormu" required></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label" for="password">Contraseña</label></td>
                                    <td><input type="password" id="password" name="password" placeholder="" class="inputFormu" required></td>
                                </tr>
                                <tr>
                                    <td><input type='submit' class="btn btn-success" name="Enviar"></input></td>
                                </tr>
                            </form>
                        </table>
                    </div>
                </ul>
            </div>
        </header>

    <!-- END BLOCK : menu0 -->

        <!-- START BLOCK : registro -->
		<main class="site-content" role="main">
		<section id="home-slider">
            <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">

					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">

						<div class="bg-img bg-img-1"></div>

						<div class="slide-caption">
                            <div class="ContenidoFormulario">

									<div class="Formu">
										<form class="form-horizontal" action='' method="POST">
											<fieldset>
											 	<div class="tituloRegistro">
													<p class="">Registro de nuevo usuario</p>
												</div>
											    <div class="control-group">
											      <!-- Username -->
											      <label class="control-label"  for="username">Nombre</label>
											      <div class="controls">
											        <input type="text" name="nombre" id="username" placeholder="" class="inputFormu">
											      </div>
											    </div>
                                                <div class="control-group">
                                                  <!-- Username -->
                                                  <label class="control-label"  for="username">Alias</label>
                                                  <div class="controls">
                                                    <input type="text" name="nickname" id="alias" placeholder="" class="inputFormu">
                                                  </div>
                                                </div>
											    <div class="control-group">
											      <!-- E-mail -->
											      <label class="control-label" for="email">Correo electrónico</label>
											      <div class="controls">
											        <input type="text" name="email" id="email" placeholder="" class="inputFormu">
											      </div>
											    </div>
											    <div class="control-group">
											      <!-- Password-->
											      <label class="control-label" for="password">Contraseña</label>
											      <div class="controls">
											        <input type="password" name="password" id="password" placeholder="" class="inputFormu">
											        <p class="consejo">La contraseña debe tener al menos 8 carácteres con una mayúscula y un número</p>
											      </div>
											    </div>
											    <div class="control-group">
											      <!-- Password -->
											      <label class="control-label"  for="password_confirm">Repite la contraseña</label>
											      <div class="controls">
											        <input type="password" name="password2" id="password_confirm" placeholder="" class="inputFormu">
											      </div>
											    <div class="btnPosicion">
											      <!-- Button -->
											      <div class="controls">
											        <button class="btn btn-success" name="registrar">Únete</button>
											      </div>
											  </div>
											</fieldset>
										</form>
									</div>
							</div>
                        </div>

					</div>
				</div>
		</section>
        <!-- END BLOCK : registro -->

<!-- START BLOCK : jquery -->

        <script src="js/jquery-1.11.1.min.js"></script>

        <script src="js/bootstrap.min.js"></script>

        <script src="js/jquery.singlePageNav.min.js"></script>

        <script src="js/jquery.fancybox.pack.js"></script>

        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>

        <script src="js/owl.carousel.min.js"></script>

        <script src="js/jquery.easing.min.js"></script>

        <script src="js/jquery.slitslider.js"></script>
        <script src="js/jquery.ba-cond.min.js"></script>

        <script src="js/wow.min.js"></script>

        <script src="js/main.js"></script>
    <!-- END BLOCK : jquery -->
    </body>
</html>
