<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="google-site-verification" content="9211v6IrzwDO4vs4jLFn2sUg_44PugO_hMMIfQeur00" />
    <meta charset="UTF-8">
    <title>
     Vi-Home        
    </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
     
    <meta name="description" content="">  
<link rel="shortcut icon" href="//bizweb.dktcdn.net/100/022/286/themes/28873/assets/favicon.png?1457574486889">    
<link rel="stylesheet" type="text/css" href={{Asset('public/css/bootstrap.min.css')}}>
<link rel="stylesheet" type="text/css" href={{Asset('public/css/bootstrap-theme.min.css')}}>
<link href='//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href={{Asset('public/css/style.css')}}>
<script type="text/javascript" src={{Asset('public/js/jquery213.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/jquery.hoverdir.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/modernizr.custom.97074.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/api.jquery.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/bootstrap.min.js')}}></script>
</head>
<body>
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '1727282974222089',
	      xfbml      : true,
	      version    : 'v2.5'
	    });
	  };

	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	</script>
	@include('includes.header')
	<div id="main" style="padding-top: 66px;" class="container">		
		<div class="row bg_top">
			<div class="col-md-6">
				<div class=" icon_top">
					<img src="{{Asset('public/images/')}}/{{$icon}}">
				</div>
				<div class="text_top">
					<h2>{{$tittle}}</h2>
				</div>	
			</div>
			<div class="col-md-6 hidden-sm hidden-md hidden-xs">
				<div class="top_right">
					<h2><i class="fa fa-phone" aria-hidden="true"></i>096.668.6892</h2>				
				</div>
			</div>
			
		</div>
		  @yield('content')						
	</div>
	@include('includes.footer')
</body>
</html>