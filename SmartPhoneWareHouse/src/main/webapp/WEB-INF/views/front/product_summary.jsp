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
		<li class="active"> SHOPPING CART</li>
    </ul>
	<h3>  SHOPPING CART <a href="products" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Continue Shopping </a></h3>	
	<hr class="soft"/>
		
			
	<table class="table table-bordered" id="shoppingCartTable">
              <thead>
                <tr>
                  <th>Product</th>
                  <th>Description</th>
                  <th>Quantity/Update</th>
				  <th>Price</th>
				</tr>
              </thead>
              <tbody>
                <tr>
                  <td> <img width="60" src="front/assets/products/4.jpg" alt=""/></td>
                  <td>MASSA AST<br/>Color : black, Material : metal</td>
				  <td>
					<div class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text">		</div>
				  </td>
                  <td>$120.00</td>
          
                </tr>
				
				
                <tr>
                  <td colspan="3" align="right">Total Price:	</td>
                  <td> $228.00</td>
                </tr>
				 <tr>
                  <td colspan="3" align="right">Total Discount:	</td>
                  <td> $50.00</td>
                </tr>
                 <tr>
                  <td colspan="3" align="right">Total Tax:	</td>
                  <td> $31.00</td>
                </tr>
				 <tr>
                  <td colspan="3" align="right"><strong>TOTAL ($228 - $50 + $31) =</strong>	</td>
                  <td class="label label-important"> <strong> $155.00 </strong></td>
                </tr>
				</tbody>
            </table>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-inline">
				<label style="min-width:159px"><strong> VOUCHERS CODE:</strong> </label> 
				<input type="text" class="input-medium" placeholder="CODE">
				<button type="submit" class="btn"> ADD</button>
				</form>
				</td>
                </tr>
				
			</tbody>
			</table>
			
				<table class="table table-bordered">
			<tbody>
                <tr><th>
			<hr class="soft"/>
		<div >	  
		 <a href="newbankinfo" class="btn btn-media"><i class=" icon-credit"></i> Add New Payment</a>
		</div>
		
			<div class="">	  
			<div id="" class="">
	
			<div class="" id="bankInfo">
			</div>
			</div>
			</div></th></tr></tbody></table>
			
				<table class="table table-bordered">
			<tbody>
                <tr><th>
			<hr class="soft"/>
		<div>	  
		 <a href="buyer/newAddress" class="btn btn-media"><i class=" icon-credit"></i> Add New Address</a>
		</div>
		<div class="">	  
			<div id="productView" class="">
	
			<div class="" id="addresseslist">
				</div></div>
				</div>
			</th></tr></tbody></table>
			<!-- 
			<table class="table table-bordered">
			<tbody>
                <tr><th colspan="2">ESTIMATE YOUR SHIPPING </th></tr>
                 <tr> 
				 <td>
					<form class="form-horizontal">
					  <div class="control-group">
						<label class="span2 control-label" for="inputCountry">Country</label>
						<div class="controls">
						  <input type="text" id="inputCountry" placeholder="Country">
						</div>
					  </div>
					  <div class="control-group">
						<label class="span2 control-label" for="inputPost">Post Code/ Zipcode</label>
						<div class="controls">
						  <input type="text" id="inputPost" placeholder="Postcode">
						</div>
					  </div>
					  <div class="control-group">
						<div class="controls">
						  <button type="submit" class="btn">ESTIMATE</button>
						</div>
					  </div>
					</form>				  
				  </td>
				  </tr>
              </tbody>
            </table>	
             -->	
	<a href="products" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
	<a class="btn btn-large pull-right" id="check_out">Check Out </a>
	
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
        
        init();
        address();
		bank();
        $("#check_out").click(function(){
        	checkout();
        })
         function address(){
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
   				if(i==0){
   					html+="<input type=\"radio\" id='address'  name=\"address\" value="+o.id+" checked/>  &nbsp;" 
   				}else{
   					html+="<input type=\"radio\" id='address'  name=\"address\" value="+o.id+" />  &nbsp;" 	
   				}
   				html+=o.user_name
   				+"<Br> "+o.address+""
   				+"<Br> "+o.city+" "
   				+"<Br> Mobile Phone: "+o.mobilePhone+" "
   				+"<Br> Home Phone: "+o.mobilePhone+" "
   				+""
   				+"<div> "
   				+" <a href=\"javascript:onclick=deleteAddress("+o.id+")\" class=\"btn btn-media\"><i class=\" icon-credit\"></i>Remove this Address</a>"
   				+" </div>";
   				
    					}
    					$("#addresseslist").html(html);
    				}
           		
           		
           	})
           	}
           	
        function bank(){
       	 $.ajax({
           	  type: "GET",
           	  url:"<c:url value="/getBankInfo/"/>"+${buyer.id},
   	           contentType: "application/json"
           	}).done(function(e){
           		object = JSON.parse(e);
    				if(object.statusCode!="200"){
    					$.notify(obj.message, "error");
    				}else{
    					var html ="";
    					$("#bankInfo").html("");
    					for(var i = 0; i < object.obj.length;i++){
    	 					var o= object.obj[i];
   			
   				html+="<hr class=\"soft\"/>"
   				+"<div>"
   				+"<p>";
   				if(i==0){
   					html+="<input type=\"radio\" id='bankcard' name=\"bankcard\" value="+o.id+" checked>  &nbsp;  FemaleBank Card Number : "+o.cardNumber
   		   			
   				}else{
   					html+="<input type=\"radio\" id='bankcard' name=\"bankcard\" value="+o.id+" >  &nbsp;  FemaleBank Card Number : "+o.cardNumber
   	   		   		
   				}
   				html+="<Br> Name On Card : "+o.nameOnCard
   				+"<Br> Expiration Date : "+o.expirationDate
   				+"<Br> Expiration Year : "+o.expirationYear
   				+"</p>"	+"</div>";
   				
    					}
    					$("#bankInfo").html(html);
    				}
           		
           		
           	})
       }
        function checkout(){
        	
        	
        	$.notify("Order is processing.", "success");
        	
        	transShoppingCartToTranscation()
        	
        }
        
        
        function computeTotilePrice(){

        	var count =0
        	var price=0
        	var totalPrice=0;
        	$('.appendedInputButtons').each(function(i, obj) {
        	    console.log($(this).val())
        	    if(i%2==1){
        	      count =$(this).val();
        	      
        	      totalPrice+=count*price;
        	      price=0
        	    }else{
        	      price =$(this).val();
        	      
        	      totalPrice+=count*price;
        	      count =0
        	    }
        	    
        	      
        	});
        	return totalPrice;
        }
        
        function transShoppingCartToTranscation(){
        	var count =[]
        	$('.appendedInputButtons').each(function(i, obj) {
        	    console.log($(this).val())
        	    if(i%2==1){
        	      count.push($(this).val());
        	      
        	    }
        	    }
        	)
			var phones=[];
			$(".pid").each(function(i, obj){
				phones.push({
					
					"count":count[i],
					"id":parseInt($(this).val())
					})
			})
        	
              	 $.ajax({
             	  type: "POST",
             	  url: '<c:url value="/addTranscation/"/>',
             	 data: JSON.stringify({
               		"bankInfo":{
               			"id": $( "#bankcard:checked" ).val()
               			
               		},
               		"address":{
               			"id": $( "#address:checked" ).val()
               		},
               		"buyer":{
               			"id":${buyer.id}
               		},
               		//"Status":"Processing",
               		"packageTrackingCode":-1,
               		"totalPrice":computeTotilePrice(),
               		"phones":phones,
               		
                  }),
                contentType: "application/json"
             	}).done(function(e){
             		$.notify("Clear ShoppingCart Completed", "success");
             	})
           }
        
        function clearShoppingCartByBuyerId(){
       	 $.ajax({
          	  type: "GET",
          	  url: '<c:url value="/clearShoppingCart/"/>'+id,
             contentType: "application/json"
          	}).done(function(e){
          		$.notify("Clear ShoppingCart Completed", "success");
          	})
        }
        
        
    	function init(){
    		
        	 $.ajax({
            	  type: "GET",
            	  url: '<c:url value="/getShoppingCart/"/>'+${buyer.id},
               contentType: "application/json"
            	}).done(function(e){
            		obj = JSON.parse(e);
      				if(obj.statusCode!="200"){
      					$.notify(obj.message, "error");
      				}else{
      					$.notify(obj.message, "success");
      					

      	           		object = JSON.parse(e);
      	    				if(object.statusCode!="200"){
      	    					$.notify(obj.message, "error");
      	    				}else{
      	    					var html ="";
      	    					html+="<table class=\"table table-bordered\" id=\"shoppingCartTable\">"
    	 				              +"<thead>"
    	 				           +" <tr>"
    	 				        +"  <th>Product</th>"
    	 				     +"      <th>Description</th>"
    	 				  +"      <th>Quantity/Update</th>"
    	 				               +"	  <th>Price</th>"
    	 				            +"	</tr>"
    	 				         +"    </thead>"
    	 				      +"    <tbody>";
      	    					for(var i = 0; i < object.obj.phones.length;i++){
      	    	 					var o= object.obj.phones[i];
      	    	 					
      	    	 				
      	    	 					html+="       <tr>"
      	    	 				 +"        <td> "+o.name+o.brand+"</td>"
      	    	 				 +"  <td>MASSA AST<br/>"+o.des+"</td>"
      	    	 				 +"	  <td>"
      	    	 				 +"		<div class=\"input-append\"><input class=\"appendedInputButtons span1\" style=\"max-width:34px\" value=\""+o.count+"\"  size=\"16\" type=\"text\">	</div>"
      	    	 				 +"	  </td>"
      	    	 				 +"         <td ><input class=\"appendedInputButtons\" value="+o.price+" type='hidden'><input class=\"pid\" value="+o.id+" type='hidden'>$"+o.price+"</td>"
      	    	 				 +"         <td><a class=\"btn btn-media\"  href='javascript:onclick=removeFromShoppingCart("+o.id+")' >Remove</a></td>"
      	    	 				 +"       </tr>";
      	    	 				
      	   				
      	    				}       	    	 		
    	 				     html+="			</tbody>"
  	    	 				 +"          </table>";
      	    					
      	    					$("#shoppingCartTable").html(html)
      	           		
      	           		
      	           	}
      				}
            	});
        }
    });
    function removeFromShoppingCart(id){

   	 $.ajax({
       	  type: "GET",
       	  url: '<c:url value="/removeFromShoppingCart/"/>'+id,
          contentType: "application/json"
       	}).done(function(e){
       		setTimeout(function(){ window.location.reload(); }, 1000);
       	})
    }
    
    </script>
  </body>
</html>