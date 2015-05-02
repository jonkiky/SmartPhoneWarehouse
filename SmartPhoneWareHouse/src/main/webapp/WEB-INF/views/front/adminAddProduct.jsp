<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles  -->
    <link href="<c:url value="/front/assets/css/bootstrap.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/front/assets/css/bootstrap-responsive.css"/>" rel="stylesheet"/>
	<link href="<c:url value="/front/assets/css/docs.css"/>" rel="stylesheet"/>
	 
      <link href="<c:url value="/front/assets/style.css"/>" rel="stylesheet"/>
	<link href="<c:url value="/front/assets/js/google-code-prettify/prettify.css"/>"  rel="stylesheet"/>
	
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/front/assets/ico/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/front/assets/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/front/assets/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/front/assets/ico/apple-touch-icon-57-precomposed.png"/>">
	
	
  </head>
<body>
  <!-- Navbar
    ================================================== -->
<%@ include file="adminnavbar.jsp" %>
<!-- ======================================================================================================================== -->	

<!-- ==================================================Header End====================================================================== -->
<div class="row">
 <%@ include file="adminSideBar.jsp" %>
 <%@ include file="admincheckLogin.jsp" %>
<div class="span9">

	<h3> Manage Addresses </h3>
	<Div class="row">	  
			<div id="gallery" class="span3">
			<style>
			#jquery-overlay {position: absolute;top: 0;left: 0;z-index: 90;width: 100%;height: 500px;}
			#jquery-lightbox {position: absolute;top: 0;left: 0;width: 100%;z-index: 100;text-align: center;line-height: 0;}
			#jquery-lightbox a img { border: none; }#lightbox-container-image-box {position: relative;background-color: #fff;width: 250px;height: 250px;margin: 0 auto;}
			#lightbox-container-image { padding: 10px; }#lightbox-loading {position: absolute;top: 40%;left: 0%;height: 25%;width: 100%;text-align: center;line-height: 0;}
			#lightbox-nav {	position: absolute;top: 0;left: 0;height: 100%;width: 100%;z-index: 10;}#lightbox-container-image-box > #lightbox-nav { left: 0; }#lightbox-nav a { outline: none;}
			#lightbox-nav-btnPrev, #lightbox-nav-btnNext {width: 49%;height: 100%;zoom: 1;display: block;}
			#lightbox-nav-btnPrev { left: 0; float: left;}#lightbox-nav-btnNext { right: 0; float: right;}
			#lightbox-container-image-data-box {font: 10px Verdana, Helvetica, sans-serif;background-color: #fff;margin: 0 auto;line-height: 1.4em;overflow: auto;width: 100%;padding: 0 10px 0;}
			#lightbox-container-image-data {	padding: 0 10px; 	color: #666; }
			#lightbox-container-image-data #lightbox-image-details {width: 70%; float: left; text-align: left; }	
			#lightbox-image-details-caption { font-weight: bold; }#lightbox-image-details-currentNumber {display: block; clear: left; padding-bottom: 1.0em;}
			#lightbox-secNav-btnClose {width: 66px; float: right;padding-bottom: 0.7em;	}
			</style>
            <a href="<c:url value="/front/assets/products/1.jpg"/>" title="<h4></h4>">
				<img src="<c:url value="/front/assets/products/1.jpg"/>" width="100%" />
            </a>
			<div id="myCarousel" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="<c:url value="/front/assets/products/1.jpg"/>"> <img width="29%" src="<c:url value="/front/assets/products/1.jpg"/>" alt=""/></a>
                   <a href="<c:url value="/front/assets/products/1.jpg"/>"> <img width="29%" src="<c:url value="/front/assets/products/2.jpg"/>" alt=""/></a>
                   <a href="<c:url value="/front/assets/products/1.jpg"/>" > <img width="29%" src="<c:url value="/front/assets/products/3.jpg"/>" alt=""/></a>
                  </div>
                  <div class="item">
                   <a href="<c:url value="/front/assets/products/1.jpg" />"> <img width="29%" src="<c:url value="/front/assets/products/3.jpg" />"alt=""/></a>
                   <a href="<c:url value="/front/assets/products/1.jpg"/>"> <img width="29%" src="<c:url value="/front/assets/products/1.jpg"/>" alt=""/></a>
                   <a href="<c:url value="/front/assets/products/1.jpg"/>"> <img width="29%" src="<c:url value="/front/assets/products/2.jpg"/>" alt=""/></a>
                  </div>
                </div>
              <!--  
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> 
			  -->
              </div>
			  
			 <div class="btn-toolbar">
			  <div class="btn-group">
				<span class="btn"><i class="icon-envelope"></i></span>
				<span class="btn" ><i class="icon-print"></i></span>
				<span class="btn" ><i class="icon-zoom-in"></i></span>
				<span class="btn" ><i class="icon-star"></i></span>
				<span class="btn" ><i class=" icon-thumbs-up"></i></span>
				<span class="btn" ><i class="icon-thumbs-down"></i></span>
			  </div>
			</div>
			</div>
			<div class="span6">
				<h3>
				  <input type="text" id="productName" placeholder="name">
				    <input type="text" id="productBrand" placeholder="brand">
				 </h3>
				   <input type="text" id="productTitle" placeholder="title">
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span>$<input type="text" id="price" placeholder="price "></span></label>
					<div class="controls">
					<input type="text" id="pnumber" class="span1" placeholder="numberInStroe"/>
					</div>
				  </div>
				</form>
				
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm pull-right">
				 
				<!--  <div class="control-group">
					<label class="control-label"><span>Materials</span></label>
					<div class="controls">
					  <select class="span2">
						  <option>Slik</option>
						  <option>Cotton</option>
						  <option>Mix</option>
						  <option>Ruby</option>
						</select>
					</div>
				  </div> -->
				</form>
				<hr class="soft clr"/>
				
				<br class="clr"/>
			<a name="detail"></a>
				<hr class="soft"/>
			</div>
			
			<div class="span9">
            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>Product Information</h4>
                <table class="table table-bordered" cellspacing="0">
				<tbody>
				<tr class="techSpecRow"><th colspan="2">Product Description</th></tr>
				</tbody>
				</table>
				
				
				    <textarea id="description" rows="4" class="span9">  </textarea>
				</p>
				<h3>Image</h3>
					<input  class =" span9" type="text" id="img1" class="span1" />
					<input  class =" span9" type="text" id="img2" class="span1" />
					<input  class =" span9" type="text" id="img3" class="span1" />
					<input  class =" span9" type="text" id="img4" class="span1" />
				<p>
              </div>
              
              	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
				<input id="editProduct_btn" class="btn btn-large" type="button" value="Save" />
			</div>
		</div>	
		<div class="tab-pane fade" id="profile">
		<!-- <div id="myTab" class="pull-right">
		 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
		 <a href="#blockView" data-toggle="tab"><span class="btn btn-large active"><i class="icon-th-large icon-white"></i></span></a>
		</div>
		<br class="clr"/>
		<hr class="soft"/>
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
						Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
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
					<div class="btn-group">
					  <a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
					  <a href="product_details" class="btn btn-large">VIEW</a>
					 </div>
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
						Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
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
						<div class="btn-group">
						<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
						<a href="product_details" class="btn btn-large">VIEW</a>
						</div>
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
						Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
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
				<div class="btn-group">
				  <a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				  <a href="product_details" class="btn btn-large">VIEW</a>
				 </div>
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
						Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
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
						<div class="btn-group">
						<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
						<a href="product_details" class="btn btn-large">VIEW</a>
						</div>
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
						Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
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
						<div class="btn-group">
						<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
						<a href="product_details" class="btn btn-large">VIEW</a>
						</div>
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
						Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
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
						<div class="btn-group">
						<a href="product_details" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
						<a href="product_details" class="btn btn-large">VIEW</a>
						</div>
						</form>
					</div>
			</div>
			<hr class="soft"/>
		</div>
			<div class="tab-pane active" id="blockView">
				<ul class="thumbnails">
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
				<br class="clr">
					 </div>-->
		</div>
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
			<a href="#"><img width="60" src="<c:url value="/front/assets/img/facebook.png"/>" title="facebook"/></a>
			<a href="#"><img width="60" src="<c:url value="/front/assets/img/twitter.png"/>" title="twitter"/></a>
			<a href="#"><img width="60" src="<c:url value="/front/assets/img/rss.png"/>" title="rss"/></a>
			<a href="#"><img width="60" src="<c:url value="/front/assets/img/youtube.png"/>" title="youtube"/></a>
		 </div> 
	 </div>
	 <hr class="soft">
	<p class="pull-right">&copy; Smartphone Warehouse</p>
</div><!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/front/assets/js/google-code-prettify/prettify.js"/>"></script>
    <script src="<c:url value="/front/assets/js/application.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-transition.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-modal.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-scrollspy.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-alert.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-dropdown.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-tab.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-tooltip.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-popover.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-button.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-collapse.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-carousel.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-typeahead.js"/>"></script>
    <script src="<c:url value="/front/assets/js/bootstrap-affix.js"/>"></script>
    <script src="<c:url value="/front/assets/js/jquery.lightbox-0.5.js"/>"></script>
	<script src="<c:url value="/front/assets/js/bootsshoptgl.js"/>"></script>
	 <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
     	$("#editProduct_btn").click(function(){
     		
     		
     		
     		updateProduct()
     		
     		
     	})
     	
     	
     	  function updateProduct(){
        	
        	 $.ajax({
          	  type: "POST",
          	  url: '<c:url value="/addProduct"/>',
          	  data: JSON.stringify({
             		"brand":$("#productBrand").val(),
             	    "title":$("#productTitle").val(),
             	    "name":$("#productName").val(),
             		"price":$("#price").val(),
             		"number_in_stroe":$("#pnumber").val(),
             		"des":$("#description").val(),
             		"seller_id":${seller.id}
             }),
             contentType: "application/json"
          	}).done(function(e){
          		 obj2= JSON.parse(e);
    				if(obj2.statusCode!="200"){
    					$.notify(obj2.message, "error");
    				}else{
    					$.notify(obj2.message, "success");
    					//setTimeout(function(){ location.reload(); }, 1000);
    					
    					addImg(e.obj);
    				}
          	});
       	
       }
       
       
       var addImg = function(pid){
       	
       	 $.ajax({
         	  type: "POST",
         	  url: '<c:url value="/addProductPic"/>',
         	  data: JSON.stringify(
         	[{
         		  "product_id":pid,
         		  "imageURl":$("#img1").val()
            },
         	{
       		  "product_id":pid,
       		  "imageURl":$("#img2").val()
           },
         	{
       		  "product_id":pid,
       		  "imageURl":$("#img3").val()
           },
           {
        		  "product_id":pid,
        		  "imageURl":$("#img4").val()
            }]
         	  ),
            contentType: "application/json"
         	}).done(function(e){
         		obj = JSON.parse(e);
   				if(obj.statusCode!="200"){
   					$.notify(obj.message, "error");
   				}else{
   					$.notify(obj.message, "success");
   					setTimeout(function(){ window.location.replace("../adminProducts"); }, 1000);
   				}
         	});
      	
      }
      
      
    })
       
    </script>
  </body>
</html>