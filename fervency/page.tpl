<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Fervency 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131006

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$this->title?></title>
<meta name="keywords" content="" />
<meta name="description" content="<?=$this->registry->config->description?>" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="<?=BASE?>/themes/fervency/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?=BASE?>/themes/fervency/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="<?=BASE?>/themes/fervency/default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.2.min.js"></script>

<?=$this->head?>
</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<span class="icon icon-fire"></span>
			<h1><a href="<?=$this->registry->config->address?>"><?=$this->registry->config->header?></a></h1>
			<span><?=$this->registry->config->motto?></span> </div>
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
</div>

<div id="wrapper3">
	<div id="portfolio" class="container">
		<?=$this->main?>
	</div>
</div>

<?php if ($this->footer !== false): ?>
<div id="wrapper4">
	<div id="footer" class="container">
		<div>
			<?=$this->footer?>
			<ul class="contact">
				<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
				<li><a href="#" class="icon icon-facebook"><span></span></a></li>
				<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
				<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
				<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
			</ul>
		</div>
	</div>
</div>
<?php endif ?>

<div id="copyright">
	<p><?=$this->registry->config->footer?> | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>