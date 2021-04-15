<html>
<head>
  <title>Delete police stataion</title>
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
$result=mysqli_query($link,"select * from newprison");
?>


<?php

//To delete:
if(isset($_POST["delete"])){
$pno=$_POST["pno"];
$delete=mysqli_query($link,"delete from newprison where pno='$_POST[pno]'");
if($delete){
print "<script language=\"javascript\">
	alert(\"Successfully deleted!...\")
	location.href=\"deletepolicestation.php\"
	</script>";
}
else{
print "<script language=\"javascript\">
	alert(\"Not deleted!...\")
	location.href=\"deletepolicestation.php\"
	</script>";
}
}
?>



<?php

print "<table width='100%' border='0' cellpadding='3' cellspacing='2' bgcolor='green'>
<caption><b>DELETE POLICE STATION</b></caption>
<tr bgcolor='green'>

<th width='10%'>Police station no</th>
<th width='15%'>Police station name</th>
<th width='15%'>Location</th>
<th width='15%'>Open date</th>
<th width='15%'>Contact</th>
<th width='10%'>Capacity</th>



</tr>";
$i=1;
while($row=mysqli_fetch_array($result)){
print "<form method=POST>";
print"<tr bgcolor='white'>
<td>$i<input type=\"hidden\" name=\"pno\" value=\"$row[pno]\"></td>

<td>$row[pname]</td>
<td>$row[location]</td>
<td>$row[opendate]</td>
<td>$row[contact]</td>
<td>$row[capacity]</td>




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
			<a href="viewnewprison.php" target="_parent">View Police Station<b></b></a>
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

