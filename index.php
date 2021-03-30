

 <?php include("inc/header.php");
?>
	  
   <?php include("inc/menu2.php");
?>

 <body >
    <div id="container">
	<div class="title">
					
					<font color=#c3a07d size=6 face="Algerian">WELCOME IN YOUR WEBSITE</font >
					<br>
				</div>
	    <div id="extra" class="cont">
				
		  
			 <?php
			  include("inc/config.php");

			
			 $sql="select * from product;";
			 $query=mysqli_query($link,$sql);
			 if(!$query)
			 {
				 echo "error2";
			 }
			 else
			 {
				 while($row=mysqli_fetch_assoc($query))
				 {
					 echo '<div class="boxB" >';
					 echo '<div class="box">
					<div></div>
					<a href=pages/detailn.php?id='.$row['id'].'> <img id="im" src="'.$row['imges'].'"  alt="6" />
					<span class="det"><p><h4></h4> '.$row['details'].'</p></span>
					</div>
					<div class="act">
						<div>
						  <a href=pages/detailn.php?id='.$row['id'].' > <span class="la">DETAILS</span></a>
						</div>
					</div>';
					echo '</div>';
			
					 
				 }
				
			 }	
					
				?>
				</div>
<?php include("inc/footer.php");
?>

</body>
</html>