<!DOCTYPE HTML>
<!--
	Prism by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title><?=$this->title?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="<?=BASE?>/themes/prism/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<?=BASE?>/themes/prism/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="<?=BASE?>/themes/prism/assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<!-- Banner -->
			<section id="banner">
				<div class="inner split">
					<section>
						<h2><?=$this->registry->config->header?></h2>
					</section>
					<section>
						<p><?=$this->registry->config->motto?></p>
					</section>
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper style2 alt">
				<div class="inner">
					<?=$this->main?>
				</div>
			</section>

		<?php if ($this->bottom_left !== false || $this->bottom_right !== false): ?>
		<!-- Contact -->
			<section id="contact" class="wrapper">
				<div class="inner split">
					<section>
						<?=$this->bottom_left?>
					</section>
					<section>
						<?=$this->bottom_right?>
					</section>
				</div>
			</section>
		<?php endif; ?>

		<!-- Footer -->
			<footer id="footer">
				<div class="copyright">
					<?=$this->registry->config->footer?><br>
					Images: <a href="http://unsplash.com">Unsplash</a>. Design: <a href="http://templated.co">TEMPLATED</a>.
				</div>
			</footer>

		<!-- Scripts -->
			<script src="<?=BASE?>/themes/prism/assets/js/jquery.min.js"></script>
			<script src="<?=BASE?>/themes/prism/assets/js/skel.min.js"></script>
			<script src="<?=BASE?>/themes/prism/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="<?=BASE?>/themes/prism/assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="<?=BASE?>/themes/prism/assets/js/main.js"></script>

	</body>
</html>