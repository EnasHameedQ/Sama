<?php include("../inc/config.php");
?>

<?php 

if(isset($_POST["submit"]) )
{				
$name=strip_tags($_POST["username"]);

$password=md5($_POST["password"]);

//sqlناقص جمل 

	
	
if(is_numeric($name) )
{
echo " <br> Enter your first & last name";
}

else if(!is_numeric($password))
{
	echo "<h4 align=center> please enter the number</h4>";
}
}  
 
 ?>
<?php
		
		if(isset($_POST["submit"]) )
		
		{   $error=true;
		
		$name=(int)$_POST['username'];
		$pass=(int)$_POST['password'];
		  $ql="select * from users where firstname=$name AND password=$pass";
		  
		  $query=mysqli_query($link,$ql);
		 
		  if(!$query)
		  {
			  echo "error2";
		  }
		  else
		  
		  {
		  if(mysqli_num_rows($query) ==1)//?????????????????????????????????????????????????????????????????????????????????????
		     header("location:../index.php");
              }
			 else 
				  echo mysqli_num_rows($query);
			// echo "done";	 
			  header("location:create account.php");

			  
		  }
		}
?>



<html>
<head>
<meta charset=utf-8 />
<title>login</title>


<link href="../css/style1.css" rel="stylesheet" />

</head>

<body >
 

 <div id ="wrapper"> 
           
       <div id="middle" align="center">
           <div id="div1">
		   
		   
		  
		   </div>
		   
		   
		   <div id="div2">
		   
		          <form align="center" action="" method="POST"  id="comm" >
	                    
	                     
						 <font  align="left" > Name&nbsp&nbsp&nbsp</font>
						 <input type="name" name="username" id="border" placeholder="your name" size=21 required>
						 <br><br>
						 
	                    <font  align="left" >Password</font>
						 <input type="password"  name="password" required> 
	                      
						  <br>
						 
						  <input type="submit" value="ok" required name="submit">
						  
						   
						  
						
		          </form>
				  <script>
			 $(document).ready(function(){
				 $("#comm").validate();
			 )}; )};
			 
			 </script>
				  <br>
		   </div>
		 		  
		  <div id="div3">
		     <div align="center">
		          <form>
	                        <font  color="#ff3333" size=3>save the password</font>
	                         <input type="checkbox" checked id="border">
								<br>
							
				
		            </form>
			 
			
			<div align="right"  >
				          <font  color="#ff3333" ><a href="create account.php"> Create account</a></font>
		   
            </div>   		     
		   
		   </div>

		 </div>











		  
	   </div>


</div>
</body>
</html>