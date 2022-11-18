<?php
	include 'function.php';
	include 'connection.php';

	echo json_encode(getLatestProducts(connect()));
?>
