<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Online Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles  -->
    <link href="front/assets/css/bootstrap.css" rel="stylesheet"/>
    <link href="front/assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="front/assets/css/docs.css" rel="stylesheet"/>
	 
      <link href="<c:url value="front/assets/style.css"/>" rel="stylesheet"/>
	<link href="front/assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>
	
	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="front/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="front/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="front/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="front/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="front/assets/ico/apple-touch-icon-57-precomposed.png">
	
	
  </head>
<body>
  <!-- Navbar
    ================================================== -->
 
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
                  <a id="logoM" href="index"><img src="front/assets/img/logo.png" alt="Bootsshop"/></a>
					<a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  <li class=""><a href="<c:url value="/"/>">Home</a></li>
					  <li class=""><a href="special_offer">Specials Offer</a></li>
					  <li class=""><a href="normal">Delivery</a></li>
					  <li class=""><a href="contact">Contact</a></li>
					</ul>
                    <form action="#" class="navbar-search pull-left">
                     <input id="srchFld" type="text" placeholder="I'm looking for ..." class="search-query span5"/>
                    </form>
                    <ul class="nav pull-right">
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">Login <b class="caret"></b></a>
						<div class="dropdown-menu">
						<form class="form-horizontal loginFrm">
						  <div class="control-group">								
							<input type="text" class="span2" id="nav-login-inputEmail" placeholder="Email">
						  </div>
						  <div class="control-group">
							<input type="password" class="span2" id="nav-login-inputPassword" placeholder="Password">
						  </div>
						  <div class="control-group">
							<label class="checkbox">
							<input type="checkbox"> Remember me
							</label>
							<button type="submit" class="btn btn-block">Sign in</button>
						  </div>
						</form>					
						</div>
					</li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container">
<header id="header">
<div class="row">
<div class="span12">
	<a href="index"><img src="front/assets/img/logo.png" alt="Bootsshop"/></a>

<div class="pull-right"> <br/>
	<a href="product_summary"> <span class="btn btn-mini btn-warning"> <i class="icon-shopping-cart icon-white"></i> [ 3 ] </span> </a>
	<a href="product_summary"><span class="btn btn-mini active">$155.00</span></a>
	<span class="btn btn-mini">&pound;</span>
	<span class="btn btn-mini">&euro;</span> 
</div>
</div>
</div>
<div class="clr"></div>
</header>
<!-- ==================================================Header End====================================================================== -->
<div class="row">
<div id="sidebar" class="span3">
	<ul class="nav nav-list bs-docs-sidenav" style="display: block;">											
		<li class="subMenu"><a> ELECTRONICS [230]</a>
			<ul>
			<li><a class="active" href="products">Cameras (100)</a></li>
			<li><a href="products">Computers, Tablets & laptop (30)</a></li>
			<li><a href="products">Mobile Phone (80)</a></li>
			<li><a href="products">Sound & Vision (15)</a></li>
			</ul>
		</li>
		<li class="subMenu"><a> CLOTHES [840] </a>
		<ul>
			<li><a href="products">Women's Clothing (45)</a></li>
			<li><a href="products">Women's Shoes (8)</a></li>												
			<li><a href="products">Women's Hand Bags (5)</a></li>	
			<li><a href="products">Men's Clothings  (45)</a></li>
			<li><a href="products">Men's Shoes (6)</a></li>												
			<li><a href="products">Kids Clothing (5)</a></li>												
			<li><a href="products">Kids Shoes (3)</a></li>												
		</ul>
		</li>
		<li class="subMenu"><a>FOOD AND BEVERAGES [1000]</a>
			<ul>
			<li><a href="products">Angoves  (35)</a></li>
			<li><a href="products">Bouchard Aine & Fils (8)</a></li>												
			<li><a href="products">French Rabbit (5)</a></li>	
			<li><a href="products">Louis Bernard  (45)</a></li>
			<li><a href="products">BIB Wine (Bag in Box) (8)</a></li>												
			<li><a href="products">Other Liquors & Wine (5)</a></li>												
			<li><a href="products">Garden (3)</a></li>												
			<li><a href="products">Khao Shong (11)</a></li>												
		</ul>
		</li>
		<li><a href="products">HEALTH & BEAUTY [18]</a></li>
		<li><a href="products">SPORTS & LEISURE [58]</a></li>
		<li><a href="products">BOOKS & ENTERTAINMENTS [14]</a></li>
		<li style="border:0"> &nbsp;</li>						
		<li> <a href="product_summary"><strong>3 Items in your cart  <span class="badge badge-warning pull-right" style="line-height:18px;">$155.00</span></strong></a></li>
		<li style="border:0"> &nbsp;</li>	
		<li>
		  <div class="thumbnail">
			<img src="front/assets/products/1.jpg" alt="">
			<div class="caption">
			  <h5>Product name</h5>
			  <p> 
				Lorem Ipsum is simply dummy text. 
			  </p>
			  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
			</div>
		  </div>
		</li>
		<li style="border:0"> &nbsp;</li>		
		<li class="last">
		  <div class="thumbnail">
			<img src="front/assets/products/2.jpg" alt="">
			<div class="caption">
			  <h5>Product name</h5>
			  <p> 
				Lorem Ipsum is simply dummy text. 
			  </p>
			  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
			</div>
		  </div>
		</li> 
	  </ul>
</div>

	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index">Home</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	<h3> Login</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4">
			<div class="well">
			<h5>CREATE YOUR ACCOUNT</h5><br/>
			Enter your e-mail address to create an account.<br/><br/><br/>
			<form action="register">
			  <div class="control-group">
				<label class="control-label" for="inputEmail">E-mail address</label>
				<div class="controls">
				  <input class="span3"  type="text" id="create-account-inputEmail" placeholder="Email">
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">Create Your Account</button>
			  </div>
			</form>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
			<h5>ALREADY REGISTERED ?</h5>
			<form>
			  <div class="control-group">
				<label class="control-label" for="login-inputEmail">Email</label>
				<div class="controls">
				  <input class="span3"  type="text" id="login-inputEmail" placeholder="Email">
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="login-inputPassword">Password</label>
				<div class="controls">
				  <input type="password" class="span3"  id="login-inputPassword" placeholder="Password">
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="button"  id="btn-signin"  class="btn">Sign in</button> <a href="forgetpass">Forget password?</a>
				</div>
			  </div>
			</form>
		</div>
		</div>
	</div>	
	
</div>
</div>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div  id="footerSection">
	<div class="row">
		<div class="span3">
			<h5>ACCOUNT</h6>
			<a href="login">YOUR ACCOUNT</a>
			<a href="login">PERSONAL INFORMATION</a> 
			<a href="login">ADDRESSES</a> 
			<a href="login">DISCOUNT</a>  
			<a href="login">ORDER HISTORY</a>
		 </div>
		<div class="span3">
			<h5>INFORMATION</h5>
			<a href="contact">CONTACT</a>  
			<a href="register">REGISTRATION</a>  
			<a href="legal_notice">LEGAL NOTICE</a>  
			<a href="tac">TERMS AND CONDITIONS</a> 
			<a href="faq">FAQ</a>
		 </div>
		<div class="span3">
			<h5>OUR OFFERS</h5>
			<a href="#">NEW PRODUCTS</a> 
			<a href="#">TOP SELLERS</a>  
			<a href="special_offer">SPECIAL OFFERS</a>  
			<a href="#">MANUFACTURERS</a> 
			<a href="#">SUPPLIERS</a> 
		 </div>
		<div id="socialMedia" class="span3 pull-right">
			<h5>SOCIAL MEDIA </h5>
			<a href="#"><img width="60" src="front/assets/img/facebook.png" title="facebook"/></a>
			<a href="#"><img width="60" src="front/assets/img/twitter.png" title="twitter"/></a>
			<a href="#"><img width="60" src="front/assets/img/rss.png" title="rss"/></a>
			<a href="#"><img width="60" src="front/assets/img/youtube.png" title="youtube"/></a>
		 </div> 
	 </div>
	 <hr class="soft">
	<p class="pull-right">&copy; Boot'sshop</p>
</div><!-- /container -->


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="front/assets/js/jquery.js"></script>
	<script src="front/assets/js/google-code-prettify/prettify.js"></script>
    <script src="front/assets/js/application.js"></script>
    <script src="front/assets/js/bootstrap-transition.js"></script>
    <script src="front/assets/js/bootstrap-modal.js"></script>
    <script src="front/assets/js/bootstrap-scrollspy.js"></script>
    <script src="front/assets/js/bootstrap-alert.js"></script>
    <script src="front/assets/js/bootstrap-dropdown.js"></script>
    <script src="front/assets/js/bootstrap-tab.js"></script>
    <script src="front/assets/js/bootstrap-tooltip.js"></script>
    <script src="front/assets/js/bootstrap-popover.js"></script>
    <script src="front/assets/js/bootstrap-button.js"></script>
    <script src="front/assets/js/bootstrap-collapse.js"></script>
    <script src="front/assets/js/bootstrap-carousel.js"></script>
    <script src="front/assets/js/bootstrap-typeahead.js"></script>
    <script src="front/assets/js/bootstrap-affix.js"></script>
    <script src="front/assets/js/jquery.lightbox-0.5.js"></script>
	<script src="front/assets/js/bootsshoptgl.js"></script>
	 <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
        $('#btn-signin').click(function(){
        	
        	$.post(
        		"signin",
        		{
        			userName:$('#login-inputEmail').val(),
        		    password:$('#login-inputPassword').val()   		}

        		).done(
        		function(data){
        			console.log(data);
        		})

        })
    	
    });
    
    </script>
  </body>
</html>