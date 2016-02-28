<!DOCTYPE HTML>
<!--
	Spatial by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html data-base="<?=BASE?>">
	<head>
		<title><?=$this->title?></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="<?=$this->registry->config->description?>" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="<?=BASE?>/themes/spatial/js/html5shiv.js"></script><![endif]-->
		<script src="<?=BASE?>/themes/spatial/js/jquery.min.js"></script>
		<script src="<?=BASE?>/themes/spatial/js/skel.min.js"></script>
		<script src="<?=BASE?>/themes/spatial/js/skel-layers.min.js"></script>
		<script src="<?=BASE?>/themes/spatial/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="<?=BASE?>/themes/spatial/css/skel.css" />
			<link rel="stylesheet" href="<?=BASE?>/themes/spatial/css/style.css" />
			<link rel="stylesheet" href="<?=BASE?>/themes/spatial/css/style-xlarge.css" />
		</noscript>
		<?=$this->head?>
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<h1><strong><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></strong></h1>
				<nav id="nav">
					<ul>
						<?php

						$menu = load_lib('menu', true, false, $this->registry);
						
						foreach ($menu->items() as $selected => $item)
							echo '<li><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
						
						?>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">

					<?=$this->main?>

				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<ul class="icons">
						<li><a href="#" class="icon fa-facebook"></a></li>
						<li><a href="#" class="icon fa-twitter"></a></li>
						<li><a href="#" class="icon fa-instagram"></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled</li>
						<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
						<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
					</ul>
				</div>
			</footer>

	</body>
</html>