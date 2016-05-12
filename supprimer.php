<?php
	include 'connectAD.php';

	//on recupere les varirable issue du formulaire
	$tournee=$_GET['tournee'];

	$sql = "DELETE FROM tournee WHERE TRNNUM=".$tournee;

	$result = mysql_query($sql);

 	if ($result)
            echo "<meta http-equiv='refresh' content='0;url=AC11.php?message=<font color=green> Suppression realise... </font>'>";
        else
            echo "<meta http-equiv='refresh' content='0;url=AC11.php?message=<font color=red> Probleme suppression... </font>'>";
?>