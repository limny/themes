<!DOCTYPE HTML>
<!--
	Synchronous by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title><?=$this->title?></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="<?=$this->registry->config->description?>" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="<?=BASE?>/themes/synchronous/js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="<?=BASE?>/themes/synchronous/js/skel.min.js"></script>
		<script src="<?=BASE?>/themes/synchronous/js/skel-panels.min.js"></script>
		<script src="<?=BASE?>/themes/synchronous/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="<?=BASE?>/themes/synchronous/css/skel-noscript.css" />
			<link rel="stylesheet" href="<?=BASE?>/themes/synchronous/css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="<?=BASE?>/themes/synchronous/css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="<?=BASE?>/themes/synchronous/css/ie/v9.css" /><![endif]-->
		<?=$this->head?>
	</head>
	<body class="homepage">
		<div id="wrapper">
			
			<!-- Header -->
			<div id="header">
				<div class="container"> 
					
					<!-- Logo -->
					<div id="logo">
						<h1><a href="#"><?=$this->registry->config->header?></a></h1>
						<span><?=$this->registry->config->motto?></span>
					</div>
					
					<!-- Nav -->
					<nav id="nav">
						<ul>
							<?php

							$menu = load_lib('menu', true, false, $this->registry);
							
							foreach ($menu->items() as $selected => $item)
								echo '<li class="' . ($selected === 'selected' ? 'active' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
							
							?>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					<div class="row">
						<div class="3u">
							<section id="sidebar1">
								<?=$this->left?>
							</section>
						</div>
						<div class="6u skel-cell-important">
							<section id="content" >
								<?=$this->main?>
							</section>
						</div>
						<div class="3u">
							<section id="sidebard2">
								<?=$this->right?>
							</section>
						</div>
					</div>

				</div>	
			</div>

			<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="3u">
							<section id="box1">
								<?=$this->footer_left?>
							</section>
						</div>
						<div class="6u">
							<section id="box2">
								<?=$this->footer_middle?>
							</section>
						</div>
						<div class="3u">
							<section id="box3">
								<?=$this->footer_right?>
							</section>
						</div>
					</div>
				</div>
			</div>

			<!-- Copyright -->
			<div id="copyright">
				<div class="container">
					<?=$this->registry->config->footer?><br>
					Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
				</div>
			</div>
			
		</div>
	</body>
</html>