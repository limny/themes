<!DOCTYPE HTML>
<html>
<head>
<title><?=$this->title?></title>
<meta charset="utf-8">
<noscript>
<link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/5grid/core.css">
<link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/5grid/core-desktop.css">
<link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/5grid/core-1200px.css">
<link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/5grid/core-noscript.css">
<link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/style.css">
<link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/style-desktop.css">
</noscript>
<script src="<?=BASE?>/themes/iridium/css/5grid/jquery.js"></script>
<script src="<?=BASE?>/themes/iridium/css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
<!--[if IE 9]><link rel="stylesheet" href="<?=BASE?>/themes/iridium/css/style-ie9.css"><![endif]-->
<?=$this->head?>
</head>
<body>
<div id="header-wrapper">
  <header id="header" class="5grid-layout">
    <div class="row">
      <div class="12u">
        <!-- Logo -->
        <h1><a href="<?=$this->registry->config->address?>" class="mobileUI-site-name"><?=$this->registry->config->header?></a></h1>
        <!-- Nav -->
        <nav class="mobileUI-site-nav">
          <?php

          $menu = load_lib('menu', true, false, $this->registry);
          
          foreach ($menu->items() as $selected => $item)
            echo '<a href="' . (empty($item['address']) ? BASE : $item['address']) . '" class="' . ($selected === 'selected' ? 'active' : null) . '">' . $item['name'] . '</a></li>';
          
          ?>
        </nav>
      </div>
    </div>
  </header>
</div>
<div id="banner-wrapper">
  <!-- Banner -->
  <div class="5grid-layout">
    <div class="row">
      <div class="12u">
        <div class="row">
          <div id="banner">
            <div class="imgwrap"> <a href="#"><img src="<?=BASE?>/themes/iridium/images/pics01.jpg" alt=""></a></div>
          </div>
          <div class="shadow"><a href="#"><img src="<?=BASE?>/themes/iridium/css/images/banner-shadow-bg.png" height="25" alt=""></a></div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="wrapper">
  <div id="main-wrapper">
    <div class="divider1"></div>
    <div class="12u" id="main-content">
      <div class="5grid-layout">
        <div class="row">
          <div class="8u">
            <?=$this->main?>
          </div>
          <div class="4u">
            <?=$this->sidebar?>
          </div>
        </div>
      </div>
    </div>
    <div class="divider1"></div>
    <div id="footer-wrapper">
      <div class="12u">
        <div class="5grid-layout">
          <div class="row">
            <div class="4u">
              <?=$this->row_1_col_1?>
            </div>
            <div class="4u">
              <?=$this->row_1_col_2?>
            </div>
            <div class="4u">
              <?=$this->row_1_col_3?>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="divider2"></div>
    <div id="marketing-wrapper">
      <div class="5grid-layout">
        <div class="row">
          <div class="4u">
            <section>
              <?=$this->row_2_col_1?>
            </section>
          </div>
          <div class="4u">
            <section>
              <?=$this->row_2_col_2?>
            </section>
          </div>
          <div class="4u">
            <section>
              <?=$this->row_2_col_3?>
            </section>
          </div>
        </div>
      </div>
    </div>
    <div class="divider3"></div>
  </div>
</div>
<div id="copyright">
  <p><?=$this->registry->config->footer?> | Images: <a target="_blank" href="http://fotogrph.com/">Fotogrph</a> | Design: <a target="_blank" href="http://html5templates.com/">HTML5Templates.com</a></p>
</div>
</body>
</html>