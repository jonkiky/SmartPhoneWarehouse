<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Delivery Address</title>
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
<%@ include file="navbar.jsp" %>
<!-- ======================================================================================================================== -->	

<!-- ==================================================Header End====================================================================== -->
<div class="row">
 <%@ include file="UserSideBar.jsp" %>
 <%@ include file="checkLogin.jsp" %>
<div class="span9">

	<h3> Manage Addresses </h3>
	<div class="tab-pane" id="listView">
	
	<hr class="soft"/>
		<div class="row">	  
		 <a href="newAddress" class="btn btn-large"><i class=" icon-credit"></i> Add New Address</a>
		</div>
		<div class="row">	  
			<div id="productView" class="span2">
	
			<div class="span4" id="addresseslist">
				
				<hr class="soft"/>
				<div>
				
				<p>
				
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				<div> <a href="product_details" class="btn btn-large"><i class=" icon-credit"></i>Edit this ayment</a>
				 <a href="product_details" class="btn btn-large"><i class=" icon-credit"></i>Remove this ayment</a>
				 </div>
				</div>
					<hr class="soft"/>
				<div>
				<p>
				
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				</div>
				<div>
				<p>
				
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...
				</p>
				</div>
				<br class="clr"/>
			</div>
			
		</div>
		</div>
	<hr class="soft"/>
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
        init();
        
        
        function init(){
       	 $.ajax({
           	  type: "GET",
           	  url:"<c:url value="/buyer/getAddresses/"/>"+${buyer.id},
   	           contentType: "application/json"
           	}).done(function(e){
           		object = JSON.parse(e);
    				if(object.statusCode!="200"){
    					$.notify(obj.message, "error");
    				}else{
    					var html ="";
    					$("#addresseslist").html("");
    					for(var i = 0; i < object.obj.length;i++){
    	 					var o= object.obj[i];
   			
   				html+="<hr class=\"soft\"/>"
   				+"<div>"
   				+"<p>"
   				+"<b>"+o.user_name+"</b>"
   				+"<Br> <b>"+o.address+"</b>"
   				+"<Br> <b>"+o.city+" </b>"
   				+"<Br> <b>"+o.state+" </b>"
   				+"<Br> <b>"+o.state+" </b>"
   				+"<Br> <b>Mobile Phone: "+o.mobilePhone+" </b>"
   				+"<Br> <b>Home Phone: "+o.mobilePhone+" </b>"
   				+"</p>"
   				+"<div> "
   				+" <a href=\"javascript:onclick=deleteAddress("+o.id+")\" class=\"btn btn-media\"><i class=\" icon-credit\"></i>Remove this Address</a>"
   				+" </div>"
   				+"</div>";
   				
    					}
    					$("#addresseslist").html(html);
    				}
           		
           		
           	})
       }
        
      
    })
    
      function deleteAddress(id){
        	$.ajax({
            	  type: "GET",
            	  url:"<c:url value="/deleteAddress/"/>"+id,
      	           contentType: "application/json"
            	}).done(function(e){
            		object = JSON.parse(e);
      				if(object.statusCode!="200"){
      					$.notify(obj.message, "error");
      				}else{
      					$.notify(obj.message, "success");
      					setTimeout(function(){ window.location.reload(); }, 1000);
      					}
      				})
        }
       
    </script>
  </body>
</html>