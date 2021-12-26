<?php
$message = array();
$uname = $_POST["uname"];
$email = $_POST["email"];
$pass = $_POST["pass"];
$re_pass = $_POST["re-pass"];
if(count($_POST)>0) {
	$conn = mysqli_connect("localhost","root","","public_address_system");
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
      }
	$result = mysqli_query($conn,"SELECT * FROM user_registration WHERE username='" . $uname . "' and password= '". $pass ."'");
	$count  = mysqli_num_rows($result);
	if($count > 0) {
		array_push($message, "User Already Exists");
	}
    if($pass!=$re_pass){
        array_push($message, "Passwords Dont Match");
    }
    if(count($message) > 0){
    foreach ($message as $value) {
        echo "<p style='color: red;'>".$value."</p>";
      }
      echo "<button><a href='#' onclick='history.back();'>Back</button>";
    } else {
        $sql = "INSERT INTO user_registration (username, password, email)
VALUES ('$uname', '$pass', '$email')";

if (mysqli_query($conn, $sql)) {
  echo "<p style='color: green;'> User Registered Successfully </p>";
  echo "<button><a href='#' onclick='history.back();'>Back</button>";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
        
    }
}
?>