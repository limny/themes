<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Joyousness 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20130919

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="<?=BASE?>/themes/joyousness/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="<?=BASE?>/themes/joyousness/default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
		</div>
		<div id="menu">
			<ul>
				<?php

				$menu = load_lib('menu', true, false, $this->registry);
				
				$i = 1;
				foreach ($menu->items() as $selected => $item) {
					echo '<li class="' . ($selected === 'selected' ? 'current_page_item' : null) . '"><a accesskey="' . $i . '" href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';

					$i += 1;
				}
				
				?>
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<!--div id="welcome" class="wrapper-style1">
		<div class="title">
			<h2>Welcome to our website</h2>
			<span class="byline">Maecenas vitae tellus feugiat eleifend</span> </div>
		<p>This is <strong>Joyousness</strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. The photos in this template are from <a href="http://fotogrph.com/"> Fotogrph</a>. This free template is released under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so you're pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :) </p>
	</div-->
	<div id="page" class="container">
		<div id="content">
			<?=$this->main?>
		</div>
		<div id="sidebar">
			<?=$this->sidebar?>
		</div>
	</div>
</div>
<div id="featured-wrapper">
	<div id="featured" class="container">
		<div id="box1">
			<?=$this->footer_left?>
		</div>
		<div id="box2">
			<?=$this->footer_middle?>
		</div>
		<div id="box3">
			<?=$this->footer_right?>
		</div>
	</div>
</div>
<!--div id="portfolio-wrapper">
	<div id="portfolio" class="container">
		<h2>Etiam rhoncus volutpat erat</h2>
		<div id="port1"><img src="images/img01.jpg" width="384" height="200" alt="" />
		<p>Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p></div>
		<div id="port2"><img src="images/img02.jpg" width="384" height="200" alt="" /><p>Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p></div>
		<div id="port3"><img src="images/img03.jpg" width="384" height="200" alt="" /><p>Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p></div>
	</div>
</div-->
<div id="footer" class="container">
	<div>
		<?=$this->footer?>
	</div>
	<p><?=$this->registry->config->footer?> | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>