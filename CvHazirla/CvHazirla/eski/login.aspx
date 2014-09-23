<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
	<title>Login Form</title>


	<!-- The styles -->
	
 <link href="css/prettify.css" type="text/css" rel="stylesheet" />
 <link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
 <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
 <link href="css/docs.css" type="text/css" rel="stylesheet" />
 <link href="css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet" />
 <link href="css/bootstrap-responsive.css" type="text/css" rel="stylesheet" />
 <link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href='css/uniform.default.css' rel='stylesheet'>
 
 
 <script type="text/javascript" src="js/jquery.js"> </script>
 <script type="text/javascript" src="js/bootstrap-button.js"> </script>
 <script type="text/javascript" src="js/bootstrap-dropdown.js"> </script>
 <script type="text/javascript" src="js/bootstrap-tab.js"> </script>
 <script type="text/javascript" src="js/bootstrap-alert.js"> </script>
 <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
 <script src="js/prettify.js"></script>
 <script src="js/bootstrap-transition.js"></script>
 <script src="js/bootstrap-modal.js"></script>
 <script src="js/bootstrap-scrollspy.js"></script>
 <script src="js/bootstrap-tooltip.js"></script>
 <script src="js/bootstrap-popover.js"></script>
 <script src="js/bootstrap-collapse.js"></script>
 <script src="js/bootstrap-carousel.js"></script>
 <script src="js/bootstrap-typeahead.js"></script>
 <script src="js/application.js"></script>
 
 


</head>

<body>
<div class="navbar">
    <div class="navbar-inner " style="
								width: 1285px;
								margin-left: 10px;
								margin-top:-80px;
								font-family: 'Karla', sans-serif;
								height: 42px;
background-color:#0099FF;	
						">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#">CV MAKER</a>
        <div class="nav-collapse">
         
          <ul class="nav pull-right">
           <li class="divider-vertical"></li>
		   <li><a href="#">Giris</a></li>
			<li class="divider-vertical"></li>  <!--/ayraç -->
			<li><a href="#">Kayit</a></li>

            <li class="divider-vertical"></li>
           
          </ul>
        </div><!-- /.nav-collapse -->
      </div>
    </div><!-- /navbar-inner -->
  </div><!-- /navbar -->
		<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>Login Form</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					<div class="alert alert-info">
						Kullanıcı Adı ve Şifrenizi Giriniz
					</div>
					<form class="form-horizontal" action="index.html" method="post">
						<fieldset>
							<div class="input-prepend" title="Username" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="username" id="username" type="text" value="" />
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="Password" data-rel="tooltip">
								<span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="password" id="password" type="password" value="" />
							</div>
							<div class="clearfix"></div>

							
							<div class="clearfix"></div>

							<p class="center span5">
							<button type="submit" class="btn btn-primary">Login</button>
							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->


	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>	
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	
		

		<script language="JavaScript">
$('#myModal').modal(options)
$('.dropdown-toggle').dropdown()
$('#navbar').scrollspy()
$('#myTab').tab('show')
$('#example').tooltip(options)
$('#example').popover(options)
$(".alert").alert()
$('.tabs').button()
$(".collapse").collapse()
$('.carousel').carousel()
$('.typeahead').typeahead()
</script>

</body>
</html>
