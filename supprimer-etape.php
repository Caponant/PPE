<?php
	include 'connectAD.php';

	//on recupere les varirable issue du formulaire
	$tournee=$_GET['tournee'];
	$idetape=$_GET['idetape'];
	
	$sql = "DELETE FROM etape
			WHERE TRNNUM = $tournee 
			AND ETPID = $idetape";

	$result = mysql_query($sql);

	if ($result)
			echo "<meta http-equiv='refresh' content='0;url=AC12.php?message=<font color=green> Suppression réalisée ! </font>'>";
        else
			echo "<meta http-equiv='refresh' content='0;url=AC12.php?message=<font color=red> Problème de suppression ... </font>'>";
?>