<?php
	include "AccesDonnees.php";

	$ip=explode(".",$_SERVER['SERVER_ADDR']);

	switch ($ip[0]) {

		case 127 :
		//local
			$host = "127.0.0.1";
			$user = "root";
			$password = "";
			$dbname = "mlr1";
			$port='3306';
			break;
			
		case 192 :
			
		case 31 :
		//hostinger
			$host = "mysql.hostinger.fr";
			$user = "u847412209_root";
			$password = "C@pon@nt29200";
			$dbname = "u847412209_mlr1";
			$port='3306';
			break;
			
		default :
			exit ("Serveur non reconnu...");
			break;
	}
	
	$connexion=connexion($host,$port,$dbname,$user,$password);
	
/*	if ($connexion) {
		echo "Connexion reussie<br />";
		echo "Base $dbname selectionnee... <br />";
		echo "Mode acces : $modeacces<br />";
	}
*/
	
?>