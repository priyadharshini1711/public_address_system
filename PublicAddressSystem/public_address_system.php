<?php

$con = mysqli_connect("localhost","root","","public_address_system");
if(!$con)
	{
		die("Database Connection failed".mysqli_error());
	} else 
	{
		$records = mysqli_query($con, "SELECT * FROM message");
		$page = $_SERVER['PHP_SELF'];
		$sec = "10";
	}
?>
<!DOCTYPE html>
<html>
    <head>
	<meta http-equiv="refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'">
        <title>Public Address System</title>
		<style type="text/css">
	table.imagetable {
		font-family: verdana,arial,sans-serif;
		font-size:11px;
		color:#333333;
		border-width: 1px;
		border-color: #999999;
		border-collapse: collapse;
	}
	table.imagetable th {
		background:#b5cfd2 url('cell-blue.jpg');
		border-width: 1px;
		padding: 8px;
		border-style: solid;
		border-color: #999999;
	}
	table.imagetable td {
		background:#dcddc0 url('cell-grey.jpg');
		border-width: 1px;
		padding: 8px;
		border-style: solid;
		border-color: #999999;
		word-wrap: break-word
	}
	</style>
    </head>
	<!-- CSS goes in the document HEAD or added to your external stylesheet -->

<!-- Table goes in the document BODY -->

<body onload="javascript:pageloadEvery(30000);">

	<center><h1>PUBLIC ADDRESS SYSTEM</h1></center>
	<table class="imagetable" align="center">
		<tr>
			<th>MESSAGE</th><th>ID</th><th>PUBLISHED AT</th>
		</tr>
<!-- We use while loop to fetch data and display rows of date on html table -->

			<?php

				while ($message = mysqli_fetch_assoc($records)){
					echo "<tr>";
						echo "<td>".$message['message']."</td>";
						echo "<td>".$message['id']."</td>";
						echo "<td>".$message['created_at']."</td>";
					echo "</tr>";

				}
			?>
    </table>
	<center><button style="margin-top:10px;"><a href="index.html">Back to Login</button></center>
   </body>
</html>