<?php include('config.php'); ?>
<table border="1">
<?php
	//päring
	$paring = 'SELECT * FROM albumid';
	$valjund = mysqli_query($yhendus, $paring);
	while($rida = mysqli_fetch_assoc($valjund)){
		echo '<tr>
				<td>'.$rida['artist'].'</td>
				<td>'.$rida['album'].'</td>
				<td>'.$rida['aasta'].'</td>
				<td><a href="kustutamine.php?id='.$rida["id"].'">kustuta</a></td>
			</tr>';
	}
	
	//ühenduse sulgemine
	mysqli_close($yhendus);	
?>
</table>