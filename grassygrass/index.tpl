<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : GrassyGreen 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140310

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<link href="http://fonts.googleapis.com/css?family=Raleway:400,200,500,600,700,800,300" rel="stylesheet" />
<link href="<?=BASE?>/themes/grassygrass/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?=BASE?>/themes/grassygrass/fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="<?=BASE?>/themes/grassygrass/default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div id="menu-wrapper">
		<div id="menu" class="container">
			<ul>
		<?php

		$menu = load_lib('menu', true, false, $this->registry);
		
		foreach ($menu->items() as $selected => $item)
			echo '<li class="' . ($selected === 'selected' ? 'current_page_item' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
		
		?>
			</ul>
		</div>
		<!-- end #menu --> 
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#"><?=$this->registry->config->header?></a></h1>
				<p><?=$this->registry->config->motto?></p>
			</div>
		</div>
	</div>
	</div>
	<div id="banner"></div>
	<div id="page" class="container">
		<div id="content">
			<?=$this->main?>
		</div>
		<div id="sidebar">
			<div class="box2">
				<?=$this->sidebar?>
			</div>
		</div>
	</div>
</div>
	

<div id="footer-wrapper">
	<div id="footer" class="container">
		<div id="box1">
			<?=$this->footer_left?>
			&nbsp;
		</div>
		<div id="box2">
			<?=$this->footer_middle?>
			&nbsp;
		</div>
		<div id="box3">
			<?=$this->footer_right?>
			&nbsp;
		</div>
	</div>
</div>

<div id="copyright" class="container">
	<p><?=$this->registry->config->footer?></p>
	<p>&copy; <?=$this->registry->config->header?>. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>