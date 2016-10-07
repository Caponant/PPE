<?php
	include 'connectAD.php';
	
	$TRNNUM = $_GET['tournee'];
	$IDLieu = $_GET['lieu'];
	$Debut = $_GET['RDVDebut'];
	$Fin = $_GET['RDVFin'];
	$Commentaire = $_GET['commentaire'];
	$ETPID = $_GET['etape'];
	
	$sql = "SELECT ETPID
			FROM etape
			WHERE TRNNUM = '$TRNNUM'";
	
	$result = mysql_query($sql);
	
	$cpt = compteSQL($sql);
	
	$sql = "UPDATE etape
			SET LIEUID = '$IDLieu',
			ETPHREDEBUT = '$Debut',
			ETPHREFIN = '$Fin',
			ETPCOMMENTAIRE = '$Commentaire'
			WHERE ETPID = $ETPID;";
					
	$result = mysql_query($sql);
	
	if ($result)
		echo "<meta http-equiv='refresh' content='0;url=AC12M.php?message=<font color=green> Modification realisee ! </font> <input id=\"tournee\" name=\"tournee\" type=\"hidden\" value=\"<?php echo \"$TRNNUM\" ?>\" />'>";
		else
			echo "<meta http-equiv='refresh' content='0;url=AC12M.php?message=<font color=red> Probleme pour modifier ... </font>'>";
?>