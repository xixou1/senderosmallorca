<?php

  	include_once("../models/usuario.php");
    include_once("../models/MySQLDataSource.php");

	function login($login, $password){

		$con = new MySQLDataSource();

		$con -> conectar();

		$loginIndex = $login;
		$passIndex = $password;

		$consulta = "SELECT Login, Password, Nombre, Tipo FROM `usuarios` WHERE Login = '".$loginIndex."' AND Password = '".$passIndex."'";
		$newLogin = null;
		$incr = 0;
		$inicio = false;

		$con -> ejecutar_consulta($consulta);

		$fila = $con ->siguiente();
		$passCif = md5($passIndex);

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

		if((@$nicknameRecogido == $nickname) && (@$passCifrada == $passwordRecogido)){

			$_SESSION['nombreUsuario'] = $nameBD;
			$_SESSION['tipo'] = $tipoBD;
			header("Location: index.php");
		}else{

		 return "<script type='text/javascript'>
				 alert('No puedes entrar aqui si no eres un usuario normal y estas registrado');
				 window.location.href = 'index.php';
				</script>";
		}

	}

?>