<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
                      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
		<meta http-equiv="content-language" content="fr" />
		<title>AC12</title>
	</head>

	<body>
		<form id="formulaire" action="./AC12traitement.php" method="get">
		
			<!-- La Saisie pour la date avec une recuperation de la date automatique  -->

			<p>
				<label for="date">date : </label>
				<input id="date" name="date" type="text" 
				
				value="<?php 
							$date =date("d/m/y H:i");
							echo($date)
						?>" 
				
				size="10" maxlength="8"/>
			</p>
			
			<!-- La Selection des chauffeurs sur la base de donnÃ©e  -->

			<p>
			<label for="chauffeur" >chauffeur : </label>
			
			<?php

				include 'connectAD.php';	
				$sql = "SELECT CHFNOM FROM chauffeur"; 
				$result = mysql_query($sql)				
					or die ("Erreur SQL de <b>".$_SERVER["SCRIPT_NAME"]."</b>.<br />Dans le fichier : ".__FILE__." a la ligne : ".__LINE__."<br />".mysql_error()."<br /><br /><b>REQUETE SQL : </b>$sql<br />");
				$cpt=mysql_num_rows($result);
				
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
			</p>
			
			
			<!-- La Selection de la voiture dans la base de donnÃ©e  -->
			<p>
			
			<label for="voiture" >vehicule : </label>
			
			<?php
				$sql = "SELECT VEHIMMAT FROM vehicule"; 
				$result = mysql_query($sql)				
					or die ("Erreur SQL de <b>".$_SERVER["SCRIPT_NAME"]."</b>.<br />Dans le fichier : ".__FILE__." a la ligne : ".__LINE__."<br />".mysql_error()."<br /><br /><b>REQUETE SQL : </b>$sql<br />");
				$cpt=mysql_num_rows($result);
				
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
			</p>
			
			
			<!-- affiche la prisEnChrage en saisie blocker la date actuelle -->
			<p>
			
				<label for="prisEnCharge">pris en charge le : </label>
				<input id="prisEnCharge" name="prisEnCharge" type="text" 
				value="<?php 
							$date =date("d/m/y H:i");
							echo($date)
						?> " readonly
				size="10" maxlength="8"/>
			</p>
		
		<!-- La Saisie pour le text -->

				<label for="commentaire">taper un commentaire : </label> <br />
				<textarea  name="commentaire" rows="10" cols="10"> </textarea>
				
	
		<!-- Le button valider avec un blockage si il n'y a pas d'etape -->

        <p>
	    	<input id="valider" name="valider" type="submit"  value="valider" 
							<?php
				$sql = "SELECT * FROM etape"; 
				$result1 = mysql_query($sql)				
					or die ("Erreur SQL de <b>".$_SERVER["SCRIPT_NAME"]."</b>.<br />Dans le fichier : ".__FILE__." a la ligne : ".__LINE__."<br />".mysql_error()."<br /><br /><b>REQUETE SQL : </b>$sql<br />");
				$cpt=mysql_num_rows($result1);
				
				if ($cpt==0){
					echo("disabled=\"disabled\"");
				}
				?>
				title="" />
	    	<input id="annuler" name="annuler" type="reset" value="annuler" title="" />
	    	
	    </p>	
	   

	   <!-- Affiche les etapes en cours et un message si il n'y en a pas  -->

	   <p>
	    <label for="etapes">etapes: </label> <br></br>
	    </p>
		</form>
			
		<table border="0" style="width:80%" >
			<?php
				//selection l'id de la nouvelle tournÃ©e 
				$sql = "SELECT max(TRNNUM) FROM tournee"; 
				$result = executeSQL($sql);
				$IdTournee = mysql_fetch_row($result);
				
					
				//selection id de la ville 
				$sql = "SELECT LIEUID FROM etape where TRNNUM = $IdTournee[0]	"; 
				$result = executeSQL( $sql);
				$villeid = mysql_fetch_row($result);
				
				
				//cherche la ville avec l'id
				$sql = "SELECT LIEUID,LIEUNOM FROM lieu where LIEUID = '$villeid[0]'"; 
				$cpt = compteSQL($sql);
				
				if ($cpt>0) {	
					while ($row = mysql_fetch_array($result1, MYSQL_BOTH)) {
						echo "<tr>";
								echo ("<td>$row[0]</td>");
								echo("<td>$row[1]</td>");
								echo("<td><img src=\"./image/cross.png\" alt=\"eurre\"></td>");
								echo("<td><img src=\"./image/modif02.png\" alt=\"\"></td>");
							echo"</tr>";
							
					}					
				} else {
					echo "<p>Aucune etape en cour...</p>";
				}         
    		?>

		</table>
		<input id="ajouter" type="button" name="ajouter" value="Ajouter"  onclick="location.href='./AC13.php'" />
	</body>
</html>
