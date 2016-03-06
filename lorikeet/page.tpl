<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Lorikeet 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140314

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet" />
<link href="<?=BASE?>/themes/lorikeet/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?=BASE?>/themes/lorikeet/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="<?=BASE?>/themes/lorikeet/default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<?=$this->head?>
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
				
				foreach ($menu->items() as $selected => $item)
					echo '<li class="' . ($selected === 'selected' ? 'active' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
				
				?>
			</ul>
		</div>
	</div>

</div>
<div id="wrapper">
	<div id="three-column" class="container">
    	<?=$this->main?>
	</div>
</div>

<div id="copyright" class="container">
	<p><?=$this->registry->config->footer?> | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>