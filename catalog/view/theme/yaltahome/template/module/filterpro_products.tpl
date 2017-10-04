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
						<h5><?php echo $product['name']; ?></h5>
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