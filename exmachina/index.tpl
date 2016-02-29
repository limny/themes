<!DOCTYPE HTML>
<!--
	Ex Machina by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html data-base="<?=BASE?>">
	<head>
		<title><?=$this->title?></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="<?=$this->registry->config->description?>" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:700italic,400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="<?=BASE?>/themes/exmachina/js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="<?=BASE?>/themes/exmachina/js/skel.min.js"></script>
		<script src="<?=BASE?>/themes/exmachina/js/skel-panels.min.js"></script>
		<script src="<?=BASE?>/themes/exmachina/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="<?=BASE?>/themes/exmachina/css/skel-noscript.css" />
			<link rel="stylesheet" href="<?=BASE?>/themes/exmachina/css/style.css" />
			<link rel="stylesheet" href="<?=BASE?>/themes/exmachina/css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="<?=BASE?>/themes/exmachina/css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="<?=BASE?>/themes/exmachina/css/ie/v9.css" /><![endif]-->
		<?=$this->head?>
	</head>
	<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div class="container">
					
				<!-- Logo -->
					<div id="logo">
						<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
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
		
	<!-- Banner -->
		<div id="banner">
			<div class="container">
			</div>
		</div>
	<!-- /Banner -->

	<!-- Main -->
		<div id="page">

			<?php if ($this->header_1 !== false || $this->header_2 !== false || $this->header_3 !== false || $this->header_4 !== false): ?>
			<!-- Extra -->
			<div id="marketing" class="container">
				<div class="row">
					<div class="3u">
						<section>
							<?=$this->header_1?>
						</section>
					</div>
					<div class="3u">
						<section>
							<?=$this->header_2?>
						</section>
					</div>
					<div class="3u">
						<section>
							<?=$this->header_3?>
						</section>
					</div>
					<div class="3u">
						<section>
							<?=$this->header_4?>
						</section>
					</div>
				</div>
			</div>
			<!-- /Extra -->
		<?php endif; ?>
				
			<!-- Main -->
			<div id="main" class="container">
				<div class="row">
					<div class="9u">
						<section>
							<?=$this->main?>
						</section>
					</div>
					<div class="3u">
						<section class="sidebar">
							<?=$this->sidebar?>	
						</section>
					</div>
				</div>
			</div>
			<!-- Main -->

		</div>
	<!-- /Main -->

	<?php if ($this->footer !== false): ?>
	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<?=$this->footer?>
			</div>
		</div>
	<!-- /Footer -->
	<?php endif; ?>

	<!-- Copyright -->
		<div id="copyright" class="container">
			<p><?=$this->registry->config->footer?></p><br>
			Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
		</div>


	</body>
</html>