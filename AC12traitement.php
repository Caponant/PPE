<?php

	// recuperate Des informations 
	$date = $_GET['date'];
	$chauffeur = $_GET['chauffeur'];
	$voiture = $_GET['voiture'];
	$commentaire = $_GET['commentaire'];
	$prisEnCharge =$_GET['prisEnCharge'];
	$valide =$_GET['valide'];
	$ajouter =$_GET['ajouter'];
//test pour voir si il s'agie d'une creation d'etape

if $valide = "valider"{
echo "valider"
	//inclu la fonction sql
	include 'connectAD.php';

	// envoie les informations sur la bdd
	$sql = "SELECT CHFNOM FROM chauffeur"; 
	$result = mysql_query($sql)				
		or die ("Erreur SQL de <b>".$_SERVER["SCRIPT_NAME"]."</b>.<br />Dans le fichier : ".__FILE__." a la ligne : ".__LINE__."<br />".mysql_error()."<br /><br /><b>REQUETE SQL : </b>$sql<br />");
}

if $ajouter = "ajouter"{
echo "ajouter" 
}
?>