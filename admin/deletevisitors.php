<html>
<head>
  <title>Delete prisoners</title>
  <link rel="stylesheet" media="screen" href="login.css" >
</head>
<body>
	<table align='center' border='0' bgcolor='green' width='860' cellpadding='8' cellspacing='0' height='200'>
        
          <tr>
            <td colspan="3" bgcolor='#999999' valign='center'>

<?php
ob_start();
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"prisonpro");
$result=mysqli_query($link,"select * from visitor");
?>


<?php

//To delete:
if(isset($_POST["delete"])){
$id=$_POST["id"];
$delete=mysqli_query($link,"delete from visitor where id='$_POST[id]'");
if($delete){
print "<script language=\"javascript\">
	alert(\"Successfully deleted!...\")
	location.href=\"deletevisitors.php\"
	</script>";
}
else{
print "<script language=\"javascript\">
	alert(\"Not deleted!...\")
	location.href=\"deletevisitors.php\"
	</script>";
}
}
?>



<?php

print "<table width='100%' border='0' cellpadding='3' cellspacing='2' bgcolor='green'>
<caption><b>DELETE VISITOR INFORMATION</b></caption>
<tr bgcolor='green'>
<th>National id</th>
<th width='10%'>Full Name</th>
<th width='15%'>Address</th>
<th width='15%'>Date of Visit</th>
<th width='15%'>Time of Visit</th>
<th width='15%'>Relationship</th>
<th width='10%'>Telephone</th>
<th width='10%'>Prisoner Name</th>


</tr>";
$i=1;
while($row=mysqli_fetch_array($result)){
print "<form method=POST>";
print"<tr bgcolor='white'>
<td>$i<input type=\"hidden\" name=\"id\" value=\"$row[id]\"></td>
<td>$row[fullname]</td>
<td>$row[address]</td>
<td>$row[dateofvisit]</td>
<td>$row[timein]</td>
<td>$row[relationship]</td>
<td>$row[telephone]</td>
<td>$row[prisoner]</td>



<td width='4%' align='center'><input type=submit name=delete value=delete></td>
</tr>";
print "</form>";
$i++;
}
print"</table>";
?>

<br/>

			</td>
          </tr>
          <tr>
		  <td align="center"><a href="adminpanel.php" target="_parent"> Admin Panel <b>|</b></a>
			<a href="viewvis.php" target="_parent">View Visitors<b></b></a>
			</td>
		
          </tr>
          <tr>
            <td colspan='3' align='center' bgcolor='silver' height='1'>

            	<?php
           include("footer.php");
                ?>
					
            </td>
          </tr>
	</table>
</body>
</head>
</html>

