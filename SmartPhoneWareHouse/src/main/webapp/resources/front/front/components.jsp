<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
    <link href="front//assets/css/bootstrap.css" rel="stylesheet"/>
    <link href="front//assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="front//assets/css/docs.css" rel="stylesheet"/>
	 
      <link href="<c:url value="front/assets/style.css"/>" rel="stylesheet"/>
	<link href="front//assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>
	
	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="front//assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="front//assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="front//assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="front//assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="front//assets/ico/apple-touch-icon-57-precomposed.png">
	
	
  </head>
<body>
  <!-- Navbar
    ================================================== -->
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
                 <a id="logoM" href="index.html"><img src="front//assets/img/logo.png" alt="Bootsshop"/></a>
					<a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  <li class=""><a href="index.html">Home	</a></li>
					  <li class=""><a href="special_offer.html">Specials Offer</a></li>
					  <li class=""><a href="normal.html">Delivery</a></li>
					  <li class="active"><a href="contact.html">Contact</a></li>
					</ul>
                    <form action="#" class="navbar-search pull-left">
                     <input id="srchFld" type="text" placeholder="I'm looking for ..." class="search-query span5"/>
                    </form>
                    <ul class="nav pull-right">
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
							<button type="submit" class="btn btn-block">Sign in</button>
						  </div>
						</form>					
						</div>
					</li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container">
<header id="header">
<div class="row">
<div class="span12">
	<a href="index.html"><img src="front//assets/img/logo.png" alt="Bootsshop"/></a>

<div class="pull-right"> <br/>
	<a href="product_summary.html"> <span class="btn btn-mini btn-warning"> <i class="icon-shopping-cart icon-white"></i> [ 3 ] </span> </a>
	<a href="product_summary.html"><span class="btn btn-mini active">$155.00</span></a>
	<span class="btn btn-mini">&pound;</span>
	<span class="btn btn-mini">&euro;</span> 
</div>
</div>
</div>
<div class="clr"></div>
</header>
<!-- ==================================================Header End====================================================================== -->

<hr class="soften">
<div>
	<h1>Components used in boot'sshop are:</h1>
</div>
<hr class="soften"/>	
<header>
	<div class="container">
	<div class="page-header">
	<h3>A. Boots cms Navigation</h3>
	</div>
	<!-- Navbar
    ================================================== -->
<section id="navbar">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#">Project name</a>
        <div class="nav-collapse">
          <ul class="nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="nav-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-search pull-left" action="">
            <input type="text" class="search-query span2" placeholder="Search">
          </form>
          <ul class="nav pull-right">
            <li><a href="#">Link</a></li>
            <li class="divider-vertical"></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div>
    </div><!-- /navbar-inner -->
  </div><!-- /navbar -->
</section>
    </div>	 
	</header>

	
	
	
<!-- Heading
================================================== -->
<div class="page-header">
<h3>B.  Headings </h3>
</div>
<div class="row-fluid">
<div class="span4">
	<h6>h6. Heading 6</h6>
	<h5>h5. Heading 5</h5>
	<h4>h4. Heading 4</h4>
	<h3>h3. Heading 3</h3>
	<h2>h2. Heading 2</h2>
	<h1>h1. Heading 1</h1>
</div>
<div class="span4">
	<h6><a href="#">h6. Heading 6</a></h6>
	<h5><a href="#">h5. Heading 5</a></h5>
	<h4><a href="#">h4. Heading 4</a></h4>
	<h3><a href="#">h3. Heading 3</a></h3>
	<h2><a href="#">h2. Heading 2</a></h2>
	<h1><a href="#">h1. Heading 1</a></h1>
</div>
<div class="span4">
	<h6><a href="#">h6. Heading 6 <small>Small text</small></a></h6>
	<h5><a href="#">h5. Heading 5 <small>Small text</small> </a></h5>
	<h4><a href="#">h4. Heading 4 <small>Small text</small> </a></h4>
	<h3><a href="#">h3. Heading 3 <small>Small text</small> </a></h3>
	<h2><a href="#">h2. Heading 2 <small>Small text</small></a></h2>
	<h1><a href="#">h1. Heading 1 <small>Small text</small></a></h1>
</div>
</div>
<!-- Heading
================================================== -->
<div class="page-header">
<h3>C.  Grids </h3>
</div>
<div id="grids">
<ul class="nav nav-tabs" id="myTab">
  <li><a href="#one" data-toggle="tab">1 Column page</a></li>
  <li class="active"><a href="#two" data-toggle="tab">2 Column page</a></li>
  <li><a data-toggle="tab" href="#three">3 Comumn page</a></li>
  <li><a href="#four" data-toggle="tab">4 Comumn page</a></li>
</ul>
 
<div class="tab-content">
  <div class="tab-pane" id="one">
  <div class="row-fluid">
	 <div class="span12">
	  <h4>Lorem Ipsum is simply dummy text ... </h4>
	  <p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
	  </p>
	  </div>
  </div>
  </div>
  <div class="tab-pane active" id="two">
  <div class="row-fluid">
	  <div class="span6">
	  <h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
	  <div class="span6">
	  <h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
  </div>
  </div>
  <div class="tab-pane" id="three">
  <div class="row-fluid">
	<div class="span4">
	  <h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
	  <div class="span4">
		<h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
	  <div class="span4">
		<h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
	 </div>
  </div>
  <div class="tab-pane" id="four">
  <div class="row-fluid">
	<div class="span3">
		<h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	 </div>
	  <div class="span3">
		<h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
	  <div class="span3">
		<h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
	  <div class="span3">
		<h4>Lorem Ipsum is simply dummy text ... </h4>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
	  </div>
  
  </div>
</div>
</div>
</div>

<!-- Button Groups
================================================== -->
  <div class="page-header">
    <h3>D. Button <small>button groups and buttons</small></h3>
  </div>
  <div class="row-fluid">
  <div class="span6">
	<section id="buttonGroups">
      <h4>Button groups</h4><br/>
		<div class="btn-group" style="margin: 9px 0;">
          <button class="btn">Left</button>
          <button class="btn">Middle</button>
          <button class="btn">Right</button>
        </div>
      <h4>Toolbar example</h4>
     
      <div class="btn-toolbar">
        <div class="btn-group">
          <button class="btn">1</button>
          <button class="btn">2</button>
          <button class="btn">3</button>
          <button class="btn">4</button>
        </div>
        <div class="btn-group">
          <button class="btn">5</button>
          <button class="btn">6</button>
          <button class="btn">7</button>
        </div>
        <div class="btn-group">
          <button class="btn">8</button>
        </div>
      </div>
	</section>
      </div>

<!-- Split button dropdowns
================================================== -->
<div class="span6">
<section id="buttonDropdowns">
  <h4>Button dropdowns</h4>
      <div class="btn-toolbar" style="margin-top: 18px;">
        <div class="btn-group">
          <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
		
        <div class="btn-group">
          <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">Danger <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->

        <div class="btn-group">
          <button class="btn btn-warning dropdown-toggle" data-toggle="dropdown">Warning <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-success dropdown-toggle" data-toggle="dropdown">Success <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-info dropdown-toggle" data-toggle="dropdown">Info <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-inverse dropdown-toggle" data-toggle="dropdown">Inverse <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
		<div class="btn-toolbar" style="margin-top: 18px;">
        <div class="btn-group">
          <button class="btn btn-large dropdown-toggle" data-toggle="dropdown">Large button <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-small dropdown-toggle" data-toggle="dropdown">Small button <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Mini button <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
      </div>
	  <div class="btn-toolbar" style="margin-top: 18px;">
        <div class="btn-group">
          <button class="btn">Action</button>
          <button class="btn dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-primary">Action</button>
          <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-danger">Danger</button>
          <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div>
		
        <div class="btn-group">
          <button class="btn btn-warning">Warning</button>
          <button class="btn btn-warning dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-success">Success</button>
          <button class="btn btn-success dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
        <div class="btn-group">
          <button class="btn btn-info">Info</button>
          <button class="btn btn-info dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div><!-- /btn-group -->
      </div>
      </div>
</section>
      </div>
<!-- Using Icon
================================================== -->
<section id="navs">
  <div class="page-header">
    <h3>E. Using Icon</h3>
  </div>
  <div class="row-fluid">
  <div class="span6">
  <div class="well" style="padding: 8px 0;">
        <ul class="nav nav-list">
          <li class="nav-header">List header</li>
          <li class="active"><a href="#"><i class="icon-white icon-home"></i> Home</a></li>
          <li><a href="#"><i class="icon-book"></i> Library</a></li>
          <li><a href="#"><i class="icon-pencil"></i> Applications</a></li>
          <li class="nav-header">Another list header</li>
          <li><a href="#"><i class="icon-user"></i> Profile</a></li>
          <li><a href="#"><i class="icon-cog"></i> Settings</a></li>
          <li class="divider"></li>
          <li><a href="#"><i class="icon-flag"></i> Help</a></li>
        </ul>
      </div>
      </div>
      <div class="span6">
	  <h4>Stacked tabs</h4><br/>
	  <ul class="nav nav-tabs nav-stacked">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Item 1</a></li>
        <li><a href="#">Item 2</a></li>
        <li><a href="#">Messages</a></li>
      </ul>
	 </div>
	 </div>
 

<!-- Breadcrumbs
================================================== -->
<section id="breadcrumbs">
  <div class="page-header">
    <h3>F. Breadcrumbs </h1>
  </div>
  <ul class="breadcrumb">
        <li class="active">Home</li>
      </ul>
      <ul class="breadcrumb">
        <li><a href="#">Home</a> <span class="divider">/</span></li>
        <li class="active">Library</li>
      </ul>
      <ul class="breadcrumb">
        <li><a href="#">Home</a> <span class="divider">/</span></li>
        <li><a href="#">Library</a> <span class="divider">/</span></li>
        <li class="active">Data</li>
      </ul>
</section>

<!-- Pagination
================================================== -->
<section id="pagination">
  <div class="page-header">
    <h3>G. Pagination </h3>
  </div>
    <div class="row-fluid">
    <div class="span3">
      <div class="pagination">
        <ul>
          <li class="disabled"><a href="#">&laquo;</a></li>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">&raquo;</a></li>
        </ul>
      </div>
      </div>
      <div class="span3">
      <div class="pagination">
        <ul>
          <li><a href="#">&laquo;</a></li>
          <li><a href="#">10</a></li>
          <li class="active"><a href="#">11</a></li>
          <li><a href="#">12</a></li>
          <li><a href="#">&raquo;</a></li>
        </ul>
      </div>
      </div>
	   <div class="span3">
      <div class="pagination">
        <ul>
          <li><a href="#">&laquo;</a></li>
          <li class="active"><a href="#">10</a></li>
          <li class="disabled"><a href="#">...</a></li>
          <li><a href="#">20</a></li>
          <li><a href="#">&raquo;</a></li>
        </ul>
      </div>
      </div>
	   <div class="span3">
      <div class="pagination pagination-centered">
        <ul>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
        </ul>
      </div>
      </div>
      </div>
</section>
<!-- Labels
================================================== -->
<section id="labels">
  <div class="page-header">
    <h3>H. Labels </h3>
  </div>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Labels</th>
        <th>Markup</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <span class="label">Default</span>
        </td>
        <td>
          <code>&lt;span class="label"&gt;Default&lt;/span&gt;</code>
        </td>
      </tr>
      <tr>
        <td>
          <span class="label label-success">Success</span>
        </td>
        <td>
          <code>&lt;span class="label label-success"&gt;Success&lt;/span&gt;</code>
        </td>
      </tr>
      <tr>
        <td>
          <span class="label label-warning">Warning</span>
        </td>
        <td>
          <code>&lt;span class="label label-warning"&gt;Warning&lt;/span&gt;</code>
        </td>
      </tr>
      <tr>
        <td>
          <span class="label label-important">Important</span>
        </td>
        <td>
          <code>&lt;span class="label label-important"&gt;Important&lt;/span&gt;</code>
        </td>
      </tr>
      <tr>
        <td>
          <span class="label label-info">Info</span>
        </td>
        <td>
          <code>&lt;span class="label label-info"&gt;Info&lt;/span&gt;</code>
        </td>
      </tr>
      <tr>
        <td>
          <span class="label label-inverse">Inverse</span>
        </td>
        <td>
          <code>&lt;span class="label label-inverse"&gt;Inverse&lt;/span&gt;</code>
        </td>
      </tr>
    </tbody>
  </table>
</section>



<!-- Badges
================================================== -->
<section id="badges">
  <div class="page-header">
    <h3>I. Badges </h1>
  </div>
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Name</th>
            <th>Example</th>
            <th>Markup</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              Default
            </td>
            <td>
              <span class="badge">1</span>
            </td>
            <td>
              <code>&lt;span class="badge"&gt;1&lt;/span&gt;</code>
            </td>
          </tr>
          <tr>
            <td>
              Success
            </td>
            <td>
              <span class="badge badge-success">2</span>
            </td>
            <td>
              <code>&lt;span class="badge badge-success"&gt;2&lt;/span&gt;</code>
            </td>
          </tr>
          <tr>
            <td>
              Warning
            </td>
            <td>
              <span class="badge badge-warning">4</span>
            </td>
            <td>
              <code>&lt;span class="badge badge-warning"&gt;4&lt;/span&gt;</code>
            </td>
          </tr>
          <tr>
            <td>
              Important
            </td>
            <td>
              <span class="badge badge-important">6</span>
            </td>
            <td>
              <code>&lt;span class="badge badge-important"&gt;6&lt;/span&gt;</code>
            </td>
          </tr>
          <tr>
            <td>
              Info
            </td>
            <td>
              <span class="badge badge-info">8</span>
            </td>
            <td>
              <code>&lt;span class="badge badge-info"&gt;8&lt;/span&gt;</code>
            </td>
          </tr>
          <tr>
            <td>
              Inverse
            </td>
            <td>
              <span class="badge badge-inverse">10</span>
            </td>
            <td>
              <code>&lt;span class="badge badge-inverse"&gt;10&lt;/span&gt;</code>
            </td>
          </tr>
        </tbody>
      </table>
</section>



<!-- Typographic components
================================================== -->
<section id="typography">
  <div class="page-header">
    <h3>J. Typographic components </h3>
  </div>

      <div class="hero-unit">
        <h1>Hello, world!</h1>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <p><a class="btn btn-primary btn-large">Learn more</a></p>
      </div>
</section>



<!-- Thumbnails
================================================== -->
<section id="thumbnails">
  <div class="page-header">
    <h3>K. Thumbnails </h1>
  </div>

  <div class="row-fluid">
    <div class="span6">
      <ul class="thumbnails">
        <li class="span3">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
          </a>
        </li>
        <li class="span3">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
          </a>
        </li>
        <li class="span3">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
          </a>
        </li>
        <li class="span3">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
          </a>
        </li>
      </ul>
	  <br/>
	  <ul class="thumbnails">
        <li class="span4">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/360x268" alt="">
          </a>
        </li>
        <li class="span2">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/160x120" alt="">
          </a>
        </li>
        <li class="span2">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/160x120" alt="">
          </a>
        </li>
        <li class="span2">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/160x120" alt="">
          </a>
        </li>
        <li class="span2">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/160x120" alt="">
          </a>
        </li>
        <li class="span2">
          <a href="#" class="thumbnail">
            <img src="http://placehold.it/160x120" alt="">
          </a>
        </li>
      </ul>
    </div>
    <div class="span6">
       <ul class="thumbnails">
        <li class="span6">
          <div class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
            <div class="caption">
              <h5>Thumbnail label</h5>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a href="#" class="btn btn-primary">Action</a> <a href="#" class="btn">Action</a></p>
            </div>
          </div>
        </li>
        <li class="span6">
          <div class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
            <div class="caption">
              <h5>Thumbnail label</h5>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a href="#" class="btn btn-primary">Action</a> <a href="#" class="btn">Action</a></p>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>

</section>



<!-- Alerts
================================================== -->
<section id="alerts">
  <div class="page-header">
    <h3>L. Alerts </h3>
  </div>

<div class="row-fluid">
    <div class="span4">
      <h4>Error or danger</h4>
      <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Oh snap!</strong> Change a few things up and try submitting again.
      </div>
<pre class="prettyprint linenums">
&lt;div class="alert alert-error"&gt;
  ...
&lt;/div&gt;
</pre>
    </div>
    <div class="span4">
      <h4>Success</h4>
      <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Well done!</strong> You successfully read this important alert message.
      </div>
<pre class="prettyprint linenums">
&lt;div class="alert alert-success"&gt;
  ...
&lt;/div&gt;
</pre>
    </div>
    <div class="span4">
      <h4>Information</h4>
      <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
      </div>
<pre class="prettyprint linenums">
&lt;div class="alert alert-info"&gt;
  ...
&lt;/div&gt;
</pre>
    </div>
  </div>

</section>



<!-- Progress bars
================================================== -->
<section id="progress">
  <div class="page-header">
    <h3>M. Progress bars </h1>
  </div>
	<div class="row-fluid">
	<div class="span4">
      <h4>Basic</h4><br/>
      <div class="progress">
        <div class="bar" style="width: 60%;"></div>
      </div>
<pre class="prettyprint linenums">
&lt;div class="progress"&gt;
	&lt;div class="bar"
	style="width: 60%;"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
    </div>
    <div class="span4">
      <h4>Striped (no-IE)</h4><br/>
      <div class="progress progress-striped">
        <div class="bar" style="width: 20%;"></div>
      </div>
		<pre class="prettyprint linenums">
&lt;div class="progress progress-striped"&gt;
	&lt;div class="bar"
	style="width: 20%;"&gt;&lt;/div&gt;
&lt;/div&gt;
		</pre>
    </div>
    <div class="span4">
      <h4>Animated (no IE)</h4><br/>
      <div class="progress progress-striped active">
        <div class="bar" style="width: 45%"></div>
      </div>
<pre class="prettyprint linenums">
&lt;div class="progress progress-striped
     active"&gt;
  &lt;div class="bar"
       style="width: 40%;"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
    </div>
  </div>
  <div class="row-fluid">
    <div class="span6">
      <div class="progress progress-info" style="margin-bottom: 9px;">
        <div class="bar" style="width: 20%"></div>
      </div>
      <div class="progress progress-success" style="margin-bottom: 9px;">
        <div class="bar" style="width: 40%"></div>
      </div>
      <div class="progress progress-warning" style="margin-bottom: 9px;">
        <div class="bar" style="width: 60%"></div>
      </div>
      <div class="progress progress-danger" style="margin-bottom: 9px;">
        <div class="bar" style="width: 80%"></div>
      </div>
    </div>
     <div class="span6">
      <div class="progress progress-info progress-striped" style="margin-bottom: 9px;">
        <div class="bar" style="width: 20%"></div>
      </div>
      <div class="progress progress-success progress-striped" style="margin-bottom: 9px;">
        <div class="bar" style="width: 40%"></div>
      </div>
      <div class="progress progress-warning progress-striped" style="margin-bottom: 9px;">
        <div class="bar" style="width: 60%"></div>
      </div>
      <div class="progress progress-danger progress-striped" style="margin-bottom: 9px;">
        <div class="bar" style="width: 80%"></div>
      </div>
    </div>
    </div>

</section>


<!-- Miscellaneous
================================================== -->
<section id="form">
  <div class="page-header">
    <h3>N. Form </h1>
  </div>
  <div class="row-fluid">
    <div class="span6">
		<form class="well form-inline">
		  <input type="text" class="input-small" placeholder="Email">
		  <input type="password" class="input-small" placeholder="Password">
		  <label class="checkbox">
			<input type="checkbox"> Remember me
		  </label>
		  <button type="submit" class="btn">Sign in</button>
		</form>
	</div>
    <div class="span6">
		<form class="well form-search">
		  <input type="text" class="input-medium search-query">
		  <button type="submit" class="btn">Search</button>
		</form>
	</div>
  </div><!--/row-->
  <div class="row-fluid">
    <div class="span6">
		<form class="form-inline">
        <fieldset>
		 <div class="control-group">
			<label class="control-label" for="input14">Text input</label>
			<div class="controls">
			  <input type="text" class="input-small" id="input14">
			</div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input12">Text input</label>
            <div class="controls">
              <input type="text" class="input-medium" id="input12">
            </div>
          </div>
		  <div class="control-group">
            <label class="control-label" for="input13">Text input</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input13">
            </div>
          </div>
		  <div class="control-group">
            <label class="control-label" for="input01">Text input</label>
            <div class="controls">
              <input type="text" class="input-xxlarge" id="input01">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="select01">Select list</label>
            <div class="controls">
              <select id="select01">
                <option>something</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="fileInput">File input</label>
            <div class="controls">
              <input class="input-file" id="fileInput" type="file">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="textarea">Textarea</label>
            <div class="controls">
              <textarea class="input-xxlarge" id="textarea" rows="3"></textarea>
            </div>
          </div>		  
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Save changes</button>
            <button class="btn">Cancel</button>
          </div>
        </fieldset>
      </form>
	</div>
	<div class="span6">
	<form class="form-horizontal">
        <fieldset>
          <div class="control-group">
            <label class="control-label" for="input01">Text input</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01">
             
            </div>
          </div>
		   <div class="control-group">
            <label class="control-label" for="input11">Text input</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input11">
             
            </div>
          </div>
		   <div class="control-group">
            <label class="control-label" for="textarea">Textarea</label>
            <div class="controls">
              <textarea class="input-xlarge" id="textarea" rows="3" style="height:65px"></textarea>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="optionsCheckbox">Checkbox</label>
            <div class="controls">
              <label class="checkbox">
                <input type="checkbox" id="optionsCheckbox" value="option1"/>
              </label>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="select01">Select list</label>
            <div class="controls">
              <select class="span9" id="select01">
                <option>something</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="multiSelect">Multicon-select</label>
            <div class="controls">
              <select class="span9" multiple="multiple" id="multiSelect">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </div>
         
		  <div class="control-group">
            <label class="control-label" for="appendedInputButton">Append with button</label>
            <div class="controls">
              <div class="input-append">
                <input class="span10" id="appendedInputButton" size="44" type="text"><button class="btn" type="button">Go!</button>
              </div>
            </div>
          </div>
		  
		  <div class="control-group">
            <label class="control-label">Radio buttons</label>
            <div class="controls">
              <label class="radio">
                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                Option one is this and that�be sure to include why it's great
              </label>
            </div>
          </div>
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Save changes</button>
            <button class="btn">Cancel</button>
          </div>
        </fieldset>
      </form>
		
	</div>
</div>
</section>

<section id="Table">
  <div class="page-header">
    <h3>O. Table </h1>
  </div>
  <div class="row-fluid">
    <div class="span6">
		<table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
	</div>
	<div class="span6">
		<table class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
	</div>
	</div>
	<div class="row-fluid">
		<div class="span6">
		<table class="table table-bordered">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="2">1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>Mark</td>
            <td>Otto</td>
            <td>@TwBootstrap</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
		  <tr>
            <td>3</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
		  <tr>
            <td>4</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
		  <tr>
            <td>5</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>6</td>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
		</div>
		<div class="span6">
		<table class="table table-condensed">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
		  
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
	  <br/>
	  <table class="table table-striped table-bordered table-condensed">
        <thead>
          <tr>
            <th></th>
            <th colspan="2">Full name</th>
            <th></th>
          </tr>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
          </tr><tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
		</div>
	</div>
</section>


	
	
	
	
</div>
	
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div  id="footerSection">
	<div class="row">
		<div class="span3">
			<h5>ACCOUNT</h6>
			<a href="login.html">YOUR ACCOUNT</a>
			<a href="login.html">PERSONAL INFORMATION</a> 
			<a href="login.html">ADDRESSES</a> 
			<a href="login.html">DISCOUNT</a>  
			<a href="login.html">ORDER HISTORY</a>
		 </div>
		<div class="span3">
			<h5>INFORMATION</h5>
			<a href="contact.html">CONTACT</a>  
			<a href="register.html">REGISTRATION</a>  
			<a href="legal_notice.html">LEGAL NOTICE</a>  
			<a href="tac.html">TERMS AND CONDITIONS</a> 
			<a href="faq.html">FAQ</a>
		 </div>
		<div class="span3">
			<h5>OUR OFFERS</h5>
			<a href="#">NEW PRODUCTS</a> 
			<a href="#">TOP SELLERS</a>  
			<a href="special_offer.html">SPECIAL OFFERS</a>  
			<a href="#">MANUFACTURERS</a> 
			<a href="#">SUPPLIERS</a> 
		 </div>
		<div id="socialMedia" class="span3 pull-right">
			<h5>SOCIAL MEDIA </h5>
			<a href="#"><img width="60" src="front//assets/img/facebook.png" title="facebook"/></a>
			<a href="#"><img width="60" src="front//assets/img/twitter.png" title="twitter"/></a>
			<a href="#"><img width="60" src="front//assets/img/rss.png" title="rss"/></a>
			<a href="#"><img width="60" src="front//assets/img/youtube.png" title="youtube"/></a>
		 </div> 
	 </div>
	 <hr class="soft">
	<p class="pull-right">&copy; Boot'sshop</p>
</div><!-- /container -->


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="front//assets/js/jquery.js"></script>
	<script src="front//assets/js/google-code-prettify/prettify.js"></script>
    <script src="front//assets/js/application.js"></script>
    <script src="front//assets/js/bootstrap-transition.js"></script>
    <script src="front//assets/js/bootstrap-modal.js"></script>
    <script src="front//assets/js/bootstrap-scrollspy.js"></script>
    <script src="front//assets/js/bootstrap-alert.js"></script>
    <script src="front//assets/js/bootstrap-dropdown.js"></script>
    <script src="front//assets/js/bootstrap-tab.js"></script>
    <script src="front//assets/js/bootstrap-tooltip.js"></script>
    <script src="front//assets/js/bootstrap-popover.js"></script>
    <script src="front//assets/js/bootstrap-button.js"></script>
    <script src="front//assets/js/bootstrap-collapse.js"></script>
    <script src="front//assets/js/bootstrap-carousel.js"></script>
    <script src="front//assets/js/bootstrap-typeahead.js"></script>
    <script src="front//assets/js/bootstrap-affix.js"></script>
    <script src="front//assets/js/jquery.lightbox-0.5.js"></script>
	<script src="front//assets/js/bootsshoptgl.js"></script>
	 <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>
  </body>
</html>