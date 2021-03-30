
<html>
<head>
<meta charset="utf-8">
<title> create account  </title>


<link href="../css/style3.css" rel="stylesheet" />

</head>


<body id="body">
 

 <div id ="wrapper"> 
             <br> 
 <?php include("../inc/config.php");

?>
<?php 


if(isset($_POST["submit"]) )
{
	$error=true;//?????????????????????????????????????????????????????????????????????????????????????????????????????/
$lname=strip_tags($_POST["lname"]);//تمنع المسنخدم من ادخال اكواد قد تؤذي الموقع
$fname=strip_tags($_POST["fname"]);
$email=strip_tags($_POST["email"]);
$repassword=md5($_POST["repassword"]);//تجعل كلمة السر مخفية
$password=md5($_POST["password"]);
$Year=strip_tags($_POST["year"]);
$Month=strip_tags($_POST["month"]);
$Date=strip_tags($_POST["birthdate"]);
$Gender=strip_tags($_POST["gender"]);

if(is_numeric($lname) )
{
	
	$error=false;
echo " <br>Please Enter your lname";
}
else if(is_numeric($fname) )
{
	$error=false;
echo "<br> Please Enter your fname";
}
 else if(is_numeric($password))
{
	$error=false;

 echo "<h4 align=center> please enter  numbers  as a password </h4>";
}
  else if ($password != $repassword)
   {
   echo "<h4 align=center> the password not same</h4>"	;   
   }
if($error){//???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
$sql="INSERT INTO users VALUES('','$fname','$lname','$email','$password','$Year','$Month','$Date','$Gender');" ;
$q=mysqli_query($link,$sql);
  if(insertuser)  header("location:../index.php");/?????????????????????????????????????????????????????????????????????????????????????????????????

}}
?>			 
	
	  
	   <br>
       <div id="middle" align="center">
           <div id="div1">
		 <font size=6 color="black"  align="left">CREATE NEW ACCOUNT</font>
		    <br> <br>
		   </div>
		   		   	   <div id="div1" align="left">
					   
		         <form align="left" action="" method="POST" id="comm">
				                &nbsp&nbsp  NAME <br>
				        
	                      <input type="name" name="fname" placeholder=   "FIRST NAME" required >
                          <input type="name" name="lname" placeholder= "LAST NAME" required> 						  
						 
						   <br> <br>&nbsp&nbsp E-MAIL <br>
	                     <input type="email" name="email" placeholder="@gmail.com" size="46px" > 
	                     <br><br>&nbsp&nbsp PASSWORD &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  CONFIRM <br>
						  <input type="password"  name="password"  placeholder="PASSWORD" required> 
						  <input type="password" name="repassword"   placeholder="CONFIRM PASSWORD" required>
		
						    <br><br>
							
							&nbsp&nbsp BIRTH DATE<br><br>
							<select type="name" name="year" placeholder= "YEAR" required> 
							<?php
							echo "<option> </option>";
							for ( $counter =1996; $counter >1950; $counter--) {
                             
                             echo "<option> $counter </option>";
							}
							?>
							</select>
						<select name="month"value="	MONTH" required>MONTH
							    <option>   </option>
							    <option>JUN</option>
								<option>FEB</option>
								<option>MARCH</option>
								<option>APRIL</option>
								<option>MAY</option>
								<option>JUNE</option>
								<option>JUL</option>
								<option>AUG</option>
								<option>SEP</option>
								<option>OCT</option>
								<option>NOV</option>
								<option>DES</option>
								</select>
							
								<select name="birthdate" required>birthdate
								<?php
								 echo "<option> </option>";
							for ( $counter =1; $counter <=31; $counter ++) {
                                   echo "<option> $counter </option>";
							}
							
							?>
							</select>
								
								  <br>  <br>
						<fieldset ><legend align="left">&nbsp&nbsp GENDER</legend> <br>//???????????????????????????????????????????????????????????????
						
                      <input type="radio" name="gender" value="female" required> FEMALE
				&nbsp&nbsp&nbsp 	<input type="radio" name="gender" value="male"required>  MALE<br>
						</fieldset>
						<br>
						<br>
						<br>
						
							<div id="div2"align="center" >
						   <input type="submit" value="ENTER" name="submit" required  >
						  <br>
							</form>
								  
		     <script>
			 $(document).ready(function(){
				 $("#comm").validate();
			 )}; )};
			 
			 </script>
	 			   
						
                            
                           </div>
		          
		   
		   </div>
		   
		 
	   </div>

  
 </div>
 
<?php
mysqli_close($link);

?>
</body>
</html>