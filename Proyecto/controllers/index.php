<?php
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

	//Iniciamos el objeto templatePower y lo preparamo
	$template =  new TemplatePower("../templates/index.tpl");

	$template->prepare();

	// En este bloque, decidimos que menu mostrar, dependiendo de si hay un usuario conectado, y cual es su tipo
	if(!empty(@$nombre)){

		if($tipo == 1){
			$template->newBlock('menu1');
			$template->assign('nombre',$nombre);
			echo "<script>alert('Se supone el login es correcto');</script>";
			echo "El nombre que hay en la sesion es ".$_SESSION['nombreUsuario'];
			echo "Y su tipo es".$_SESSION['tipo'];
		}else{
			$template->newBlock('menu2');
			echo "<script>alert('Se supone el login es correcto');</script>";
			echo "El nombre que hay en la sesion es ".$_SESSION['nombreUsuario']." Y ME DAS IGUAL ";
			echo "Y su tipo es".$_SESSION['tipo']." Y ME DAS IGUAL ";
		}

	}else{

		$template->newBlock('menu0');
		$template->newBlock('error');

		if(isset($_POST['Enviar']) && !empty($_POST['username']) && !empty($_POST['password'])){
				
			$con = new MySQLDataSource();

			$con -> conectar();

			@$loginIndex = $_POST['username'];
			@$passIndex = $_POST['password'];
			@$passCif = md5($passIndex);

			$consulta = "SELECT Login, Password, Nombre, Tipo FROM `usuarios` WHERE Login = '".$loginIndex."' AND Password = '".$passCif."'";
			echo $consulta;

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
				echo "<script>alert('Se supone el login es correcto');</script>";
				echo $_SESSION['nombreUsuario'];
				echo $_SESSION['tipo'];


				}else{

				echo "<script>alert('Se supone el login es incorrecto, pero se ha enviado');</script>";
				echo $loginBD;
				echo $loginIndex;
				echo $passCif;
				echo $passBD;

				}


				}else{
					$template->assign('error',"Nombre, contraseña o captcha erroneos, intentalo de nuevo");
					echo "<script>alert('Se supone que no se ha enviado por que no he rellenado una puta mierda');</script>";
				}

	}

		$template->newBlock('banner');
		$template->newBlock('rutas');
		$template->newBlock('imagenes');
		$template->newBlock('jquery');


		//Pintamos los bloques
		$template->printToScreen();

?>