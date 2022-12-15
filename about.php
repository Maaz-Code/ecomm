<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
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
		                    <img src="images/img1.jpg" alt="sixth slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/img9.jpg" alt="seventh slide">
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
	        		
		            <h2>About US</h2>
		       		<?php
		       			echo "<p>Electronics Basket was one-of-its kind large format specialist retail store that catered to all multi-brand digital gadgets and home electronic needs in India. Over a decade since its inception, Electronics Basket has almost become synonyms for all electronics needs, with its tech-savvy staff, product range, Staged presence and the will to help customers.</p> ";

		       			echo "<p>Bringing alive the promise of a ‘Brighter Every Day’ for its customers, Electronics Basket offers its customers a world-class ambience With over 6000 products across 200 brands and 150+ stores across 40+ major cities of India, Electronics Basket ensures that customers always get ‘More for their money’! <p>"
		       		?>
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>