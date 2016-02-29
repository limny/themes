<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Reddened 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131026

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="<?=BASE?>/themes/reddened/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?=BASE?>/themes/reddened/fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="<?=BASE?>/themes/reddened/default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<?=$this->head?>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
				<p><?=$this->registry->config->motto?></p>
			</div>
			<div id="social">
				<ul class="contact">
					<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
					<li><a href="#" class="icon icon-facebook"><span></span></a></li>
					<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
					<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
					<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
				</ul>
			</div>
		</div>
		<div id="menu" class="container">
			<ul>
				<?php

				$i = 1;
				$menu = load_lib('menu', true, false, $this->registry);
				
				foreach ($menu->items() as $selected => $item) {
					echo '<li class="' . ($selected === 'selected' ? 'current_page_item' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '" accesskey="' . $i . '">' . $item['name'] . '</a>';

					$i += 1;
				}
				
				?>
			</ul>
		</div>
	</div>
	<div id="page" class="container">
		<div id="content">
			<!--div class="post">
				<h2>Mauris vulputate dolor</h2>
				<p><img src="images/img03.jpg" alt="" class="image image-full" /></p>
				<p>This is <strong>Reddened </strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.  The photo used in this template is from <a href="http://fotogrph.com/">Fotogrph</a>.  This free template is released under the <a href="http://creativecommons.org/licenses/by/3/">Creative Commons Attribution</a> license, so you’re pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :)</p>
			</div-->
			<?=$this->main?>
		</div>
		<div id="sidebar1">
			<?=$this->sidebar?>
		</div>
	</div>
	<div id="portfolio-wrapper">
		<div id="portfolio" class="container">
			<div class="column1">
				<div class="box">
					<?=$this->footer_column_1?></div>
			</div>
			<div class="column2">
				<div class="box">
					<?=$this->footer_column_2?></div>
			</div>
			<div class="column3">
				<div class="box">
					<?=$this->footer_column_3?></div>
			</div>
			<div class="column4">
				<div class="box">
					<?=$this->footer_column_4?></div>
			</div>
		</div>
	</div>
</div>
<div id="footer">
	<p><?=$this->registry->config->footer?></p>
	<p>Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p>
</div>
</body>
</html>