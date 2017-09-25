<?php echo $header; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>

  <div class="breadcrumb">
    <?php
    $count = count($breadcrumbs);
    $i=1;
    foreach ($breadcrumbs as $breadcrumb) {
     if($i!=$count){
     echo $breadcrumb['separator']; ?>
      <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php
      }
     else{
     echo $breadcrumb['separator']; ?><?php echo $breadcrumb['text']; ?>
     <?php }
        $i++;
     } ?>
  </div>
  <div class="border">
  <div class="product-info" id="pr_link">
  <h1><?php echo $heading_title; ?></h1>
    <?php if ($thumb || $images) { ?>
    <div class="left">
	  <?php if ($special) { ?>
		<div class="sale"><?php echo $percent; ?>%</div>
      <?php } ?>
        <?php $i=1; ?>
      <?php if ($thumb) { ?>
        <script type="text/javascript">



            $(document).ready(function(){




                $('.slider-for').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: true,
                    prevArrow:'<div class="car-prev"></div>',
                    nextArrow:'<div class="car-next"></div>',
                    fade: true,
                    asNavFor: '#carousel-thumb'
                });
            $('#carousel-thumb').slick({
                autoplay: false,
                variableWidth: true,
                autoplaySpeed: 10000,
                pauseOnHover: false,
                slidesToShow: 4,
                slidesToScroll: 1,
                asNavFor: '.slider-for',
                dots: false,
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
        <div class="image">
          <?php if ($images) { ?>
          <div class="slider-for">
              <?php foreach ($images as $image) { ?>
              <div>
                  <a class="thumbnail colorbox" href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>"  onclick="return false;"><img class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['full']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              </div>
              <?php $i++; ?>
              <?php } ?>
          </div>
              <?php if (trim($upc) == 'sold') : ?>
                  <div class="sold"></div>
              <?php endif; ?>
              <script type="text/javascript">
                  $(document).ready(function(){
                      var h = $('.slider-for').find('img.active').height() + 10;
                      var sold = $('.image').find('.sold');
                      $(sold).css('height', h);
                      $(sold).click(function(){
                          $('.slider-for').find('img.active').trigger('click');
                      });
                  });
              </script>
          <?php } ?>

          <?php if ($images) { ?>
          <div id="carousel-thumb" class="thumb-gallery">
             <?php foreach ($images as $image) { ?>
              <div>
                    <a class="thumbnail " href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>" onclick="return false;"><img data-img="<?php echo $image['full']; ?>" class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              </div>
              <?php $i++; ?>
              <?php } ?>
          </div>
          <?php } ?>
      </div>
      <?php } ?>

    </div>
    <?php } ?>
    <div class="right">
        <p><?php echo $text_price; ?></p>
      <?php if ($price) { ?>
      <div class="price">
        <?php echo $rub; ?> руб.
          <span style="font-size:22px; display: block;"><?php echo $price; ?> $</span>
      </div>
      <?php } ?>
        <div class="description">
            <p>Объект № <?php echo $model; ?></p>
        </div>
        <div class="agent">
            <img src="<?php echo $agent['image']; ?>" />
            <p><?php echo $agent['firstname']; ?> <?php echo $agent['lastname']; ?></p>
            <p><?php echo $agent['phone_1']; ?></p>
            <p><?php echo $agent['phone_2']; ?></p>
            <p class="skype"><a href="skype:<?php echo $agent['skype']; ?>?call"><?php echo $agent['skype']; ?></a></p>
            <p class="mail"><a href="mailto:<?php echo $agent['email']; ?>"><?php echo $agent['email']; ?></a></p>
        </div>
      <?php if ($options) { ?>
      <div class="options">
        <h2><?php echo $text_option; ?></h2>
        <br />
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <table class="option-image">
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <tr>
              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
        <br />
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>


    </div>
  </div>
  <div id="tabs">
      <ul>
          <li><a href="#tab-description" class="lnk"><?php echo $tab_description; ?></a></li>
          <li> <a href="#tab-map" class="lnk">На карте</a></li>
      </ul>
  <div id="tab-description" class="tab-content"><?php echo $description; ?></div>


  <div id="tab-map" class="tab-content">
      <div id="map" style="width:968px; height:328px"></div>
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
      <? } ?>
  </div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>

<script type="text/javascript"><!--
    $(function() {
    $('#tabs').tabs();
    });
    //--></script>

<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('#cart').addClass('active');
		
				$('#cart').load('index.php?route=module/cart #cart > *');
		
				setTimeout(function() {$('#cart').removeClass('active');}, 5000);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--

if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//-->
window.onload = function(){ 
jQuery('html, body').animate({scrollTop:580}, 'fast');
}
</script> 
<?php echo $footer; ?>
