<!--<div class="container-fluid">
 <div class="row">

  <a href="#" class="box-heading feature-block"><?php echo $heading_title; ?><span class="caret"></span></a>
     <div class="bl-content">
   <?php foreach ($products as $product) { ?>
	<div class="cont" style="width: 300px; height:140px; margin-bottom:10px; overflow: hidden;">
        <?php if ($product['thumb']) { ?>

        <div class="image" >
<a href="<?php echo $product['href']; ?>">
<span class="name"><?php echo $product['name']; ?></span>
<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />

</a></div>
        <?php } ?>
    </div>

  <?php } ?>
  </div>
 </div>
</div>
<script>
    jQuery('.feature-block').click(function(){
        $(this).parent().parent().offset(function(i,val){
            jQuery('html, body').animate({scrollTop:val.top-10}, 'fast');
        });
    });

</script>-->

    <!-- start main -->
    <div class="container-fluid bg-main">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <main class="marg-top main">
                        <!-- start section-2 -->
                        <section class="section-2">
                            <ul class="section-2-blocks">
                                <li class="border-right">
											<?php echo $line_first; ?>
                                </li>
                                <li>
                                    <div class="urgent-object-block">
                                       <h3 class="h3-title">Срочные <span>объекты</span></h3>

                                       <div class="last-add">
                                            <h4 class="h4-title">последнее <span>добавленное</span></h4>

                                            <p class="wrapper-block">
															<?php if ($latest_product){ ?>
															<?php foreach($latest_product as $product){ ?>
                                                <a href="<?php echo $product['link']; ?>">
                                                    <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['title']; ?>" />
                                                    <span class="sale-title"><?php echo $product['name']; ?></span>
                                                </a>
															<?php } ?>
															<?php } ?>
                                            </p>
                                       </div>
					
                                       <ul class="urgent-object-list">
													<?php if ($products){ ?>
													<?php foreach ($products as $product) { ?>
                                            <li>
                                                <p>
                                                    <a href="<?php echo $product['href']; ?>">
                                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                                                        <?php echo $product['description']; ?>
                                                    </a>
                                                </p>
                                            </li>
													<?php } ?>
													<?php } ?>
                                       </ul>
																																								
													<?php echo $line_second; ?>
																																								
                                      </div>
                                </li>
                            </ul>
                        </section>
                        <!-- end section-2 -->
                    </main>
                </div>
            </div>
        </div>
    </div>
    <!-- end main -->