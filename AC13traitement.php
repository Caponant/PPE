<?php
	include 'connectAD.php';
	
	$TRNNUM = $_GET['tournee'];
	$IDLieu = $_GET['lieu'];
	$Debut = $_GET['RDVDebut'];
	$Fin = $_GET['RDVFin'];
	$Commentaire = $_GET['commentaire'];
	
	$sql = "SELECT ETPID
			FROM etape
			WHERE TRNNUM = '$TRNNUM'";
	
	$result = mysql_query($sql);
	
	$cpt = compteSQL($sql);
	
	$ETPID = $cpt + 1;
	
	$sql = "INSERT INTO etape(TRNNUM, ETPID, LIEUID, ETPHREDEBUT, ETPHREFIN, ETPCOMMENTAIRE)
			VALUES (\"$TRNNUM\", \"$ETPID\",\"$IDLieu\", \"$Debut\", \"$Fin\", \"$Commentaire\");";
					
	$result = mysql_query($sql);
	
	if ($result)
		echo "<meta http-equiv='refresh' content='0;url=AC12_modifier.php?message=<font color=green> Ajout realisee ! </font> <input id=\"tournee\" name=\"tournee\" type=\"hidden\" value=\"<?php echo \"$TRNNUM\" ?>\" />'>";
		else
			echo "<meta http-equiv='refresh' content='0;url=AC12_modifier.php?message=<font color=red> Probleme pour ajouter ... </font>'>";
?>