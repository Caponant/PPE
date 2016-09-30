<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<meta http-equiv="content-language" content="fr">
		<link rel="stylesheet" href="style.css" />
		<title>MESGUEN - AC11</title>
	</head>
	
	<body>
		<!-- création du tableau des tourée  --> 
		<div class="tableau">
			<table>
				<thead>
					<tr height="30" class="title">
						<th class="title" colspan="8"> AC11 - Organiser les tourn&eacute;es - Listes des tourn&eacute;es </th>
					</tr>
					<!-- titre des colones --> 	
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
					//insertion de la connection a la base de données 
					include 'connectAD.php';
					
					//selection les infos pour la tournée 
					$sql = "SELECT TRNNUM,TRNDTE,CHFNOM,VEHIMMAT 
							FROM tournee,chauffeur 
							WHERE tournee.CHFID=chauffeur.CHFID;";
					
					$result = mysql_query($sql);
					
					if($result) {	
						while ($row = mysql_fetch_array($result, MYSQL_BOTH)) {
				?>
					
				<!-- creation des ligne des tournée --> 
					<tr>
						<td><?php echo $row['TRNNUM']; ?></td>
						<td><?php echo $row['TRNDTE']; ?></td>
						<td><?php echo $row['CHFNOM']; ?></td>
						<td><?php echo $row['VEHIMMAT']; ?></td>
						<td> 
							<?php
								//ajout de l'info "depart"
								$TRNNUM = $row['TRNNUM'];
								
								$depart_sql =  "SELECT LIEUNOM 
												FROM lieu,etape
												WHERE etape.LIEUID = lieu.LIEUID
												AND etape.TRNNUM = ".$TRNNUM."
												ORDER BY ETPHREDEBUT ASC;";
								
								$depart = executeSQL($depart_sql); 
								$depart = tableSQL($depart);
								
								echo $depart[0]; 
							?>
						</td>
							
						<td> 
							<?php
								//ajout de l'info "arrivee"
								$arrivee_sql =  "SELECT LIEUNOM 
												FROM lieu,etape
												WHERE etape.LIEUID = lieu.LIEUID
												AND etape.TRNNUM = ".$TRNNUM."
												ORDER BY ETPHREDEBUT DESC;";
								
								$arrivee = executeSQL($arrivee_sql); 
								$arrivee = tableSQL($arrivee);
								
								echo $arrivee[0]; 
							?>
						</td>
													
						<td> 
							<form id="form_effacer" action="supprimer.php">
								<input id="tournee" name="tournee" type="hidden" value="<?php echo "$TRNNUM" ?>" />
								<input id="effacer" name="effacer" type="submit" value="Supprimer" />
							</form> 
						</td>
						
						<td> 
							<form id="AC12" action="AC12_modifier.php">
								<input id="tournee" name="tournee" type="hidden" value="<?php echo "$TRNNUM" ?>" />
								<input id="modifier" name="modifier" type="submit" value="Modifier" />
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
		<input id="add" type="button" name="add" value="Ajouter"  onclick="location.href='AC12.php'" />
		<input id="back" type="button" name="retour" value="Retour" onclick="location.href=''" />
		
		<?php 
		
			if (isset($_GET['message']))
				echo $_GET['message'];
				else
					echo "&nbsp;";
				
		?>
	</body>
</html>
