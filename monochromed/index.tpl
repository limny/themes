<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html data-base="<?=BASE?>">
	<head>
		<title><?=$this->title?></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="<?=$this->registry->config->description?>" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="<?=BASE?>/themes/monochromed/js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="<?=BASE?>/themes/monochromed/js/skel.min.js"></script>
		<script src="<?=BASE?>/themes/monochromed/js/skel-panels.min.js"></script>
		<script src="<?=BASE?>/themes/monochromed/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="<?=BASE?>/themes/monochromed/css/skel-noscript.css" />
			<link rel="stylesheet" href="<?=BASE?>/themes/monochromed/css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="<?=BASE?>/themes/monochromed/css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="<?=BASE?>/themes/monochromed/css/ie/v9.css" /><![endif]-->
		<?=$this->head?>
	</head>
	<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div class="container">
					
				<!-- Logo -->
					<div id="logo">
						<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
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
	<!-- Header -->
			
	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">
				
					<!-- Content -->
						<div class="8u skel-cell-important">
							<section id="content">
								<?=$this->main?>
							</section>
						</div>
					<!-- /Content -->
						
					<!-- Sidebar -->
						<div id="sidebar" class="4u">
							<section>
								<?=$this->sidebar?>
							</section>
						</div>
					<!-- Sidebar -->
						
				</div>
			
			</div>
		</div>
	<!-- Main -->

	<?php if ($this->footer_left !== false || $this->footer_middle !== false || $this->footer_right !== false): ?>
	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="3u">
						<section>
							<?=$this->footer_left?>
						</section>
					</div>
					<div class="3u">
						<section>
							<?=$this->footer_middle?>
						</section>				
					</div>
					<div class="6u">
						<section>
							<?=$this->footer_right?>
						</section>
					</div>
				</div>
			</div>
		</div>
	<!-- Footer -->
	<?php endif; ?>

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<?=$this->registry->config->footer?><br>
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>

	</body>
</html>