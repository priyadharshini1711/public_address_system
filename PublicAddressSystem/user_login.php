<?php
$message="";
if(count($_POST)>0) {
	$conn = mysqli_connect("localhost","root","","public_address_system");
	$result = mysqli_query($conn,"SELECT * FROM user_registration WHERE username='" . $_POST["username"] . "' and password= '". $_POST["password"]."'");
	$count  = mysqli_num_rows($result);
	if($count==0) {
		$message = "Invalid username or password";
		echo "<p style='color: red;'>".$message."</p>";
	} else {
		header('Location:public_address_system.php');
	}
}
?>