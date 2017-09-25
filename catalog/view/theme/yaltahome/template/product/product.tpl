<?php echo $header; ?><?php echo $column_right; ?>
<div class="container-fluid bg-main"><?php echo $content_top; ?>

<div class="container">
<div class="row">
<div class="col-md-12">
<main class="marg-top main main-apartment">

<div class="bg-content">

<!-- start bread crumbs -->
<ul class="bread-crumbs">
<?php
$count = count($breadcrumbs);
$i=1;
foreach ($breadcrumbs as $breadcrumb) {
if($i!=$count){
echo $breadcrumb['separator']; ?>
<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
<?php
}
else{
echo $breadcrumb['separator']; ?><?php echo $breadcrumb['text']; ?>
<?php }
$i++;
} ?>
</ul>

<!-- end bread crumbs -->

<!-- start right sidebar -->

<aside class="right-sidebar">
<h2><?php echo $text_price; ?></h2>

<?php if ($price) { ?>
<div class="price">
<p><?php echo $rub; ?> руб. / <?php echo $price; ?> $</p>
</div>
<?php } ?>

<h2>Объект № <?php echo $model; ?></h2>

<address>
<?php if($image_agent){ ?>
<img src="<?php echo $image_agent; ?>" title="<?php echo $agent['firstname']; ?> <?php echo $agent['lastname']; ?>">
<?php } ?>
<p><?php echo $agent['firstname']; ?> <?php echo $agent['lastname']; ?></p>
<p><span>Тел.:</span> <?php echo $agent['phone_1']; ?></p>
<p><span>skype:</span> <?php echo $agent['skype']; ?></p>
<p><span>E-mail:</span> <?php echo $agent['email']; ?></p>
</address>
</aside>

<!-- end right sidebar -->

<!-- start title block -->

<h1 class="first-title"><?php echo $heading_title; ?></h1>

<!-- end title block -->

<!-- start apartments page -->

<div class="slider-block">
<?php if ($thumb || $images) { ?>
<?php if ($thumb && empty($images)) { ?>
<div class="thumb">
<a class="colorbox" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
</div>
<?php } ?>

<?php if ($images ) { ?>
<?php $i=1; ?>
<div class="slider-for">
<?php foreach ($images as $image) { ?>
<div>
<a class="thumbnail colorbox" href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>"  onclick="return false;"><img class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['full']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
</div>
<?php $i++; ?>
<?php } ?>
</div>

<div id="carousel-thumb" class="thumb-gallery">
<?php foreach ($images as $image) { ?>
<div>
<a class="thumbnail " href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>" onclick="return false;"><img data-img="<?php echo $image['full']; ?>" class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
</div>
<?php $i++; ?>
<?php } ?>
</div>
<?php } ?>
<?php } ?> 
</div>

<!-- end apartments page -->

<!-- start tabs -->

<!-- Start tabs -->

<div class="tabs-block">
<ul class="nav nav-tabs" role="tablist">
<li class="active sale-tab">
<a href="#description" aria-controls="sale" role="tab" data-toggle="tab">Описание</a>
</li>
<li class="metal-processing-tab">
<a href="#technical-requirements" aria-controls="metal-processing" role="tab" data-toggle="tab">На карте</a>
</li>
</ul>
<!-- Содержимое вкладок -->
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="description"><?php echo $description; ?></div>
<div role="tabpanel" class="tab-pane" id="technical-requirements">
<div id="map" style="width:100%; height:328px"></div>
<script src="http://api-maps.yandex.ru/2.0/?load=package.standard&lang=ru-RU" type="text/javascript"></script>
<?php if($ean) { ?>
<script type="text/javascript">
var myMap;
ymaps.ready(init);
function init()
{
ymaps.geocode('<?php echo $ean; ?>', {
results: 1
}).then
(
function (res)
{
var firstGeoObject = res.geoObjects.get(0),
myMap = new ymaps.Map
("map",
{
center: firstGeoObject.geometry.getCoordinates(),
zoom: 15
}
);
var myPlacemark = new ymaps.Placemark
(
firstGeoObject.geometry.getCoordinates(),
{
iconContent: ''
},
{
preset: 'twirl#blueStretchyIcon'
}
);
myMap.geoObjects
.add(myPlacemark);
myMap.controls
.add(new ymaps.control.ZoomControl()).add(new ymaps.control.ScaleLine()).add('typeSelector');
},
function (err)
{
alert(err.message);
}
);
}
</script>
<?php } ?>
</div>
</div>

<!-- End tabs -->

</div>
<!-- end tabs -->

</div>

</main>
</div>
</div>
</div>

<?php echo $content_bottom; ?></div>

<script type="text/javascript">
$(document).ready(function(){
$('.slider-for').slick({
slidesToShow: 1,
slidesToScroll: 1,
arrows: true,
prevArrow:'<div class="car-prev"></div>',
nextArrow:'<div class="car-next"></div>',
fade: true,
dots: false,
asNavFor: '#carousel-thumb'
});
$('#carousel-thumb').slick({
slidesToShow: 3,
slidesToScroll: 1,
asNavFor: '.slider-for',
dots: false,
centerMode: true,
focusOnSelect: true
});
});
</script>

<script type="text/javascript"><!--
$(document).ready(function() {
$('.colorbox').colorbox({
overlayClose: true,
opacity: 0.5,
rel: "colorbox"
});
});
//--></script>

<?php echo $footer; ?>