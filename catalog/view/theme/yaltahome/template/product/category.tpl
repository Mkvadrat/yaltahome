<?php echo $header; ?><?php echo $content_top; ?>
<div class="container-fluid bg-main"><?php echo $column_right; ?>

<div class="container">
<div class="row">
<div class="col-md-12">
<main class="marg-top main">
<div class="main-objects">

<?php echo $column_left; ?>

<?php echo $top_description; ?>

<?php if($maps){ ?>
<p class="h2-title"><?php echo $text_maps;?></p>
<!-- YANDEX MAPS -->
<script src="http://api-maps.yandex.ru/2.0/?load=package.standard&lang=ru-RU" type="text/javascript"></script>
<div class="map-block">
    <div id="map-category" style="width:100%; height:300px"></div>
    
    <script type="text/javascript">
        var myMap;
        ymaps.ready(init);
        
        function init(){
            var myCoords = [<?php echo $maps; ?>];  
            var myGeocoder = ymaps.geocode(myCoords);
            myGeocoder.then(
            function (res){
                var firstGeoObject = res.geoObjects.get(0),
                myMap = new ymaps.Map
                ("map-category",{
                    center: firstGeoObject.geometry.getCoordinates(),
                    zoom: 17
                });
                    var myPlacemark = new ymaps.Placemark(
                    firstGeoObject.geometry.getCoordinates(),
                {
                    iconContent: ''
                },
                {
                    preset: 'twirl#blueStretchyIcon'
                });
                    myMap.geoObjects.add(myPlacemark);
                    myMap.controls.add(new ymaps.control.ZoomControl()).add(new ymaps.control.ScaleLine()).add('typeSelector');
            },
            function (err){
                alert(err.message);
            });
        }
    </script>
</div>
<?php } ?>

<?php if ($products) { ?>
<div class="objects-list-block">

<span class="main-objects-title"><?php echo $heading_title; ?></span>

<ul class="objects-list">
<div class="product-list">
<?php foreach ($products as $product) { ?>
<li>
<div class="object-box">
<?php if($product['badge'] == 2){ ?>
<img class="label-object" src="catalog/view/theme/yaltahome/images/label-new.png" alt="">
<?php }elseif($product['badge'] == 3){ ?>
<img class="label-object" src="catalog/view/theme/yaltahome/images/label-urgently.png" alt="">
<?php }elseif($product['badge'] == 4){ ?>
<img class="label-object" src="catalog/view/theme/yaltahome/images/label-sale.png" alt="">
<?php } ?>
		
<?php if ($product['thumb']) { ?>  
<a href="<?php echo $product['href']; ?>">
<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
</a>
<?php }else{ ?>
<a href="<?php echo $product['href']; ?>">
<img src="catalog/view/theme/yaltahome/images/object-list.jpg" alt="" />
</a>
<?php } ?>
</div>
<p class="title-list"><?php echo $product['name']; ?></p>
<p><?php echo $product['description']; ?></p>
<p>

<?php if ($product['price']) { ?>
<?php if (!$product['special']) { ?>
<span>Цена: <b><?php echo $product['rub']; ?> RUB</b> / <b><?php echo $product['price']; ?> $</b></span>
<?php } else { ?>
<span>Цена: <b><?php echo $product['special']; ?> RUB</b></span>
<?php } ?>
<?php } ?>
<a href="<?php echo $product['href']; ?>">Подробнее</a>
</p>
</li>
<?php } ?>
</div>
</ul>

<div class="pagination"><?php echo $pagination; ?></div>

<div class="clear-both"></div>

<?php echo $description; ?>
</div>
</div>
<?php }else{ ?>
<div class="objects-list-block">
<span class="main-objects-title"><?php echo $heading_title; ?></span>
<?php echo $text_empty; ?>
</div>
<?php } ?>
</main>
</div>
</div>
</div>


<?php echo $content_bottom; ?></div>

<?php echo $footer; ?>