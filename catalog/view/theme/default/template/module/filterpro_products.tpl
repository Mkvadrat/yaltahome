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

        <?php if (!$product['special']) { ?>
          <span>Цена </span><span><?php echo $product['rub']; ?> руб.</span><br />
          <span><?php echo $product['price']; ?> $</span>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
      </div>
      </div>
      <?php } ?>

   </div><!--center-->
    </div>
    <?php } ?>