

<head>
  <title>AUTOMATED POLICE RECORD SYSTEM</title>
   <link rel="stylesheet" media="screen" href="login.css" >
   <link rel="stylesheet" href="style.css">

   <style>
	  table{
		  align-items: center;
	  }
	  ul{
		  align-items: center;
	  }
	



   </style>
</head>
<body>
	<table align='center' border='0' bgcolor='green' width='820' cellpadding='9' cellspacing='0' height='325'>
          
		  <tr>
            <td colspan='3' height='2'><img src="motivation (1).png" height="150" width="860"></td>
          </tr>
		  <tr>
            <td colspan="3" bgcolor="#yellow" height="1" align="center">
		      <h1><font size="5">
	           <a href="adminpanel.php">Home</a> ||
              			   
		        <a href="search-form.php">Search </a> ||
                <!-- <a href="location.php">Location</a>| -->
				
		        <a href="officertransfer.php">Officer Transfer</a>||
		        <a href="registration.php">Register</a>||
				<a href="court.php">Court</a>
		        </font></h1>
            </td>
			 </td>
		 
            <td height='1' colspan='3' align='right' bgcolor="green">&nbsp;</td>
			
          </tr>
		 
          <tr>
		 
            <td width='5%' bgcolor='#FFFFFF' valign='top'>
<h3 align='center'  title='You should be online'>&nbsp;</h3></td>

            <td width='50%' valign='top' bgcolor="#FFFFFF">

<p align='center'>
 

<h3 align='center'>&nbsp;</h3>
<br/>
<h3 align='center'>THIS FOR ADMINSITRATOR </h3>
<P align='justify'><font face='Arial, Helvetica, sans-serif'>The system enable an Administrator 
	to provide services to users nd here the administrator can add and upload information,
	 update, delete, view the record added. The administrator
	  can also change his account for more security.</font></p>

		<br>
			</td>
            <td width='30%' bgcolor='green'  valign='top'>
			
	
<table border='1' align='center'>
<tr>
<td width="240" bgcolor="green">
<h4>  Admin Management </h4>


<ul>
	
	<li><a href='viewofficer.php'><b><button>Prison Officer Transfer</button></b></a></li>
		<br>

	<li><a href='viewprisoners.php'><b><button>Prisoners Details</button></b></a></li>
		<br>
	<li><a href='viewtransfer.php'><b><button>Prisoner Transfer</button></b></a></li>
		<br>
	<li><a href='viewvis.php'><b><button>Visitors Information</button></b></a></li>
		<br>
	<li><a href='addofficer.php'><b><button>Add officer</button></b></a></li>
		<br>
	<li><a href='viewoff.php'><b><button>View officer details</button></b></a></li>
		<br>
	<li><a href='newprison.php'><b><button>Add prison station</button></b></a></li>
		<br>
	<li><a href='viewnewprison.php'><b><button>View prison station</button></b></a></li>
		<br>
	<li><a href='viewcourt.php'><b><button>Court Information</button></b></a></li>
		<br>
	<li><a href='viewAnnounce.php'><b><button>View Comment</button></b></a></li>
		<br>
	<li><a href='report.php'><b><button>Report</button></b></a></li>
		<br>
    <li><a href='../index.php'><b><button>LOG OUT</button></b></a></li>
</ul>
</td>
</tr>
</table>


			
			</td>
          </tr>
          <tr>
            <?php
           include("Footer.php");
                ?>
          </tr>
	</table>
</body>
</head>
</html>