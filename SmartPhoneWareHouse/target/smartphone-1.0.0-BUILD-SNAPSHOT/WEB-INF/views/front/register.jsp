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
		<li class="active">Registration</li>
    </ul>
	<h3> Registration</h3>	
	<hr class="soft"/>
	<div class="well">
	<div class="alert fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div>
	 <div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div>
	<form class="form-horizontal" >
		<h3>Your personal information</h3>
		<div class="control-group">
		<label class="control-label" for="dob">Title <sup>*</sup></label>
		<div class="controls">
		<select class="span1" name="days" id="register_title">
			<option value="">-</option>
			<option value="1">Mr.</option>
			<option value="2">Mrs</option>
			<option value="3">Miss</option>
		</select>
		</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputFname">User name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputUserName" placeholder="User Name">
			</div>
		 </div>
		<div class="control-group">
			<label class="control-label" for="inputFname">First name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputFname" placeholder="First Name">
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLname">Last name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputLname" placeholder="Last Name">
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputEmail">Email <sup>*</sup></label>
		<div class="controls">
		  <input type="text" id="register_inputEmail" placeholder="Email">
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputPassword">Password <sup>*</sup></label>
		<div class="controls">
		  <input type="password" id="register_inputPassword" placeholder="Password">
		</div>
	  </div>	  
		<div class="control-group">
		<label class="control-label" for="dob">Date of Birth <sup>*</sup></label>
		<div class="controls">
		  <select class="span1" name="register_birth_month">
				<option value="">-Month</option>
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
					<option value="8">8&nbsp;&nbsp;</option>
					<option value="9">9&nbsp;&nbsp;</option>
					<option value="10">10&nbsp;&nbsp;</option>
					<option value="11">11&nbsp;&nbsp;</option>
					<option value="12">12&nbsp;&nbsp;</option>
			</select>
			<select class="span1" name="register_birth_days">
				<option value="">-Day</option>
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
					<option value="8">8&nbsp;&nbsp;</option>
					<option value="9">9&nbsp;&nbsp;</option>
					<option value="10">10&nbsp;&nbsp;</option>
					<option value="11">11&nbsp;&nbsp;</option>
					
					<option value="12">12&nbsp;&nbsp;</option>
					<option value="13">13&nbsp;&nbsp;</option>
					<option value="14">14&nbsp;&nbsp;</option>
					<option value="15">15&nbsp;&nbsp;</option>
					<option value="16">16&nbsp;&nbsp;</option>
					<option value="17">17&nbsp;&nbsp;</option>
					<option value="18">18&nbsp;&nbsp;</option>
					<option value="19">19&nbsp;&nbsp;</option>
					<option value="20">20&nbsp;&nbsp;</option>
					<option value="21">21&nbsp;&nbsp;</option>
					<option value="22">22&nbsp;&nbsp;</option>
					<option value="23">23&nbsp;&nbsp;</option>
					<option value="24">24&nbsp;&nbsp;</option>
					<option value="25">25&nbsp;&nbsp;</option>
					<option value="26">26&nbsp;&nbsp;</option>
					<option value="27">27&nbsp;&nbsp;</option>
					<option value="28">28&nbsp;&nbsp;</option>
					<option value="29">29&nbsp;&nbsp;</option>
					<option value="30">30&nbsp;&nbsp;</option>
					<option value="31">31&nbsp;&nbsp;</option>
			</select>
			<select class="span1" name="register_birth_year">
				<option value="">-Year</option>
					<option value="1988">1988&nbsp;&nbsp;</option>
					<option value="1987">1987&nbsp;&nbsp;</option>
			</select>
		</div>
	  </div>

			

		<h3>Your address</h3>
		<div class="control-group">
			<label class="control-label" for="inputFname">First name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputFname" placeholder="First Name">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputLname">Last name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputLname" placeholder="Last Name"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="company">Company</label>
			<div class="controls">
			  <input type="text" id="register_company" placeholder="company"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="adress">Address<sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_address" placeholder="Adress"/> <span>Street address, P.O. box, company name, c/o</span>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="adress2">Address (Line 2)<sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_address2" placeholder="Adress line 2"/> <span>Apartment, suite, unit, building, floor, etc.</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="city">City<sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_city" placeholder="city"/> 
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="state">State<sup>*</sup></label>
			<div class="controls">
			  <select type="text" id="register_state" >
				<option value="">-</option>
				<option value="1">Alabama</option><option value="2">Alaska</option><option value="3">Arizona</option><option value="4">Arkansas</option><option value="5">California</option><option value="6">Colorado</option><option value="7">Connecticut</option><option value="8">Delaware</option><option value="53">District of Columbia</option><option value="9">Florida</option><option value="10">Georgia</option><option value="11">Hawaii</option><option value="12">Idaho</option><option value="13">Illinois</option><option value="14">Indiana</option><option value="15">Iowa</option><option value="16">Kansas</option><option value="17">Kentucky</option><option value="18">Louisiana</option><option value="19">Maine</option><option value="20">Maryland</option><option value="21">Massachusetts</option><option value="22">Michigan</option><option value="23">Minnesota</option><option value="24">Mississippi</option><option value="25">Missouri</option><option value="26">Montana</option><option value="27">Nebraska</option><option value="28">Nevada</option><option value="29">New Hampshire</option><option value="30">New Jersey</option><option value="31">New Mexico</option><option value="32">New York</option><option value="33">North Carolina</option><option value="34">North Dakota</option><option value="35">Ohio</option><option value="36">Oklahoma</option><option value="37">Oregon</option><option value="38">Pennsylvania</option><option value="51">Puerto Rico</option><option value="39">Rhode Island</option><option value="40">South Carolina</option><option value="41">South Dakota</option><option value="42">Tennessee</option><option value="43">Texas</option><option value="52">US Virgin Islands</option><option value="44">Utah</option><option value="45">Vermont</option><option value="46">Virginia</option><option value="47">Washington</option><option value="48">West Virginia</option><option value="49">Wisconsin</option><option value="50">Wyoming</option></select>
			</div>
		</div>		
		<div class="control-group">
			<label class="control-label" for="postcode">Zip / Postal Code<sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="postcode" placeholder="Zip / Postal Code"/> 
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="country">Country<sup>*</sup></label>
			<div class="controls">
			  <select type="text" id="register_country" >
				<option value="">-</option>
				<option value="1">Country</option>
			</select>
			</div>
		</div>	
		<div class="control-group">
			<label class="control-label" for="aditionalInfo">Additional information</label>
			<div class="controls">
			  <textarea name="aditionalInfo" id="aditionalInfo" cols="26" rows="3">Additional information</textarea>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="phone">Home phone <sup>*</sup></label>
			<div class="controls">
			  <input type="text"  name="phone" id="register_phone" placeholder="phone"/> <span>You must register at least one phone number</span>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="mobile">Mobile Phone </label>
			<div class="controls">
			  <input type="text"  name="mobile" id="register_mobile" placeholder="Mobile Phone"/> 
			</div>
		</div>
		
	<p><sup>*</sup>Required field	</p>
	
	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
				<input id="register_btn" class="btn btn-large" type="button" value="Register" />
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
      
        $("#register_btn").click(function(){
        	  $.ajax({
             	  type: "POST",
             	  url: '<c:url value="/getData"/>',
             	 contentType: "application/json"
           		}).done(function(e){
           			alert(e.message);
           		});
             	  
        	 
        })
       
       $.ajax({
         	  type: "POST",
         	  url: '<c:url value="/register"/>',
         	  data: JSON.stringify({
            		"user_name":$("#register_inputUserName").val(),
            		"title":$("#register_title option:selected" ).text(),
            		"fname":$("#register_inputFname").val(),
    		     	 "lname":"lname",
    				 "email":"email",
    				"password":"password",
    				"day_of_birth":12,
    				 "year_of_birth":123,
    				 "month_of_birth":123,
    		 		"phone_number":12313,
    				"log_time":"log_time",
    				 "status": "status"
            }),
            contentType: "application/json"
         	}).done(function(e){
         			alert(e.message);
         	});
    });
    </script>
  </body>
</html>