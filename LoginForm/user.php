<?php
$message="";
if(count($_POST)>0) {
	$conn = mysqli_connect("localhost","root","","pra");
	$result = mysqli_query($conn,"SELECT * FROM user WHERE uname='" . $_POST["username"] . "' and pass= '". $_POST["password"]."'");
	$count  = mysqli_num_rows($result);
	if($count==0) {
		$message = "Invalid username or password";
		echo $message;
	} else {
		header('Location:pra1.php');
	}
}
?>