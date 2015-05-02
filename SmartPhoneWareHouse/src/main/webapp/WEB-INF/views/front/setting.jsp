<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Seting</title>
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

	<div class="tab-pane" id="listView">
	<form class="form-horizontal" >
		<h3>Your personal information
		
		</h3>
		<div class="control-group">
		<label class="control-label" for="dob">Title <sup>*</sup></label>
		<div class="controls">
		<select class="span1" name="days" id="register_title">
		
			<option value="">-</option>
			<c:choose>
			<c:when test="${buyer.title=='Mr'}">
			<option value="1" selected>Mr.</option>
			 </c:when>
			 <c:otherwise>
			 <option value="1" >Mr.</option>
			  </c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${buyer.title=='Mrs'}">
			<option value="2" selected>Mrs</option>
			 </c:when>
			 <c:otherwise>
			 <option value="2" >Mrs</option>
			  </c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${buyer.title=='Miss'}">
			<option value="3" selected>Miss</option>
			 </c:when>
			 <c:otherwise>
			 <option value="3" >Miss</option>
			  </c:otherwise>
		</c:choose>
			
		</select>
		</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputFname">User name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputUserName" value="${ buyer.user_name}">
			</div>
		 </div>
		<div class="control-group">
			<label class="control-label" for="inputFname">First name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputFname" value="${ buyer.fname}">
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLname">Last name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="register_inputLname" value="${ buyer.lname}">
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputEmail">Email <sup>*</sup></label>
		<div class="controls">
		  <input type="text" id="register_inputEmail" value="${ buyer.email}">
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputPassword">Password <sup>*</sup></label>
		<div class="controls">
		  <input type="password" id="register_inputPassword" value="${ buyer.password}">
		</div>
	  </div>	  
		<div class="control-group">
		<label class="control-label" for="dob">Date of Birth <sup>*</sup></label>
		<div class="controls">
		
		  <input type="text" id="register_birthDate" value=" ${ buyer.birth}">
			
		</div>
	  </div>
		<div class="control-group">
			<label class="control-label" for="phone">Phone <sup>*</sup></label>
			<div class="controls">
			  <input type="text"  name="phone" id="register_phone" value="${ buyer.phone_number}"/> <span>You must register at least one phone number</span>
			</div>
		</div>
		
	
		
			
	<p><sup>*</sup>Required field	</p>
	
	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
				<input id="register_btn" class="btn btn-large" type="button" value="Comfirm" />
			</div>
		</div>		
	</form>
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
       $("#register_btn").click(function(){
    	   register();
       })
    })
    
    
     var check = function(){
        	var flag =true;
        	var title=$("#register_title option:selected" ).text();
       		var fname=$("#register_inputFname").val();
		    var lname=$("#register_inputLname").val();
			var	email=$("#register_inputEmail").val();
			var	password=$("#register_inputPassword").val();
			var	birth=$("#register_birthDate").val();
		 	var phone_number=$("#register_phone").val();
		 	
      		
      		
      		if(title==="-"){
      			$.notify("Title  is required", "warn");
      			flag =false;
      		}
      		if(fname==""){
      			$.notify("First Name is required", "warn");
      			flag =false;
      		}
		 	
      		if(lname==""){
      			$.notify("Last Name is required", "warn");
      			flag =false;
      		}
		 	if (!isInteger(phone_number)){
		 		$.notify("Wrong Phone Number", "warn");
      			flag =false;
		 	}
      		if(email==""){
      			$.notify("Email is required", "warn");
      			flag =false;
      		}
		 	
      		if(password==""){
      			$.notify("Password is required", "warn");
      			flag =false;
      		}
		 	
   	
		 	return flag;
        }
        
        function isInteger(x) {
            return x % 1 === 0;
        }

        
        function register(){
        	
         	 $.ajax({
           	  type: "POST",
           	  url: '<c:url value="/eidtBuyer"/>',
           	  data: JSON.stringify({
           		  	"id":${buyer.id},
              		"user_name":$("#register_inputUserName").val(),
              		"title":$("#register_title option:selected" ).text(),
              		"fname":$("#register_inputFname").val(),
      		     	 "lname":$("#register_inputLname").val(),
      				 "email":$("#register_inputEmail").val(),
      				"password":$("#register_inputPassword").val(),
      				"birth":$("#register_birthDate").val(),
      		 		"phone_number":$("#register_phone").val(),
      				"log_time":new Date().toString(),
      				 "status": "status"
              }),
              contentType: "application/json"
           	}).done(function(e){
           		 obj2= JSON.parse(e);
     				if(obj2.statusCode!="200"){
     					$.notify(obj2.message, "error");
     				}else{
     					$.notify(obj2.message, "success");
     					setTimeout(function(){ location.reload(); }, 1000);
     				}
           	});
        	
        }
    </script>
  </body>
</html>