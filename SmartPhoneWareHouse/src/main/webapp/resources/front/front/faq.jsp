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
                 <a id="logoM" href="index.html"><img src="front/assets/img/logo.png" alt="Bootsshop"/></a>
					<a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  <li class=""><a href="index.html">Home	</a></li>
					  <li class=""><a href="special_offer.html">Specials Offer</a></li>
					  <li class=""><a href="normal.html">Delivery</a></li>
					  <li class=""><a href="contact.html">Contact</a></li>
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
							<input type="text" class="span2" id="inputEmail" placeholder="Email">
						  </div>
						  <div class="control-group">
							<input type="password" class="span2" id="inputPassword" placeholder="Password">
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
	<a href="index.html"><img src="front/assets/img/logo.png" alt="Bootsshop"/></a>

<div class="pull-right"> <br/>
	<a href="product_summary.html"> <span class="btn btn-mini btn-warning"> <i class="icon-shopping-cart icon-white"></i> [ 3 ] </span> </a>
	<a href="product_summary.html"><span class="btn btn-mini active">$155.00</span></a>
	<span class="btn btn-mini">&pound;</span>
	<span class="btn btn-mini">&euro;</span> 
</div>
</div>
</div>
<div class="clr"></div>
</header>
<!-- ==================================================Header End====================================================================== -->

	<hr class="soften">
	<h1>FAQ</h1>
	<hr class="soften"/>	

              <div class="accordion" id="accordion2">
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                      Collapsible Group Item #1
                    </a></h4>
                  </div>
                  <div id="collapseOne" class="accordion-body collapse"  >
                    <div class="accordion-inner">
						Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						<br/><br/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.
						<br/><br/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.

					</div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <h4><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                      Collapsible Group Item #2
                    </a></h4>
                  </div>
                  <div id="collapseTwo" class="accordion-body collapse"  >
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                      Collapsible Group Item #3
                    </a></h4>
                  </div>
                  <div id="collapseThree" class="accordion-body collapse"  >
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
				
				<div class="accordion-group">
                  <div class="accordion-heading">
                    <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
                      Collapsible Group Item #4
                    </a></h4>
                  </div>
                  <div id="collapseFour" class="accordion-body collapse"  >
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
				
				<div class="accordion-group">
                  <div class="accordion-heading">
                    <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive">
                      Collapsible Group Item #5
                    </a></h4>
                  </div>
                  <div id="collapseFive" class="accordion-body collapse"  >
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
				
				<div class="accordion-group">
                  <div class="accordion-heading">
                    <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapseSix">
                      Collapsible Group Item #6
                    </a></h4>
                  </div>
                  <div id="collapseSix" class="accordion-body collapse"  >
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
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
			<a href="login.html">YOUR ACCOUNT</a>
			<a href="login.html">PERSONAL INFORMATION</a> 
			<a href="login.html">ADDRESSES</a> 
			<a href="login.html">DISCOUNT</a>  
			<a href="login.html">ORDER HISTORY</a>
		 </div>
		<div class="span3">
			<h5>INFORMATION</h5>
			<a href="contact.html">CONTACT</a>  
			<a href="register.html">REGISTRATION</a>  
			<a href="legal_notice.html">LEGAL NOTICE</a>  
			<a href="tac.html">TERMS AND CONDITIONS</a> 
			<a href="faq.html">FAQ</a>
		 </div>
		<div class="span3">
			<h5>OUR OFFERS</h5>
			<a href="#">NEW PRODUCTS</a> 
			<a href="#">TOP SELLERS</a>  
			<a href="special_offer.html">SPECIAL OFFERS</a>  
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
	<p class="pull-right">&copy; Smartphone Warehouse</p>
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
    });
    </script>
  </body>
</html>