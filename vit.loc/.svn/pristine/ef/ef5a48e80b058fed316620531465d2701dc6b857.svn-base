<!DOCTYPE html>
<html lang="ru">

<head>

<meta charset="utf-8">

<title><?php wp_title("|", true); ?><?php bloginfo('name'); ?></title>
<meta name="description" content="<?php bloginfo('description'); ?>">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<meta property="og:image" content="path/to/image.jpg">
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-touch-icon-114x114.png">

<!-- Chrome, Firefox OS and Opera -->
<meta name="theme-color" content="#000">
<!-- Windows Phone -->
<meta name="msapplication-navbutton-color" content="#000">
<!-- iOS Safari -->
<meta name="apple-mobile-web-app-status-bar-style" content="#000">

<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>


<header class="main-header">
	<div class="container top-head">
		<div class="row">
			<div class="col-md-12">
				 <p><?php echo get_theme_mod('lozung', '');?></p>	
			</div>
		</div>
	</div>
	<nav class="navbar navbar-default">
		<div class="container">
		  <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header">
		    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		      <span class="sr-only">Toggle navigation</span>
		      <span class="icon-bar"></span>
		      <span class="icon-bar"></span>
		      <span class="icon-bar"></span>
		    </button>
		    <a class="navbar-brand" href="/""><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/logo.png" alt=Logo""></a>
		  </div>

		  <!-- Collect the nav links, forms, and other content for toggling -->
		  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		    <?php wp_nav_menu( array( 
              'menu'              => 'main',
              'theme_location'    => 'main',
              'depth'             => 2,
              'menu_id'           => 'w1',
              'menu_class'        => 'navbar-nav navbar-left nav',
              'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
              'walker'            => new wp_bootstrap_navwalker())            
            ); ?>               
		  </div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>

	
</header>
