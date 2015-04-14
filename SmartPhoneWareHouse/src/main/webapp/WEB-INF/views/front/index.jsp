<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Online Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	 
    <!-- Le styles  -->
    <link href="<c:url value="front/assets/css/bootstrap.css"/>" rel="stylesheet"/>
    <link href="<c:url value="front/assets/css/bootstrap-responsive.css"/>" rel="stylesheet"/>
	<link href="<c:url value="front/assets/css/docs.css"/>" rel="stylesheet"/>
	 
    <link href="<c:url value="front/assets/style.css"/>" rel="stylesheet"/>
	<link href="<c:url value="front/assets/js/google-code-prettify/prettify.css"/>" rel="stylesheet"/>

	
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

		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
              <div class="item active">
                <img style="width:100%" src="front/assets/carousel/1.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
              </div>
			  <div class="item">
                <img style="width:100%" src="front/assets/carousel/2.jpg" alt=""/>
					<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
              </div>
              <div class="item">
                <img src="front/assets/carousel/3.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                
              </div>
			   <div class="item">
                <img src="front/assets/carousel/4.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
               
              </div>
			   <div class="item">
                <img src="front/assets/carousel/5.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
              </div>
            </div>
			<!--<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a> -->
			<a href="special_offer" id="spcialBtn" class="btn btn-large pull-right btn-success" >Special Offer</a> 
          </div>
		  
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
		<li > <a href="product_summary"><strong><span class="number_of_product_in_shoppingcart">3</span> Items in your cart  <span class="shoppingcart_total_price badge badge-warning pull-right" style="line-height:18px;">$155.00</span></strong></a></li>
		<li style="border:0"> &nbsp;</li>	
	 
	  </ul>
</div>

	<div class="span9">
	<div>
		<h3>New Products </h3>
		<div class="row-fluid">
		<div id="myCarousel1" class="carousel slide">
            <div class="carousel-inner">
              <div class="item active">
		  <ul class="thumbnails" >
			<li class="span3">
			  <div class="thumbnail">
			  <a href="#" class="tag" src="front/assets/products/new.png"></a>
				<a  href="product_details"><img src="front/assets/products/1.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
			  <a href="#" class="tag" src="front/assets/products/new.png"></a>
				<a  href="product_details"><img src="front/assets/products/2.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
			  <a href="#" class="tag" src="front/assets/products/new.png"></a>
				<a  href="product_details"><img src="front/assets/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text . 
				  </p>
				   <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>
		  </div>
		   <div class="item">
		  <ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="front/assets/products/5.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="front/assets/products/6.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="front/assets/products/7.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="front/assets/products/8.jpg" alt=""/></a>
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
		   <div class="item">
		  <ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/9.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/10.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/11.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/1.jpg"/>" alt=""/></a>
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
		   <div class="item">
		  <ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/2.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/3.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/4.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/5.jpg"/>" alt=""/></a>
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
		  </div>
		  <a class="left carousel-control" href="#myCarousel1" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel1" data-slide="next">&rsaquo;</a>
		  </div>		  
		  </div>
		  
		  
		  <ul class="thumbnails" id="normProduct">
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/6.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/7.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/8.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>
		  
		  <h3>Feature Products </h3>
		  
		  <ul class="thumbnails" id="featureProduct">
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/9.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="   front/assets/products/10.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a  href="product_details"><img src="<c:url value="front/assets/products/11.jpg"/>" alt=""/></a>
				<div class="caption">
				  <h5>Product name</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>	
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
			<a href="#"><img width="60" src="<c:url value="front/assets/img/facebook.png"/>" title="facebook"/></a>
			<a href="#"><img width="60" src="<c:url value="front/assets/img/twitter.png"/>" title="twitter"/></a>
			<a href="#"><img width="60" src="<c:url value="front/assets/img/rss.png"/>" title="rss"/></a>
			<a href="#"><img width="60" src="<c:url value="front/assets/img/youtube.png"/>" title="youtube"/></a>
		 </div> 
	 </div>
	 <hr class="soft">
	<p class="pull-right">&copy; Boot'sshop</p>
</div><!-- /container -->
            <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
 
	<script src="<c:url value="front/assets/js/google-code-prettify/prettify.js"/>"></script>
    <script src="<c:url value="front/assets/js/application.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-transition.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-modal.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-scrollspy.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-alert.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-dropdown.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-tab.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-tooltip.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-popover.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-button.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-collapse.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-carousel.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-typeahead.js"/>"></script>
    <script src="<c:url value="front/assets/js/bootstrap-affix.js"/>"></script>
    <script src="<c:url value="front/assets/js/jquery.lightbox-0.5.js"/>"></script>
	<script src="<c:url value="front/assets/js/bootsshoptgl.js"/>"></script>
	<script src="<c:url value="front/js/notify.min.js"/>"></script>

      <script type="text/javascript">
     
    $(function() {
     	/// function definitions
    	 var newProduct =function(){
        	 $.ajax({
             	  type: "POST",
             	  url: '<c:url value="/productsforHomePage"/>'
             	}).done(function(e){
             		 		obj = JSON.parse(e);
             				if(obj.statusCode!="200"){
             					$.notify(obj.message, "error");
             				}else{
             					$.notify(obj.message, "success");
             					
             					$("#myCarousel1").html("");
             					var html =" <div class=\"carousel-inner\"> <div class=\"item active\"><ul class=\"thumbnails\" >";
             				    
             					for(var d in obj.obj){
             				    	html+="<li class=\"span3\"><div class=\"thumbnail\">"
                     				    +"<a href=\"#\" class=\"tag\" src=\"front/assets/products/new.png\"></a>"
                     				    +"<a  href=\"product_details\\"+obj.obj[d].id+"\"><img src=\"front/assets/products/1.jpg\" alt=\"\"/></a>"
                     				    +"<div class=\"caption\">"
                     					+"<h5>"+obj.obj[d].name+"</h5> <p>"+ obj.obj[d].productTitle+" </p>"
                     					+"<h4><a class=\"btn\"  href=\"product_details\\"+obj.obj[d].id+"\">VIEW</a> <span class=\"pull-right\">$"+obj.obj[d].price+"</span></h4>"
                     					+"</div> </div></li>";
             				    }
             					html+="</ul></div>";
             					$("#myCarousel1").html(html);
             					
             				
             			 
             				}
             		 		
             	});
        	
        };    

        var FeaturedProduct =function(){
          	 $.ajax({
               	  type: "POST",
               	  url: '<c:url value="/productsforHomePage"/>'
               	}).done(function(e){
               		 		obj = JSON.parse(e);
               				if(obj.statusCode!="200"){
               					$.notify(obj.message, "error");
               				}else{
               					$.notify(obj.message, "success");
               					
               					$("#featureProduct").html("");
               					var html ="";
               				    
               					for(var d in obj.obj){
               						
 					
 							html += "<li class=\"span3\">"
 							+ "<div class=\"thumbnail\">"
 							+ "<a  href=\"product_details\\"+obj.obj[d].id+"\"><img src=\"front/assets/products/9.jpg\" /></a>"
 							+  "<div class=\"caption\">"
 							+  "  <h5>"+  obj.obj[d].name+"</h5>"
 							+  "  <p> "
 							+   obj.obj[d].productTitle
 							+  "	  </p>"
 							+  "	  <h4><a class=\"btn btn-large\" href=\"product_details\\"+obj.obj[d].id+"\">VIEW</a> <span class=\"pull-right\">$"+obj.obj[d].price+"</span></h4>"
 							+  "	</div>"
 							+  " </div>"
 								+ "</li>";
 								}

 							$("#featureProduct").html(html);

 														}

 													});

 								};
 								
 								
 								
 								
 								var normProduct =function(){
 						         	 $.ajax({
 						              	  type: "POST",
 						              	  url: '<c:url value="/productsforHomePage"/>'
 						              	}).done(function(e){
 						              		 		obj = JSON.parse(e);
 						              				if(obj.statusCode!="200"){
 						              					$.notify(obj.message, "error");
 						              				}else{
 						              					$.notify(obj.message, "success");
 						              					
 						              					$("#normProduct").html("");
 						              					var html ="";
 						              				    
 						              					for(var d in obj.obj){
 						              						html+="<li class=\"span3\">"
 						              					 +" <div class=\"thumbnail\">"
 						              					 +"	<a  href=\"product_details\\"+obj.obj[d].id+"\"><img src=\"front/assets/products/6.jpg\"/></a>"
 						              					 +"	<div class=\"caption\">"
 						              					 +"	  <h5>"+obj.obj[d].name+"</h5>"
 						              					 +"	  <p> "
 						              					 + obj.obj[d].productTitle
 						              					 +"	  </p>"
 						              					 +"	  <h4><a class=\"btn btn-large\" href=\"product_details\\"+obj.obj[d].id+"\">VIEW</a> <span class=\"pull-right\">$"+obj.obj[d].price+"</span></h4>"
 						              					 +"	</div>"
 						              					 +"  </div>"
 						              					 +"</li>";
 						              				    }
 						              				
 						              					$("#normProduct").html(html);
 						              					
 						              				
 						              			 
 						              				}
 						              		 		
 						              	});
 						         	
 						         }; 
 						         
 						         
 						         

 						           var shoppingCart =function(){
 						             	 $.ajax({
 						                  	  type: "POST",
 						                  	  url: '<c:url value="/productsforHomePage"/>'
 						                  	}).done(function(e){
 						                  		 		obj = JSON.parse(e);
 						                  				if(obj.statusCode!="200"){
 						                  					$.notify(obj.message, "error");
 						                  				}else{
 						                  					$.notify("Shopping Cart Update Success", "success");
 						                  					
 						                  					$(".number_of_product_in_shoppingcart").text(12);
 						                  					$(".shoppingcart_total_price").text(12312);
 						                  					
 						                  				
 						                  			 
 						                  				}
 						                  		 		
 						                  	});
 						             	
 						             };  
 						         
 						         
 						         
 						         
 						         
 						         
							      
								newProduct();
								FeaturedProduct();
								normProduct();
								shoppingCart();

							});
						</script>
  </body>
</html>