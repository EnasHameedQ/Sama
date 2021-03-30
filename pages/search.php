

<html>
<head>
<meta charset="utf-8">
<link href="../css/stylerdetailn.css" rel="stylesheet" />
</head>
<title>
search
</title>
<body >

<?php include("../inc/config.php");
?>



 <div id="container">
          
  
		  <?php
		   $id=$_GET['search'];
          $ql="select * from product where name LIKE '%$id%'  ";
		  $query=mysqli_query($link,$ql);
		  
		  if(!$query)
		  {
			  echo "error2";
		  }
		  else
		  {
		 
			  while($rows=mysqli_fetch_assoc($query))
			  {
				  echo ' <div id="first">';
				  echo '<div class="boxA"> <img src="'.$rows['imge'].'"  alt="q"height=130 width=130 >
		 	</div> 

			<div class="boxB">
		        <font color=black face=Algerian>'.$rows['name'].'</font>
				 <font color=black face=Algerian>'.$rows['detils'].'</font></br></br></br></br></br>
		 	</div>';
			echo '  </div>	';
			echo ' <div id="second">';
			echo '   <div class="boxAsecond">
			 	     <font color=black face=Algerian>Praic:/$'.$rows['praic'].'</font> 
						 <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
							<input type="hidden" name="cmd" value="_s-xclick">
							<input type="hidden" name="hosted_button_id" value='.$rows['paypal'].'>
							 <input type="hidden" name="on0" value="Thank you for choosing vila">
							 <input type="image" value="Add To Cart" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
							 <img alt="p" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
				         </form>';
			    echo '  </div>';
			    echo '  </div>';
		  }
		  }
		  
		
		  ?>
		   
		  <?php
		  
		  
		  
		  $ids=(int)$_GET['search'];
		  $ql="select * from product where id=$ids";
		  $query=mysqli_query($link,$ql);
		  
		  if(!$query)
		  {
			  echo "error2";
		  }
		  else
		  {
			  while($rows=mysqli_fetch_assoc($query))
			  {
				  echo $rows['id'];//
			echo' <div id="third"></br></br>';
			echo' <marquee >
		    
		   <img src="'.$rows['img1'].'"  alt="1" height="130px" width="130 px" >
		   <img src="'.$rows['img2'].'"  alt="2" height="130px" width="130px" >
		   <img src="'.$rows['img3'].'"  alt="3" height="130px" width="130px" >
		   <img src="'.$rows['img4'].'"  alt="4" height="130px" width="130px" >
		   <img src="'.$rows['img5'].'"  alt="5" height="130px" width="130px" >';
		    echo' </marquee>';
		  
			 echo'</div>'; 
			
			 	 }
		  

		  }
			 ?> 
			 </div>
			 

<?php include("../inc/footer2.php");
?>  