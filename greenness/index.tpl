<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Greenness 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120927

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css' />
<link href="<?=BASE?>/themes/greenness/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="<?=BASE?>/themes/greenness/default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<?=$this->head?>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
	</div>
	<div id="menu">
		<ul>
			<?php

			$menu = load_lib('menu', true, false, $this->registry);
			
			$i = 1;
			foreach ($menu->items() as $selected => $item) {
				echo '<li class="' . ($selected === 'selected' ? ' current_page_item' : null) . '"><a accesskey="' . $i . '" href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';

				$i += 1;
			}
			
			?>
		</ul>
	</div>
</div>
<div id="banner-wrapper">
	<div id="banner"><img src="<?=BASE?>/themes/greenness/images/pics01.jpg" width="1000" height="345" alt="" /></div>
</div>
<div id="page-wrapper">
	<div id="page">
		<div id="content">
			<?=$this->main?>
		</div>
		<div id="sidebar">
			<?=$this->sidebar?>
		</div>
	</div>
</div>
<div id="footer-wrapper">
	<div id="footer-content">
		<div id="fbox1">
			<?=$this->footer_left?>
		</div>
		<div id="fbox2">
			<?=$this->footer_middle?>
		</div>
		<div id="fbox3">
			<?=$this->footer_right?>
		</div>
	</div>
</div>
<div id="footer">
	<p><?=$this->registry->config->footer?><br>Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p>
</div>
</body>
</html>