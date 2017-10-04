<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>
		
		<!--STYLE-->
		<link href="catalog/view/theme/yaltahome/css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/reset.css">
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/fonts.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/style.css">
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/media.css">
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/non-responsive.css">
		<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
		
		<!--JQUERY LIBRARY-->
		<script src="catalog/view/theme/yaltahome/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
		<script src="catalog/view/theme/yaltahome/js/common.js"></script>
		
		<!--BOOTSTRAP-->
		<script src="catalog/view/theme/yaltahome/js/bootstrap.js"></script>
		
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<!-- HTML5 for IE -->
		<!--[if IE]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<!-- OWL-CAROUSEL -->
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/owl.carousel.css">
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/owl.theme.css">
		<script src="catalog/view/theme/yaltahome/js/owl.carousel.min.js"></script>
		
		<!--SLICK CAROUSEL -->
		<script src="catalog/view/theme/yaltahome/js/slick.min.js"></script>
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/slick.css">
		<link rel="stylesheet" href="catalog/view/theme/yaltahome/css/slick-theme.css">
		
		<!--FAVICONS-->
		<link rel="apple-touch-icon" sizes="180x180" href="catalog/view/theme/yaltahome/favicons/apple-touch-icon.png">
		<link rel="icon" type="image/png" href="catalog/view/theme/yaltahome/favicons/favicon-32x32.png" sizes="32x32">
		<link rel="icon" type="image/png" href="catalog/view/theme/yaltahome/favicons/favicon-16x16.png" sizes="16x16">
		<link rel="manifest" href="catalog/view/theme/yaltahome/favicons/manifest.json">
		<link rel="mask-icon" href="catalog/view/theme/yaltahome/favicons/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="theme-color" content="#ffffff">
		
		<!-- COLORBOX -->
		<link rel="stylesheet" href="catalog/view/javascript/jquery/colorbox/colorbox.css">

				
		<?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
    <?php } ?>
		
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
		
		<?php foreach ($styles as $style) { ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
		
		<?php foreach ($scripts as $script) { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>

    <?php echo $google_analytics; ?>

</head>
<body>
                      
	<!-- start header -->
	<header class="header">
    <div class="top-border-line"></div>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-default navbar-static">
                                <div class="navbar-header">
                                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".js-navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <?php if ($logo) { ?>
																			<a class="navbar-brand" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
																		<?php } ?>
                                    <address>
                                        <p><?php echo $adress; ?></p>
                                        <a href="tel: <?php echo $tel; ?>"><?php echo $tel; ?></a>
                                    </address>
                                </div>
                                <div class="collapse navbar-collapse js-navbar">
                                    <div class="block-menu">
                                        <ul class="nav navbar-nav navbar-right">
                                            <li class="dropdown">
                                                <div class="line"></div>
                                                <a id="drop1" href="<?php echo $about_link; ?>" class="dropdown-toggle" data-toggle="">
                                                О нас
                                                    <span class="caret"></span>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="nav navbar-nav navbar-right">
                                            <li class="dropdown">
                                                <div class="line"></div>
                                                <a id="drop1" href="<?php echo $services_link; ?>" class="dropdown-toggle" data-toggle="">
                                                Услуги
                                                    <span class="caret"></span>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="nav navbar-nav navbar-right">
                                            <li class="dropdown">
                                                <div class="line"></div>
                                                <a id="drop1" href="<?php echo $news_link; ?>" class="dropdown-toggle" data-toggle="">
                                                Новости
                                                    <span class="caret"></span>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="nav navbar-nav navbar-right">
                                            <li class="dropdown">
                                                <div class="line"></div>
                                                <a id="drop1" href="<?php echo $contacts_link; ?>" class="dropdown-toggle" data-toggle="">
                                                Контакты
                                                    <span class="caret"></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                        </nav>

                        <!-- start main header -->

                        <header class="header-main">
                            <div class="search-block" id="search">
															<input type="search" name="search" placeholder="Поиск по №">
															<input type="submit" id="search-button" value="Искать">
														</div>
                            <ul>
                                <li>
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a id="drop1" href="<?php echo $rooms_link; ?>" class="" data-toggle="">
                                                Квартиры
                                                <span class="caret"></span>
                                            </a>
																						<ul class="dropdown-menu">
																						<?php foreach($rooms as $room){ ?>
																							<li><a href="<?php echo $room['href']?>"><?php echo $room['name']?></a></li>
																						<?php } ?>
                                            </ul>
                                        </li>
                                    </ul>
                                <li><a href="<?php echo $house_link; ?>">Дома </a>
                                <li><a href="<?php echo $plot_link; ?>">Участки</a>
                                <li><a href="<?php echo $buildings_link; ?>">Новостройки</a>
                                <li><a href="<?php echo $commercial_link; ?>">Коммерческие</a>
                                <li><a href="<?php echo $rent_link; ?>">Аренда</a>
                                <li><a href="<?php echo $elite_link; ?>">Элитная</a>
                            </ul>
                        </header>
                        <!-- end main header -->
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->