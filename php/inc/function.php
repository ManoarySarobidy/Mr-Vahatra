<?php
	
	// andao anao fonction ary
	function getLatestProducts( $pdoBase ){
		$query = " Select * from category ";
		$query = $pdoBase->query( $query );
		$query = $query->fetchAll(PDO::FETCH_ASSOC);
		return $query;
	}
	// // ahoana no anaovana azy 
	// mila manao ajax aloha afahana maka azy rehefa miload le page
	// rehefa miteny all ohatra aho dia izay anaky valo ihany no alaiko makany
	// donc mila fonction mandray an'izat isika
	function getAll( $pdoBase , $limit ){
		$query = "Select * from products limit ".$limit;
		$query = $pdoBase->query( $query );
		$query = $query->fetchAll(PDO::FETCH_ASSOC);
		return $query;
	}

	// azo ny rehetra de alaina indray ny par id categorie
	function getByCategory( $pdoBase , $idCategorie, $limit){
		$query = "Select * from products where productCategory = ".$idCategorie." limit ".$limit;
		$query = $pdoBase->query($query);
		$query = $query->fetchAll(PDO::FETCH_ASSOC);
		return $query;
	}

	function getCategory( $pdoBase ){
		$query = "Select * from category";
		$query = $pdoBase->query($query);
		$query = $query->fetchAll( PDO::FETCH_ASSOC );
		return $query;
	}
