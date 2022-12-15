<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php 
	$mysqli = new mysqli('localhost', 'root', '', 'ecomm'); 
?>
<body class="hold-transition skin-blue layout-top-nav">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">
	    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="4" class=""></li>
		                  
		                 <li data-target="#carousel-example-generic" data-slide-to="5" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="6" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="7" class=""></li>
		                  
		                  <li data-target="#carousel-example-generic" data-slide-to="8" class=""></li>
		                  
		                  

		             </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/img6.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/imag2.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img3.jpg" alt="Third slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img4.jpg" alt="Fourth slide">
		                  </div>

                          <div class="item">
		                    <img src="images/img5.jpg" alt="Fifth slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img1.jpg" alt="Sixth slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img9.jpg" alt="Seventh slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img8.jpg" alt="eighth slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img7.jpg" alt="nineth slide">
		                  </div>


		              </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        
<div class="container">

    <?php

$mysqli = new mysqli('localhost', 'root', '', 'ecomm');


extract($_POST);


$sql = "INSERT into tblcontact (name,email,message,created_date) VALUES('" . $name . "','" . $email . "','" . $message . "','" . date('Y-m-d') . "')";


$success = $mysqli->query($sql);


if (!$success) {

    die("Couldn't enter data: ".$mysqli->error);

}

else {
echo "<h1>Thank you for getting in touch!</h1>

	<b>We appreciate you contacting us/ Electronics Basket. One of our colleagues will get back in touch with you soon!Have a great day!</b> ";

}



?>
	   </div>    
	   </section> 
	</div>

  	<?php include 'includes/footer.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>

</body>
</html>
