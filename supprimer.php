<?php
	include 'connectAD.php';
	
	$TRNNUM = $_GET['tournee'];
	
	$sql1 = "DELETE FROM etape
			WHERE TRNNUM = $TRNNUM";
	
	$result1 = mysql_query($sql1);
	
	$sql2 = "DELETE FROM tournee
			WHERE TRNNUM = $TRNNUM";
	
	$result2 = mysql_query($sql2);
	
	if ($result2)
		echo "<meta http-equiv='refresh' content='0;url=index.php?
					message=<font color=green> Suppression effectuee </font>'>";
		else
			echo "<meta http-equiv='refresh' content='0;url=index.php?
					message=<font color=red> Nope </font>'>";
?>