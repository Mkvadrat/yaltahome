<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>

  <?php if ($categories) { ?>
  <div class="box">

	<div class="box-content cat-menu">
		<?php foreach ($categories as $category) { ?>
		    <?php if ($category['thumb']) { ?>
			<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></a></div>
			<?php } ?>
			<a href="<?php echo $category['href']; ?>"  class="name subcatname"><?php echo $category['name']; ?></a>

		<?php } ?>
	</div>
  </div>
  <?php } ?>
  <div class="border">



  <?php if ($thumb || $description) { ?>
  <div class="category-info">
      <h1><?php echo $heading_title; ?></h1>
    <?php if ($thumb) { ?>
    <div class="image" style="margin-bottom: 20px"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>




<?php echo $subCatInfo ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>

  </div>
 
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
    <div class="pr_left">
	  <?php if ($product['special']) { ?>
		<div class="sale"><?php echo $product['percent']; ?>%</div>
      <?php } ?>
      <?php if ($product['thumb']) { ?>
      <div class="image">
          <a href="<?php echo $product['href']; ?>">
             
              <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
          </a>
      </div>
      <?php } ?>
        <div class="pr_center">

 <?php if($product['badge'] && trim($product['badge'])!='sold'){
                echo '<i class="'.$product['badge'].'"></i>';
              } else if($product['badge'] && trim($product['badge'])=='sold'){
                echo '<a href="'.$product['href'].'" class="'.$product['badge'].'"></a>';
                }
              ?>
            <?php if (!empty($product['model'])) { ?>
                <!--<div class="p_model">№&nbsp;<?php echo $product['model'] ?></div>-->
            <?php } ?>
<div class="name"><a href="<?php echo $product['href']; ?>">
        <?php echo $product['name']; ?>
    </a></div>
      <div class="description"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="bottom_info">
      <div class="read_more">
          <a href="<?php echo $product['href']; ?>">Подробнее</a>
      </div>
	  <div class="unit"><?php echo $text_unit; ?><?php echo $product['dimension']['unit']; ?></div>
      <div class="price">


      </div>
      </div>
      <?php } ?>

   </div><!--center-->
    </div>
    <?php } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript">
window.onload = function(){ 
jQuery('html, body').animate({scrollTop:580}, 'fast');
}
</script> 
<?php echo $footer; ?>