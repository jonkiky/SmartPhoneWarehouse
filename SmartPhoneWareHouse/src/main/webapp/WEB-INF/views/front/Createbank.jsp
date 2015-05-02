<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Payment Center</title>
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

	<h3>Bank Info</h3>
	<div class="tab-pane" id="listView">
	<form class="form-horizontal" >
		<h3>Your Payment information</h3>

		<div class="control-group">
			<label class="control-label" for="inputFname"> Card number <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="cardNumber" placeholder="Card number">
			</div>
		 </div>
		<div class="control-group">
			<label class="control-label" for="inputFname">Name on card <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="nameOnCard" placeholder="Name on card">
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLname">Expiration date <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="expirationDate" placeholder="Expiration date">
			</div>
		 </div>
		  <div class="control-group">
			<label class="control-label" for="inputLname">Expiration Year<sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="expirationYear" placeholder="Expiration date">
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputEmail">Security Code <sup>*</sup></label>
		<div class="controls">
		  <input type="text" id="scode" placeholder="Security Code">
		</div>
	  </div>	  
		
	<p><sup>*</sup>Required field	</p>
	
	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
				<input id="add_btn" class="btn btn-large" type="button" value="Add New Payment" />
			</div>
		</div>		
	</form>
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
        $("#add_btn").click(function(){
        	if(check){
        		add();
        	}	
        })
        
    })
    function check(){
    	var flag =true;
    	var cardNumber=$("#cardNumber").val();
		 var nameOnCard=$("#nameOnCard").val();
		 var expirationDate=$("#expirationDate").val();
		 var expirationYear=$("#expirationYear").val();
		 var securecode=$("#scode").val();
		 
		 if(cardNumber==""){
				$.notify("cardNumber  is required", "warn");
      			flag =false;
		 }
		 if(expirationDate==""){
				$.notify("Expiration Date  is required", "warn");
   			flag =false;
		 }
		 if(expirationYear==""){
				$.notify("Expiration Year  is required", "warn");
   			flag =false;
		 }
		 if(securecode==""){
				$.notify("Secure code  is required", "warn");
   			flag =false;
		 }
		 if(nameOnCard==""){
				$.notify("Name On Card  is required", "warn");
   			flag =false;
		 }
		 return flag
    }
    function add(){
    	 $.ajax({
        	  type: "POST",
        	  url:"<c:url value="/addNewBankCard/"/>",
         	  data: JSON.stringify({
            		"buyerId":${buyer.id},
            		"type":"visa",
            	    "cardNumber":$("#cardNumber").val(),
            		 "nameOnCard":$("#nameOnCard").val(),
            		 "expirationDate":$("#expirationDate").val(),
            		 "expirationYear":$("#expirationYear").val(),
            		 "securecode":$("#scode").val(),
            		"status":"active",
               }),
        	  contentType: "application/json"
        	}).done(function(e){
        		object = JSON.parse(e);
 				if(object.statusCode!="200"){
 					$.notify(obj.message, "error");
 				}else{
 					$.notify(obj.message, "success");
 					setTimeout(function(){ window.location.replace("buyer/bankinfo"); }, 1000);
 				}
        		
        		
        	})
    }
    </script>
  </body>
</html>