<!DOCTYPE HTML>
<!--
	Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title><?=$this->title?></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="<?=$this->registry->config->description?>" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		
		<link rel="stylesheet" href="<?=BASE?>/themes/linear/css/skel-noscript.css" />
		<link rel="stylesheet" href="<?=BASE?>/themes/linear/css/style.css" />
		<link rel="stylesheet" href="<?=BASE?>/themes/linear/css/style-desktop.css" />

		<?=$this->head?>
	</head>
	<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div id="nav-wrapper"> 
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<?php

						$menu = load_lib('menu', true, false, $this->registry);
						
						foreach ($menu->items() as $selected => $item)
							echo '<li class="' . ($selected === 'selected' ? ' active' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
						
						?>
					</ul>
				</nav>
			</div>
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#"><?=$this->registry->config->header?></a></h1>
					<span class="tag"><?=$this->registry->config->motto?></span>
				</div>

				<?=$this->header?>
			</div>
		</div>

	<!-- Main -->
		<div id="main">
			<div class="container">

				<div class="row">

					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<?=$this->main?>
					</div>

					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<?=$this->sidebar?>
					</div>
					
				</div>
			
			</div>
		</div>

	<!-- Tweet -->
		<div id="tweet">
			<div class="container">
				<?=$this->tweet?>
			</div>
		</div>

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<section>
					<ul class="contact">
						<li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
						<li class="active"><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
						<li><a href="#" class="fa fa-dribbble"><span>Pinterest</span></a></li>
						<li><a href="#" class="fa fa-tumblr"><span>Google+</span></a></li>
					</ul>
				</section>
			</div>
		</div>

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<?=$this->footer?>
				<p><?=$this->registry->config->footer?></p>
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>

	</body>
</html>