<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
                 <a id="logoM" href="index"><img src="front/assets/img/logo.png" alt="Bootsshop"/></a>
					<a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  <li class=""><a href="<c:url value="/"/>">Home</a></li>
					  <li class=""><a href="special_offer">Specials Offer</a></li>
					  <li class=""><a href="normal">Delivery</a></li>
					  <li class="active"><a href="contact">Contact</a></li>
					</ul>
                    <form action="#" class="navbar-search pull-left">
                     <input id="srchFld" type="text" placeholder="I'm looking for ..." class="search-query span5"/>
                    </form>
                    
                    <ul class="nav pull-right">
                    <c:if test="${empty buyer}">
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
							<button type="button" id="login-btn" class="btn btn-block">Sign in</button>
						  </div>
						</form>					
						</div>
						
					</li>
					</ul></c:if>
							<c:if test="${!empty buyer.user_name}">
							<div id="Welcome User">
							welcome ${buyer.user_name} 
							<div id="signout"><button type="button" id="signout-btn" class="btn btn-block">Sign out</button></div>
							</div>
							</c:if>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
            
   <script src="<c:url value="front/assets/js/jquery.js"/>"></script>
   <script type="text/javascript">
   
   $("#signout-btn").click(function(){
	   $.ajax({
      	  type: "GET",
      	  url: '<c:url value="/buyer/signout"/>',
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
	         	  url: '<c:url value="/buyer/login"/>',
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
	
	</script>
        