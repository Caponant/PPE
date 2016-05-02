<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<meta http-equiv="content-language" content="fr">
		<link rel="stylesheet" href="style.css" />
		<title>MESGUEN - AC11</title>
	</head>
	
	<body>
		<div class="tableau">
			<table>
				<thead>
					<tr height="30" class="title">
						<th class="title" colspan="8"> AC11 - Organiser les tourn&eacute;es - Listes des tourn&eacute;es </th>
					</tr>
						
					<tr height="30">
					    <th>Tourn&eacute;e</th>
					    <th>Date</th>
						<th>Chauffeur</th>
						<th>V&eacute;hicule</th>
						<th>D&eacute;part</th>
						<th>Arriv&eacute;e</th>
						<th>Supprimer</th>
						<th>Modifier</th>			   
					</tr>	
				</thead>

				<?php
					include 'connectAD.php';
					
					$sql = "SELECT TRNNUM,TRNDTE,CHFNOM,VEHIMMAT 
							FROM tournee,chauffeur 
							WHERE tournee.CHFID=chauffeur.CHFID;";
					
					$result = mysql_query($sql);
					
					if($result) {	
						while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
				?>	
					<tr>
						<td><?php echo $row['TRNNUM']; ?></td>
						<td><?php echo $row['TRNDTE']; ?></td>
						<td><?php echo $row['CHFNOM']; ?></td>
						<td><?php echo $row['VEHIMMAT']; ?></td>
						<td> 
							<?php
								//on recupere le numero de la tournee et le met dans une variable
								$tourneeNum = $row['TRNNUM'];
								//on fait la requette en concatenant avec la variable en question
								$depart_sql =  "SELECT LIEUNOM 
												FROM lieu,etape
												WHERE etape.LIEUID = lieu.LIEUID
												AND etape.TRNNUM = ".$tourneeNum."
												ORDER BY ETPHREDEBUT ASC;";
								$depart = mysql_query($depart_sql); 
								$depart = mysql_fetch_array($depart,MYSQL_BOTH);
								echo $depart[0]; 
							?>
						</td>
							
						<td> 
							<?php
								//on effectue la meme requette mais avec un orderby different pour trouver le dernier
								$arrivee_sql =  "SELECT LIEUNOM 
												FROM lieu,etape
												WHERE etape.LIEUID = lieu.LIEUID
												AND etape.TRNNUM = ".$tourneeNum."
												ORDER BY ETPHREDEBUT DESC;";
								//execution de la requette avec mysql_query				
								$arrivee = mysql_query($arrivee_sql); 
								$arrivee = mysql_fetch_array($arrivee,MYSQL_BOTH);
								//affichage du resultat de la requete
								echo $arrivee[0]; 
							?>
						</td>
													
						<td> 
							<form id="form_effacer" action="supprimer.php">
								<input id="tournee" name="tournee" type="hidden" value='".$tourneeNum."' />
								<input id="effacer" name="effacer" type="submit" value="Supprimer" /> 
							</form> 
						</td>
						
						<td> 
							<form id="form_modifier" action="modifier.php"> 
								<input id="modifier" name="modifier" type="button" value="Modifier" /> 
							</form> 
						</td>
					<tr />	
				<?php	
						}
					}	
				?>
			</table>
		</div>
		
		<br/>
		<input id="add" type="button" name="add" value="Ajouter"  onclick="location.href=''" />
		<input id="back" type="button" name="retour" value="Retour" onclick="location.href=''" />
		
		<?php 
		
			if (isset($_GET['message']))
				echo $_GET['message'];
				else
					echo "&nbsp;";
				
		?>
	</body>
</html>
