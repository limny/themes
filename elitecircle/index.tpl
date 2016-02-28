<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title><?=$this->title?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="<?=BASE?>/themes/elitecircle/images/EliteCircle.css" type="text/css" />
<?=$this->head?>
</head>
<body>
<div id="header">
  <div id="header-content">
    <h1 id="logo"><?=$this->registry->config->header?></h1>
    <h2 id="slogan"><?=$this->registry->config->motto?></h2>
    <!--div id="header-links">
      <p> <a href="#">Home</a> | <a href="#">Contact</a> | <a href="#">Site Map</a> </p>
    </div-->
    <ul>
      <?php

      $menu = load_lib('menu', true, false, $this->registry);
      
      foreach ($menu->items() as $selected => $item)
        echo '<li><a id="' . ($selected === 'selected' ? 'current' : null) . '" href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
      
      ?>
    </ul>
  </div>
</div>
<div id="content-wrap">
  <div id="content">
    <div id="main">
      <?=$this->main?>
    </div>
    <div id="sidebar">
      <?=$this->sidebar?>
    </div>
  </div>
</div>
<div id="footer">
  <div id="footer-content">
    <div class="col float-left space-sep">
      <?=$this->footer_left?>
    </div>
    <div class="col float-left">
      <?=$this->footer_middle?>
    </div>
    <div class="col2 float-right">
      <p> <?=$this->registry->config->footer?><br />
        Design by: <a href="http://www.styleshout.com/">styleshout</a> &nbsp; &nbsp; Valid <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://validator.w3.org/check/referer">XHTML</a> </p>
      <!--ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Sitemap</a></li>
        <li><a href="#">RSS Feed</a></li>
      </ul-->
    </div>
    <br class="clear" />
  </div>
</div>
</body>
</html>