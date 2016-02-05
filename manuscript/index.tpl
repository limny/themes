<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><?=$this->title?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css" media="all">
@import "<?=BASE?>/themes/manuscript/images/style.css";
</style>
<?=$this->head?>
</head>
<body>
<div class="content">
  <div id="header">
    <div class="title">
      <h1><?=$this->registry->config->header?></h1>
      <h3><?=$this->registry->config->motto?></h3>
    </div>
  </div>
  <div id="main">
    <div class="center">
      <?=$this->main?>
    </div>
    <div class="leftmenu">
      <div class="nav">
        <ul>
          <?php

          $menu = load_lib('menu', true, false, $this->registry);
          
          foreach ($menu->items() as $selected => $item)
            echo '<li><a href="' . (empty($item['address']) ? BASE : $item['address']) . '">' . $item['name'] . '</a></li>';
          
          ?>
        </ul>
      </div>
    </div>
  </div>
  <div id="prefooter">
    <div class="particles">
      <?=$this->particles?>
    </div>
    <div class="comments">
      <?=$this->comments?>
    </div>
  </div>
  <div id="footer">
    <div class="padding"> <?=$this->registry->config->footer?> | Design: <a href="http://www.free-css-templates.com">David Herreman </a> | <a href="#">Contact</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> and <a href="http://validator.w3.org/check?uri=referer">XHTML</a> | <a href="http://www.solucija.com">Solucija.com</a> | <a href="<?=url('user/signin')?>">Login</a> </div>
  </div>
</div>
</body>
</html>