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
		<li class="active">Special offers</li>
    </ul>
	<h3> 20% Discount Special offer<small class="pull-right"> 40 products are available </small></h3>	
	<hr class="soft"/>
	<form class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Sort By </label>
			<select>
              <option>Priduct name A - Z</option>
              <option>Priduct name Z - A</option>
              <option>Priduct Stoke</option>
              <option>Price Lowest first</option>
            </select>
		</div>
	  </form>
	<div id="myTab" class="pull-right">
	 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
	 <a href="#blockView" data-toggle="tab"><span class="btn btn-large active"><i class="icon-th-large icon-white"></i></span></a>
	</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView">
		<div class="row">	  
			<div id="productView" class="span2">
			<img src="front/assets/products/4.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<a class="btn btn-small pull-right" href="product_details">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> $222.00</h3>
			<label class="checkbox">
				<input type="checkbox">  Adds product to compair
			</label><br/>
			  <a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
			  <a href="product_details" class="btn btn-large">VIEW</a>
				</form>
			</div>
	</div>
	<hr class="soft"/>
	<div class="row">	  
			<div id="productView" class="span2">
				<img src="front/assets/products/4.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<a class="btn btn-small pull-right" href="product_details">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $222.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details" class="btn btn-large">VIEW</a>
			</form>
			</div>
	</div>
	<hr class="soft"/>
	<div class="row">	  
			<div id="productView" class="span2">
				<img src="front/assets/products/4.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<a class="btn btn-small pull-right" href="product_details">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> $222.00</h3>
			<label class="checkbox">
			<input type="checkbox">  Adds product to compair
			</label><br/>
			  <a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
			  <a href="product_details" class="btn btn-large">VIEW</a>
			</form>
			</div>
	</div>
	<hr class="soft"/>
	<div class="row">	  
			<div id="productView" class="span2">
				<img src="front/assets/products/4.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<a class="btn btn-small pull-right" href="product_details">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $222.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details" class="btn btn-large">VIEW</a>
				</form>
			</div>
	</div>
	
	<hr class="soft"/>
	<div class="row">	  
			<div id="productView" class="span2">
				<img src="front/assets/products/4.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<a class="btn btn-small pull-right" href="product_details">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $222.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details" class="btn btn-large">VIEW</a>
				</form>
			</div>
	</div>
	<hr class="soft"/>
		<div class="row">	  
			<div id="productView" class="span2">
				<img src="front/assets/products/4.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<a class="btn btn-small pull-right" href="product_details">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $222.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details" class="btn btn-large">VIEW</a>
				</form>
			</div>
		</div>
	<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails" >
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				  <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details"><img src="front/assets/products/4.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					Lorem Ipsum is simply dummy text. 
				  </p>
				   <h4><a class="btn btn-large" href="product_details">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>


	<hr class="soft"/>
	</div>
</div>
<a href="compair" class="btn btn-large pull-right">Compair Product</a>
	<div class="pagination">
		<ul>
		<li><a href="#">&lsaquo;</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">...</a></li>
		<li><a href="#">&rsaquo;</a></li>
		</ul>
	</div>
<br class="clr"/>
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
              					
              					$("#listView").html("");
              					$("#blockView").html("");
              					var htmlList ="";
              					var htmlGrid ="	<ul class=\"thumbnails\" >";
              					for(var d in obj.obj){
              						htmlList+="<div class=\"row\">"	  
              						+"<div id=\"productView\" class=\"span2\">";
              						if(obj.obj[d].img!=null){
              							htmlList+="<img src=\""+obj.obj[d].img[0]+" alt=\"\"/>";
              						}else{
              							htmlList+="<img src=\"data:image/jpeg;base64,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\" alt=\"\"/>";
              						}
              						
              						htmlList+="</div>"
              						+"<div class=\"span4\">"
              						+"	<h3>"+obj.obj[d].name+"</h3>	"			
              						+"	<hr class=\"soft\"/>"
              						+"	<h5>"+obj.obj[d].productTitle+"</h5>"
              						+"	<p>"
              						+obj.obj[d].des+
              						+"	</p>"
              						+"	<a class=\"btn btn-small pull-right\" href=\"product_details\\"+obj.obj[d].id+"\">View Details</a>"
              						+"	<br class=\"clr\"/>"
              						+"</div>"
              						+"<div class=\"span3 alignR\">"
              						+"<form class=\"form-horizontal qtyFrm\">"
              						+"<h3>$"+obj.obj[d].price+"</h3>"
              						+"<label class=\"checkbox\">"
              						+"	<input type=\"checkbox\">  Adds product to compair"
              						+"</label><br/>"
              						+"  <a href=\"product_details\" class=\"btn btn-large\"><i class=\" icon-shopping-cart\"></i> Add to cart</a>"
              						+"  <a href=\"product_details\" class=\"btn btn-large\">VIEW</a>"
              						+"	</form>"
              						+"</div>"
              						+"</div>"
              						+"<hr class=\"soft\"/>";
              						
              						
              						
              						
              						htmlGrid+= "<li class=\"span3\">"
              							+"		  <div class=\"thumbnail\">"
              							+"			<a href=\"product_details\">";
              							if(obj.obj[d].img!=null){
              								htmlGrid+= "<img src=\""+obj.obj[d].img[0]+" alt=\"\"/>";
                  						}else{
                  							htmlGrid+= "<img src=\"data:image/jpeg;base64,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\" alt=\"\"/>";
                  						}
              							htmlGrid+= "</a>"
              							+"			<div class=\"caption\">"
              							+"			  <h5>"+obj.obj[d].name+"</h5>"
              							+"				  <p> "
              							+obj.obj[d].productTitle+
              							+"				  </p>"
              							+"				  <h4><a class=\"btn btn-large\" href=\"product_details/"+obj.obj[d].id+"\">VIEW</a> <span class=\"pull-right\">$"+obj.obj[d].price+"</span></h4>"
              							+"				</div>"
              							+"			  </div>"
              							+"			</li>";
              										
              										
              				    }
              					 htmlGrid +="	</ul>";
              					$("#blockView").html(htmlGrid);
              					$("#listView").html(htmlList);
              				
              			 
              				}
              		 		
              	});
         	
         }; // end normProduct
         
         normProduct();
    });
    </script>
  </body>
</html>