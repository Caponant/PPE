<?php

	
//test pour voir si il s'agie d'une creation d'etape

if (isset($_GET['valider'])){
	// recuperate Des informations
	$date = $_GET['date'];
	$chauffeur = $_GET['chauffeur'];
	$voiture = $_GET['voiture'];
	$commentaire = $_GET['commentaire'];
	$prisEnCharge =$_GET['prisEnCharge'];

	//inclu la fonction sql

	include 'connectAD.php';

	//recherche du dernier id 
	$sql = "SELECT max(TRNNUM) FROM tournee";
	$result = executeSQL($sql);
	$IdTournee = mysql_fetch_row($result);
	
	//recherche de l'id du chauffeur
	$sql = "SELECT CHFID FROM chauffeur where CHFNOM = '$chauffeur'";
	$result = executeSQL( $sql);
	$chauffeurid = mysql_fetch_row($result);
	
	// envoie les informations sur la bdd
	$sql = "INSERT INTO tournee(TRNNUM, VEHIMMAT, CHFID, TRNCOMMENTAIRE, TRNDTE) VALUES ($IdTournee[0]+1,'$voiture',$chauffeurid[0],'$commentaire','$prisEnCharge')";
	$result = executeSQL($sql)				
		or die ("Erreur SQL de <b>".$_SERVER["SCRIPT_NAME"]."</b>.<br />Dans le fichier : ".__FILE__." a la ligne : ".__LINE__."<br />".mysql_error()."<br /><br /><b>REQUETE SQL : </b>$sql<br />");

}

if (isset($_GET['ajouter'])){
echo "ajouter"; 
}
?>