
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
 <%@ include file="navbar.jsp" %>
<!-- ======================================================================================================================== -->	

<!-- ==================================================Header End====================================================================== -->

<div class="row">
 <%@ include file="sidebar.jsp" %>

	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Compairsition</li>
    </ul>
	<h3> Products Compairsition <small class="pull-right"> 2 products are compaired </small></h3>	
	<hr class="soft"/>

	<table id="compairTbl" class="table table-bordered">
              <thead>
                <tr>
                  <th>Features</th>
                  <th>Product1 name here </th>
                  <th>Product2 name here</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>&nbsp;</td>
                  <td align="center">
					<p class="justify">
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - that is why our 
						goods are so popular and we have a great number of faithful customers all over the country.
					</p>
				<img src="front/assets/products/1.jpg" alt=""/>
				<form class="form-horizontal qtyFrm">
				<h3> $222.00</h3><br/>
				 <a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				 <a href="product_details" class="btn btn-large">VIEW</a>
				</form>
				</td>
                  <td>
				  <p class="justify">
					Nowadays the lingerie industry is one of the most successful business spheres.
					We always stay in touch with the latest fashion tendencies - that is why our 
					goods are so popular and we have a great number of faithful customers all over the country.
				</p>
				<img src="front/assets/products/3.jpg" alt=""/>
				
				<form class="form-horizontal qtyFrm">
				<h3> $190.00</h3>
				<br/>
				 <a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				 <a href="product_details" class="btn btn-large">VIEW</a>
				</form>
				  </td>
                </tr>
                <tr>
                  <td>Height</td>
                  <td>2"</td>
                  <td>2"</td>
                </tr>
                <tr>
                  <td>Deepth</td>
                  <td>5"</td>
                  <td>5"</td>
                </tr>
				<tr>
                  <td>Dimension</td>
                  <td>--</td>
                  <td>--</td>
                </tr>
				<tr>
                  <td>Width</td>
                  <td>6.5"</td>
                  <td>6.5"</td>
                </tr>
				<tr>
                  <td>Weight</td>
                  <td>0.5kg</td>
                  <td>0.5kg</td>
                </tr>
              </tbody>
            </table>		
	<a href="products" class="btn btn-large pull-right">Back Products Page</a>
	
	
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
	<p class="pull-right">&copy; Smartphone Warehouse</p>
</div><!-- /container -->


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
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