<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Skeleton 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20130902

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="<?=BASE?>/themes/privy/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?=BASE?>/themes/privy/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="<?=BASE?>/themes/privy/default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="images/pic02.jpg" alt="" />
			<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
			<span><?=$this->registry->config->motto?></span>
		</div>
		<div id="menu">
			<ul>
				<?php

				$menu = load_lib('menu', true, false, $this->registry);
				
				foreach ($menu->items() as $selected => $item)
					echo '<li class="' . ($selected === 'selected' ? 'current_page_item' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
				
				?>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="content">
			<?=$this->main?>
		</div>
		<div id="copyright">
			<span><?=$this->registry->config->footer?> | Photos by <a href="http://fotogrph.com/">Fotogrph</a></span>
			<span>Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</span>
		</div>
	</div>
</div>
</body>
</html>
