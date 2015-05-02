<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
                 <a id="logoM" href="/"><img src="<c:url value="/front/assets/img/logo.png"/>" alt="Bootsshop"/></a>
					<a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  <li class=""><a href="<c:url value="/"/>">Home</a></li>
					  <li class=""><a href="<c:url value="/special_offer"/>">Specials Offer</a></li>
					  <li class=""><a href="<c:url value="/normal"/>">Delivery</a></li>
					  <li class=""><a href="<c:url value="/contact"/>">Contact</a></li>
					</ul>
                    <form action="search" id="search" class="navbar-search pull-left"  method="GET">
                     <input id="srchFld" type="text" placeholder="I'm looking for ..." class="search-query span5"/>
                    </form>
                  
                    
                    <ul class="nav pull-right">
                    <c:if test="${empty seller}">
                    <li>
                    <a  href="<c:url value="/seller/register"/>"> Seller Sign Up </a>
                    </li>
                    
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
							<button type="button" id="login-btn" class="btn btn-block">Seller Sign in</button>
						  </div>
						</form>					
						</div>
						
					</li>
					</ul></c:if>
							<c:if test="${!empty seller.user_name}">
								
							<div id="Welcome User">
							 <Strong><a href="<c:url value="/adminProducts"/>">Welcome  Seller  :${seller.user_name}</a></Strong>&nbsp;
							<a id="signout-btn" >[Sign out]</a>
							</div>
							</c:if>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
    
    <div id="mainBody" class="container">
<header id="header">
<div class="row">
<div class="span12">
	<a href="index"><img src="<c:url value="/front/assets/img/logo.png" />" alt="Bootsshop"/></a>


</div>
</div>
<div class="clr"></div>
 <form action="search" id="search2" class="navbar-search pull-left"  method="GET"/>
</header>
        
   <script src="<c:url value="/front/assets/js/jquery.js"/>"></script>
   	<script src="<c:url value="/front/js/notify.min.js"/>"></script>
   	
   <script type="text/javascript">
   
  

   $("#signout-btn").click(function(){
	   $.ajax({
      	  type: "GET",
      	  url: '<c:url value="/seller/signout"/>',
         contentType: "application/json"
      	}).done(function(e){
      		obj = JSON.parse(e);
				if(obj.statusCode!="200"){
					$.notify(obj.message, "error");
				}else{
					$.notify(obj.message, "success");
					setTimeout(function(){ location.reload(); }, 1000);
					
					
				}
      	});
	   
   })
   
        $("#login-btn").click(function(){
		var n =2;
		if($("#inputEmail").val().length===0){
			$.notify("Plese enter User Name", "warn");
			n--;
		}
		if($("#inputPassword").val().length===0){
			$.notify("Plese enter password", "warn");
			n--;
		}
		if(n==2){
			
			  $.ajax({
	         	  type: "POST",
	         	  url: '<c:url value="/seller/login"/>',
	         	  data: JSON.stringify({
	            		"user_name":$("#inputEmail").val(),
	    				"password":$("#inputPassword").val()
	            }),
	            contentType: "application/json"
	         	}).done(function(e){
	         		obj = JSON.parse(e);
      				if(obj.statusCode!="200"){
      					$.notify(obj.message, "error");
      				}else{
      					$.notify(obj.message, "success");
      					setTimeout(function(){ location.reload(); }, 1000);
      				}
	         	});
		}
		
		
		
	})
	
	
	
	 $(function() {
	   $("#search").submit(function(e){
		   e.preventDefault();
		   var key=$("#srchFld").val();
		   if(key!=""){
			   $('#search2').attr('action', '/smartphone/search/'+key).submit();
		   }else{
			   $.notify("Plese enter search keywords", "warn");
		   }
		    
		    
		   
	   })
   })
   
	</script>
        