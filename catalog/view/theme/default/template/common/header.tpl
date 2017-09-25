<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8" />
    <title><?php echo $title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="/catalog/view/theme/default/stylesheet/bootstrap.css" rel="stylesheet">
    <link href="/catalog/view/theme/default/stylesheet/font-awesome.css rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
    <link href="catalog/view/theme/default/stylesheet/style.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <!-- ADD FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300italic,300,400italic,700,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <!-- ADD END -->
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
    <script src="https://code.jquery.com/jquery.js"></script>
    <script type="text/javascript" src="catalog/view/theme/default/js/common.js"></script>
    <script type="text/javascript" src="catalog/view/theme/default/js/bootstrap.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
     <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slick.css"/>
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.3.15/slick.min.js"></script>

    <?php foreach ($scripts as $script) { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>

    <?php } ?>

    <script src="catalog/view/javascript/dm-modal.js"></script>
    <?php echo $google_analytics; ?>
</head>
<body>
<div id="wrap">
<div id="header-bottom">
<div class="top-head">
    <?php if ($logo) { ?>
    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
    <?php } ?>
    <div id="header-info">Лучшее агентство <br><span style="text-align:right; float: right;">недвижимости в Ялте</span></div>
    <div id="partner-info"><img alt="" height="37" src="/catalog/view/theme/default/image/viber2.png" width="36" />&nbsp;+7 (978) 084-10-06
        <br />+7 (978) 015-86-44
        <br />info@yaltapartner.ru
        <div id="search">
            <div class="button-search"></div>
            <input type="text" name="search" type="submit" placeholder="Поиск по №" value="" />
        </div>
    </div>



</div>
<div class="box" style="margin: 0px 10px;width: 100%;position: relative;height: 341px; clear: both;">
    <div class="box-content" style="float: left;" id="slider-box">
        <div class="box-product">

            <div class="cat-block" style="float: left;width: 317px;">
                <div class="dropdown cat-head" style="text-align: center;position: relative;">
                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Продажа
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                        <?php foreach ($prodagas as $prodaga) { ?>
                        <li <?php if($prodaga['name']=='Горячие предложения') {echo 'class="hot"';} ?>><a href="<?php echo $prodaga['href']; ?>"><?php echo $prodaga['name']; ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="bs-example">
                    <div id="myCarousel1" class="carousel slide">
                        <!-- Carousel items -->
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/s-1-1.jpg" />
                        </div>
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/s-1-2.jpg" />
                        </div>
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/all-01.jpg">
                        </div>


                    </div>
                </div>


            </div>

            <div class="cat-block" style="float: left;width: 317px;">
                <div class="dropdown cat-head" style="text-align: center;position: relative;">
                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Аренда
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                        <?php foreach ($arends as $arenda) { ?>
                        <li <?php if($arenda['name']=='Горячие предложения') {echo 'class="hot"';} ?>><a href="<?php echo $arenda['href']; ?>"><?php echo $arenda['name']; ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="bs-example">
                    <div id="myCarousel2" class="carousel slide" data-interval="1000" data-ride="carousel" data-pause="false">

                        <div class="image active item" style="text-align: center">
                            <img src="../image/slider/s-2-1.jpg" />
                        </div>
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/s-2-2.jpg" />
                        </div>
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/all-02.jpg">
                        </div>

                    </div>
                </div>


            </div>
            <!-- myCarousel -->
            <div class="cat-block" style="float: left;width: 317px;">
                <div class="dropdown cat-head" style="text-align: center;position: relative;">
                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Услуги
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                        <li><a href="/quickly">Срочный выкуп</a></li>
                        <li><a href="/transactions">Сопровождение сделок</a></li>
                        <li><a href="/legal_services">Юридические услуги</a></li>
                        <li><a href="/transfer">Трансфер по Крыму</a></li>
                        <li><a href="/expert">Экспертные оценки</a></li>
                    </ul>
                </div>
                <div class="bs-example">
                    <div id="myCarousel3" class="carousel slide" data-interval="1000" data-ride="carousel" data-pause="false">
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/slider-03_02.png" />
                        </div>
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/slider-03_03.png" />
                        </div>
                        <div class="image item" style="text-align: center">
                            <img src="../image/slider/all-03.jpg" />
                        </div>

                    </div>
                </div>


            </div>

        </div>




    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){


        // первый аргумент - строка
        $('#myCarousel1').slick({
            autoplay: true,
            arrow: false,
            variableWidth: true,
            autoplaySpeed: 10000,
            pauseOnHover: false,
            onAfterChange: function(obj, index) {
                $('#myCarousel1').slickSetOption('autoplaySpeed', 30000);
                if(index == 3){
                    $('.cat-block').fadeIn(1000, function () {
                        $('.cat-block').css('margin-right','0px')
                    });
                    $('#slider-box').fadeIn(1000, function () {

                        $('#slider-box').css('margin','0px')
                    });
                    $('#myCarousel2').slickNext();
                    $('#myCarousel3').slickNext();
                }
                else{
                    $('.cat-block').css('margin-right','4px');
                    $('.cat-block:last-child').css('margin-right','0px');
                    $('#slider-box').css('margin','0px');
                    $('#myCarousel1').slickSetOption('autoplaySpeed', 30000);
                    $('#myCarousel2').slickSetOption('autoplaySpeed', 30000);
                    $('#myCarousel3').slickSetOption('autoplaySpeed', 30000);
                }
            }
        });
        $('#myCarousel2').slick({
            autoplay: true,
            arrow: false,
            variableWidth: true,
            autoplaySpeed: 20000,
            pauseOnHover: false,
            onAfterChange: function(obj, index) {
                $('#myCarousel2').slickSetOption('autoplaySpeed', 30000);
                if(index == 3){
                    $('#myCarousel2').slickSetOption('autoplaySpeed', 40000);
                }

            }
        });
        $('#myCarousel3').slick({
            autoplay: true,
            arrow: false,
            variableWidth: true,
            autoplaySpeed: 30000,
            pauseOnHover: false,
            onAfterChange: function(obj, index) {
                $('#myCarousel3').slickSetOption('autoplaySpeed',30000);
                if(index == 3){
                    $('#myCarousel3').slickSetOption('autoplaySpeed', 50000);
                }
            }
        });


    });



$(document).ready(function() {
var url=document.location.href;

 $.each($(".navbar-nav li a"),function(){
 if(this.href==url){$(this).parent().addClass('active');};
});

$.each($(".dropdown-menu li a"),function(){
if(this.href==url){
$(this).parent().addClass('active');
$(this).parent().parent().parent().addClass('open');
$(this).parent().parent().prev().addClass('active');

}
});

$.each($(".cat-menu a"),function(){
        if(this.href==url){$(this).addClass('active');};
});

$.each($("#footer .column a"),function(){
 if(this.href==url){$(this).addClass('active');};
 });
var body_width=0;
if (($(this).width()) >= 1060){

body_width=(($(this).width()-1040)/2)-130;
  $('#callme').css('right',body_width);
}

else{
 $('#callme').hover(function(){

            $(this).stop().animate({right:"0px"}, 1400);
$(this).fadeIn("slow");
        },
        function(){
            $(this).stop().animate({right:"-90px"}, 400);
        });
}


});


</script>

<div id="bs-example-navbar-collapse-2" class="collapse navbar-collapse">
    <ul class="nav navbar-nav" style="padding-top:0px;" >
        <li>
            <a href="/about_us">О компании</a>
        </li>
        <li>
            <a href="/documents">Документы</a>
        </li>
        <li>
            <a href="/all-news/">Новости</a>
        </li>
        <li>
            <a href="/reviews">Отзывы</a>
        </li>
        <li>
            <a href="/contact/">Контакты</a>
        </li>
    </ul>
</div>

</div>
<div id="container">
    <div id="notification"></div>