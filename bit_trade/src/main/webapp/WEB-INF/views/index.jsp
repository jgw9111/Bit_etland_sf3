<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
	@Author : 정지우 [jgw911191@gmail.com]
	@Date : 2019. 3. 12. 오후 4:49:24
	@File Name : index.jsp
	@Desc :
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BIT-RETAIL</title>
 <link rel="stylesheet" href="${css}/style.css "/> 
 <link rel="stylesheet" href="${css}/home/reset.css "/> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <script src="${js}/app.js"></script> 
</head> 
 
<body>
<div class="grid-container">
	<div class="item1" id="header">
		<div class="main-menu">
	      <div class="container">
	        <div class="row">
	          <div class="col-md-4">
	            <h1><a class="navbar-brand" href="index.html" data-0="line-height:90px;" data-300="line-height:50px;">
	            Bit-RETAIL
				</a></h1>
	          </div>
	          <div class="col-md-8">
	            <div class="dropdown">
	              <ul class="nav nav-pills">
	                <li class="active"><a href="index.html">Home</a></li>
	                <li><a href="portfolio.html">Portfolio</a></li>
	                <li><a href="blog.html">Blog</a></li>
	                <li><a href="contact.html">Contact</a></li>
	                <li><a href="${ctx}/move/customer/login">Login</a></li>
	              </ul>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
    </div>
	<div class=item2 id="menu">
	  <div class="slider text-center">
	    <img src="${img}/main-bg.png" alt="" />
	  </div>
	</div>
	
	<div class=item3 id="main">
				  <!-- column content -->
				  <div id="main-content">
				    <div class="container">
				      <div class="row">
				        <div class="big-box">
				          <div class="col-lg-12">
				            <div class="col-md-4">
				              <div class="box-bg">
				                <div class="wow bounceInLeft" data-wow-duration="2s" data-wow-delay="0.9s">
				                  <div class="align-center">
				                    <i class="fa fa-camera-retro fa-5x"></i>
				                    <h4 class="text-bold">Customizable</h4>
				                    <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.
				                    </p>
				                  </div>
				                </div>
				              </div>
				            </div>
				            <div class="col-md-4">
				              <div class="box-bg">
				                <div class="wow bounceInLeft" data-wow-duration="2s" data-wow-delay="0.6s">
				                  <div class="align-center">
				                    <i class="fa fa-shield fa-5x"></i>
				                    <h4 class="text-bold">Valid HTML5</h4>
				                    <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.
				                    </p>
				                  </div>
				                </div>
				              </div>
				            </div>
				            <div class="col-md-4">
				              <div class="box-bg">
				                <div class="wow bounceInLeft" data-wow-duration="2s" data-wow-delay="0.2s">
				                  <div class="align-center">
				                    <i class="fa fa-bookmark-o fa-5x"></i>
				                    <h4 class="text-bold">Responsive</h4>
				                    <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.
				                    </p>
				                  </div>
				                </div>
				              </div>
				            </div>
				          </div>
				        </div>
				      </div>
				    </div>
				    <div class="container">
				      <div class="row">
				        <div class="wow bounceInRight">
				          <div class="col-lg-6">
				             <h4>Maecenas luctus</h4>
						            <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.</p>
						            <a href="#" class="thumbnail">
													<img src="${img}/thumbnails/outline-1.jpg" alt="">
									</a>
				          </div>
				        </div>
				        <div class="wow bounceInLeft">
				          <div class="col-lg-6">
				            <h4>Maecenas luctus</h4>
				            <p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. Mei cu dicat voluptaria volumus.</p>
				            <a href="#" class="thumbnail">
											<img src="${img}/thumbnails/ipad.jpg" alt="">
										</a>
				          </div>
				        </div>
				      </div>
				    </div>
				  </div>
			</div>
			<div class=item4 id="right">
			</div>
			<div class=item5 id="fotter">
				<!-- end column content -->
		  <footer>
		    <section id="footer" class="section footer">
		      <div class="container">
		        <div class="row animated opacity mar-bot20" data-andown="fadeIn" data-animation="animation">
		          <div class="col-sm-12 align-center">
		            <ul class="social-network social-circle">
		              <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
		              <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
		              <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
		              <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
		              <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
		            </ul>
		          </div>
		        </div>
		        <div class="row align-center copyright">
		          <div class="col-sm-12 text-center">
		            <p>Copyright &copy; Jiwoo</p>
		            <div class="credits">
		              <!--
		                All the links in the footer should remain intact. 
		                You can delete the links only if you purchased the pro version.
		                Licensing information: https://bootstrapmade.com/license/
		                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Hidayah
		              -->
		              Designed by <a href="https://bootstrapmade.com/">JiwooMade</a>
		            </div>
		          </div>
		        </div>
		      </div>
		    </section>
		    <a href="#" class="scrollup"><i class="fa fa-chevron-up"> </i></a>
		  </footer>
	</div>
</div>
</body>
<script>
app.path.init('${ctx}'); // context path set
</script>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src=""></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="${js}/bootstrap.min.js"></script>
  <script src="${js}/jquery.isotope.min.js"></script>
  <script src="${js}/fancybox/jquery.fancybox.pack.js"></script>
  <script src="${js}/wow.min.js"></script>
  <script src="${js}/functions.js"></script>
  <script type="text/javascript">
    new WOW().init();
  </script>
  
  <!-- <script>
 	 $('#login').click(function(){
		location.assign('${ctx}/move/customer/login');
	});
  </script> -->
    
    
</html>