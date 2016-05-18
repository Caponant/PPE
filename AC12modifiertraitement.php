<?php
	include 'connectAD.php';
	
	//test pour voir si il s'agie d'une creation d'etape
	if (isset($_GET['valider'])) {
		// recuperate Des informations
		$date = $_GET['date'];
		$chauffeur = $_GET['chauffeur'];
		$voiture = $_GET['voiture'];
		$commentaire = $_GET['commentaire'];
		$prisEnCharge =$_GET['prisEnCharge'];
		$TRNNUM = $_GET['tournee'];
		
		//recherche de l'id du chauffeur
		$sql = "SELECT CHFID 
				FROM chauffeur 
				WHERE CHFNOM = '$chauffeur'";
		
		$result = executeSQL( $sql);
		
		$chauffeurid = mysql_fetch_row($result);
		
		// envoie les informations sur la bdd
		$sql = "UPDATE tournee
				SET VEHIMMAT = '$voiture', CHFID = '$chauffeurid[0]', TRNCOMMENTAIRE = '$commentaire', TRNDTE = '$prisEnCharge'
				WHERE TRNNUM = '$TRNNUM'";
		
		$result = executeSQL($sql);
	}
	
	if ($result)
		echo "<meta http-equiv='refresh' content='0;url=index.php?message=<font color=green> Modification realisee ! </font>'>";
		else
			echo "<meta http-equiv='refresh' content='0;url=index.php?message=<font color=red> Probleme de modification ... </font>'>";
?>
