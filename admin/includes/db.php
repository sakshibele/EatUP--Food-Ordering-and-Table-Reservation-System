<?php 
	
	$db = new mysqli("127.0.0.1:3307", "root", "", "foodordering");
	
	if($db->connect_errno) {
		
		echo "PLEASE BEAR WITH US AS WE ARE CURRENTLY WORKING ON OUR SITE!!!! PLEASE COME BACK LATER";
		
	}
	
?>