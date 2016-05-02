<?php

	include 'AccesDonnees.php';

	$ip=explode(".",$_SERVER['SERVER_ADDR']);
	
	switch ($ip[0]) {
	
		case 127 :
			//local
			$host = "127.0.0.1";
			$user = "root";
			$password = "";
			break;
	
		default :
			exit ("Serveur non reconnu...");
			break;
		}

	connexion($host, 3306, "mlr1", $user, $password);

	$NumTournee = 123456;
	$EtapeID = rand(0, 9999);
	$IDLieu = $_POST['ville'];
	$RDVDebut = $_POST['RDVDebut'];
	$RDVFin = $_POST['RDVFin'];
	$RDVPrise = $_POST['RDVPrise'];
	$Commentaire = $_POST['Commentaire'];
	
	echo "Numéro Tournée : ".$NumTournee."<br>";
	echo "ID Lieu : ".$IDLieu."<br>";
	echo "RDV Debut : ".$RDVDebut."<br>";
	echo "RDV Fin : ".$RDVFin."<br>";
	echo "RDV Prise : ".$RDVPrise."<br>";
	echo "Commentaire : ".$Commentaire."<br>";
	
	$sql = "INSERT INTO etape(TRNNUM, ETPID, LIEUID, ETPHREMIN, ETPHREMAX, ETPNBPALCHARGEUR, ETPCOMMENTAIRE)
			VALUES (\"$NumTournee\", \"$EtapeID\", \"$IDLieu\", \"$RDVDebut\", \"$RDVFin\", \"$RDVPrise\", \"$Commentaire\");";
					
	echo "<br>".$sql."<br><br>";
	
	executeSQL($connexion, $sql);

?>