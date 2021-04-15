<?php

error_reporting(E_ERROR | E_PARSE);

// Database Connection

$host="localhost";
$uname="root";
$pass="";
$database = "prisonpro";	

$connection=mysqli_connect($host,$uname,$pass); 

echo mysqli_error($connection);

//or die("Database Connection Failed");
$selectdb=mysqli_select_db($connection,$database) or die("Database could not be selected");	
$result=mysqli_select_db($connection,$database)
or die("database cannot be selected <br>");

	
// Fetch Record from Database

$output			= "";
$table 			= "officerdetails"; // Enter Your Table Name
$sql 			= mysqli_query($connection,"select * from $table");
$columns_total 	= mysqli_num_fields($sql);

// Get The Field Name

while ($finfo = mysqli_fetch_field($result)){
	$heading = $finfo->name;
	$output .='"' .$heading.'",';
}

// Get Records from the table

while ($row = mysqli_fetch_array($sql)) {
for ($i = 0; $i < $columns_total; $i++) {
$output .='"'.$row["$i"].'",';
}
$output .="\n";
}

// Download the file

$filename =  "officer_report.csv";
header('Content-type: application/csv');
header('Content-Disposition: attachment; filename='.$filename);

echo $output;
exit;
	
?>


       
       