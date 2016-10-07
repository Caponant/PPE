<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
                      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
		<meta http-equiv="content-language" content="fr" />
		<title>MESGUEN - AC12</title>
	</head>

	<body>
		<form id="formulaire" action="./AC12traitement.php" method="get">
			<label for="date">Date :</label>
			<input id="date" name="date" type="text" value="<?php $date=date("Y/m/d H:i"); echo "$date" ?>" size="15" maxlength="8"/>
			
			<br/>
			<br/>
			
			<label for="chauffeur" >Chauffeur :</label>
			
			<?php
				include 'connectAD.php';
				
				$sql = "SELECT CHFNOM FROM chauffeur"; 
				
				$result = mysql_query($sql);
				
				$cpt = mysql_num_rows($result);
				
				if ($cpt>0) {
					echo "<select size=\"1\" name=\"chauffeur\" id=\"numero\">";
					
					while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
						echo "<option value=$row[0]>$row[0]</option>";
					}
					
				} else {
					echo "<select size=\"1\" name=\"chauffeur\" id=\"chauffeur\" disabled=\"disabled\" >";	
					echo "<option>Aucune information...</option>";
				}
			
				echo "</select>";
    		?>
    		
    		<br/>
    		<br/>
    		
			<label for="voiture">V�hicule :</label>
			
			<?php
				$sql = "SELECT VEHIMMAT FROM vehicule";
				
				$result = mysql_query($sql);
				
				$cpt = mysql_num_rows($result);
				
				if ($cpt>0) {
					echo "<select size=\"1\" name=\"voiture\" id=\"voiture\">";
					
					while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
						echo "<option value=$row[0]>$row[0]</option>";
					}
					
				} else {
					echo "<select size=\"1\" name=\"voiture\" id=\"voiture\" disabled=\"disabled\" >";	
					echo "<option>Aucune information...</option>";
				}
			
				echo "</select>";
    		?>
			
			<br/>
			<br/>
			
			<label for="prisEnCharge">Pris en charge le :</label>
			<input id="prisEnCharge" name="prisEnCharge" type="text" value="<?php $date = date("Y/m/d H:i:00"); echo "$date" ?>" readonly size="10" maxlength="8"/>

			<br/>
			<br/>
			
			<label for="commentaire">Tapez un commentaire :</label>
			<textarea name="commentaire" rows="5" cols="15"></textarea>
			
			<br/>
			<br/>
			
	    	<input id="valider" name="valider" type="submit" value="Valider"
				<?php
					$sql = "SELECT * FROM etape";
					
					$result = mysql_query($sql);
					
					$cpt = mysql_num_rows($result);
					
					if ($cpt==0){
						echo("disabled=\"disabled\"");
					}
				?>
			/>
				
			<input id="cancel" type="button" name="retour" value="Annuler" onclick="location.href='index.php'" />
	   	</form>
	   	
   		<br/>
   		<br/>
   		<br/>
   		<hr/>
   		<br/>
   		<br/>
   		
    	<label for="etapes">Etapes :</label>
			
		<table border="0" style="width:80%" >
			<?php
				//si il recois un numero il regarde si il y a des etapes associer .
				if (@$TRNNUM = $_GET['tournee']) {
					echo "<tr>
							<td>Numero de l'etape</td>
							<td>Nom du lieu</td>";
						
					//selection id de la ville
					$sql = "SELECT ETPID, LIEUNOM FROM commune, lieu, etape WHERE commune.VILID = lieu.VILID AND etape.LIEUID = lieu.LIEUID AND TRNNUM = $TRNNUM";
						
					$result = mysql_query($sql);
						
					$cpt = compteSQL($sql);
						
					while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
						echo "<tr>";
						echo "<td>$row[0]</td>";
						echo "<td>$row[1]</td>";
						echo "<td>
								<form id='supprimer' action='supprimer-etape.php'>
									<input id='idetape' name='idetape' type='hidden' value='$row[0]' />
									<input id='tournee' name='tournee' type='hidden' value='$TRNNUM'/>
									<input id='supprimer' name='supprimer' type='submit' value='Supprimer' /> 
								</form> </td>";
						
						echo"<td><img src=\"./image/modif02.png\" alt=\"erreur\" onclick=\"location.href='./AC13.php'\" style=\"cursor:pointer;\" ></td>";
						echo"</tr>";	
					}
				} else {
					//selection l'id de la nouvelle tournÃ©e
					$sql = "SELECT max(TRNNUM) FROM tournee";
						
					$result = executeSQL($sql);
						
					$IdTournee = mysql_fetch_row($result);
							
					echo"</tr>";
					echo "<p>Aucune etape en cour...</p>";
				}
    		?>

		</table>
		
		<form id="AC13" action="AC13.php">
			<input id="tournee" name="tournee" type="hidden" value="<?php echo "$TRNNUM" ?>" />
			<input id="ajouter" name="ajouter" type="submit" value="Ajouter" />
		</form>
		
		<?php 
			if (isset($_GET['message']))
				echo $_GET['message'];
			else
				echo "&nbsp;";
		?>
	</body>
</html>
