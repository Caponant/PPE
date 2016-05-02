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

?>


<link rel="stylesheet" href="website.css" type="text/css" />
<body>

	<form action="AC13traitement.php" method="POST">
	
		Lieu : 	<select size="1" name="ville">
				<option selected> --- Selectionnez un lieu ---
		
		
<?php
		
			$sql = "SELECT * 
					FROM lieu";
			$result = mysql_query($sql)
			or die ("Erreur SQL de <b>".$_SERVER["SCRIPT_NAME"]."</b>.<br />Dans le fichier : ".__FILE__." a la ligne : ".__LINE__."<br />".mysql_error()."<br /><br /><b>REQUETE SQL : </b>$sql<br />");
			$cpt=mysql_num_rows($result);
			

			if ($cpt>0) {
				while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
					echo "<option value=$row[0]>$row[2]</option>";
				}
			}
?>
				</select><br><br>
				Rendez vous entre <input type="date" name="RDVDebut" id="RDVDebut"/> 
				Et <input type="date" name="RDVFin" id="RDVFin"/><br><br>
				Prise en charge le <input type="date" value="8/7/15/ 8:15" name="RDVPrise" id="RDVPrise" readonly="readonly"/><br><br>
				Commentaire <textarea class="area" name="Commentaire" id="Commentaire" maxlenght="10" cols="20"></textarea><br><br>
				
				<input class="btn" type="submit" value="Valider"/>
				<input class="btn" type="reset" value="Effacer"/>
				
	
	</form>
</body>