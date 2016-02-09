<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?=$this->title?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="<?=BASE?>/themes/bluenorange/style.css" rel="stylesheet" type="text/css" />
<?=$this->head?>
</head>
<body>
<div id="container">
  <div id="banner"> <img src="<?=BASE?>/themes/bluenorange/img/banner.jpg" alt="banner" title="banner" /> </div>
  <div id="bannerb">
    <h1><?=$this->registry->config->header?></h1>
    <!--div class="scroll"></div-->
    <p><?=$this->registry->config->motto?></p>
  </div>
  <div class="topnav">
    <div id="navcontainer">
      <ul id="navlist">
        <?php

        $menu = load_lib('menu', true, false, $this->registry);
        
        foreach ($menu->items() as $selected => $item)
          echo '<li id="' . ($selected === 'selected' ? 'active' : null) . '"><a href="' . (empty($item['address']) ? BASE : $item['address']) . '" id="' . ($selected === 'selected' ? 'active' : null) . '">' . $item['name'] . '</a></li>';
        
        ?>
      </ul>
    </div>
    <div class="clear">&nbsp; </div>
  </div>
  <div id="sidebar">
    <?=$this->left?>
  </div>
  <div id="sidebar-b">
    <?=$this->right?>
  </div>
  <div id="content">
    <?=$this->center?>
  </div>
  <div id="footer"> <?=$this->registry->config->footer?> | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a><br/>
    This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a> </div>
</div>
</body>
</html>