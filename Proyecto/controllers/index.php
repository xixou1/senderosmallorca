<?php
	error_reporting(0);
// Hacemos los includes necesarios
    include_once("../models/usuario.php");
    include_once("../models/MySQLDataSource.php");
    include_once("../template_power/TemplatePower.php");
    include_once("funciones.php");
    session_start();

	//Variables de sesion, para saber tipo y login de la persona coenctada
	@$nombre = $_SESSION['nombreUsuario'];
	@$usuario = $_SESSION['UsuarioIntroducido'];
	@$tipo = $_SESSION['tipo'];
	@$_SESSION['contador'] = 0;
	//Iniciamos el objeto templatePower y lo preparamo
	$template =  new TemplatePower("../templates/index.tpl");

	$template->prepare();

	// En este bloque, decidimos que menu mostrar, dependiendo de si hay un usuario conectado, y cual es su tipo
	if(!empty(@$nombre)){

		if($tipo == 1){
			$template->newBlock('menu1');
			$template->assign('nombre',$nombre);
		}else{
			$template->newBlock('menu2');
		}

	}else{

		$template->newBlock('menu0');
		$template->newBlock('error');

		if(isset($_POST['Enviar']) && !empty($_POST['username']) && !empty($_POST['password'])){
			
			@$_SESSION['contador'] = 0;

			$con = new MySQLDataSource();

			$con -> conectar();

			@$loginIndex = $_POST['username'];
			@$passIndex = $_POST['password'];
			@$passCif = md5($passIndex);

			$consulta = "SELECT Login, Password, Nombre, Tipo FROM `usuarios` WHERE Login = '".$loginIndex."' AND Password = '".$passCif."'";

			$newLogin = null;
			$incr = 0;
			$inicio = false;
			$con -> ejecutar_consulta($consulta);

			$fila = $con ->siguiente();

				if($fila){

					$newLogin[$incr] =  new usuario();

					$newLogin[$incr] -> setLogin($fila->Login);
					$newLogin[$incr] -> setPassword($fila->Password);
					$newLogin[$incr] -> setNombre($fila->Nombre);
					$newLogin[$incr] -> setTipo($fila->Tipo);


					$loginBD = $newLogin[$incr] -> getLogin();
					$passBD = $newLogin[$incr] -> getPassword();
					$nameBD = $newLogin[$incr] -> getNombre();
					$tipoBD = $newLogin[$incr] -> getTipo();
				}


				if((@$loginBD == @$loginIndex) && (@$passCif == @$passBD)){

					$_SESSION['nombreUsuario'] = $nameBD;
					$_SESSION['tipo'] = $tipoBD;
					$_SESSION['contador'] = 0;
					header("Location: login.php");
				}else{

					echo "<script>alert('Datos incorrectos');</script>";
				
				}
		}
	}

		$template->newBlock('banner');
		$template->newBlock('rutas');
		$template->newBlock('imagenes');
		$template->newBlock('jquery');


		//Pintamos los bloques
		$template->printToScreen();

?>