<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container-fluid bg-main"><?php echo $content_top; ?>

<div class="container">
<div class="row">
<div class="col-md-12">
<main class="marg-top main">

<!-- start about -->

<div class="main-news-list">

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

<h2 class="first-title"><?php echo $heading_title; ?></h2>

<?php if ($article) { ?>
<?php foreach ($article as $articles) { ?>
<section>
<?php if ($articles['thumb']) { ?>
<div class="image"><a href="<?php echo $articles['href']; ?>"><img src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" /></a></div>
<?php } ?>

<p class="date"><?php echo $articles['date_added']; ?></p>

<span class="h4-title news-title"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></span>

<p><?php echo $articles['description']; ?><span class="more-comment-block"><a class="more" href="<?php echo $articles['href']; ?>">Подробнее</a> <span class="comments"><?php if ($articles['acom']) { echo $text_comments; ?>: <?php echo $articles['total_comments']; } ?></span></span></p>
</section>

<?php } ?>

<?php echo $pagination; ?>

<?php }else{ ?>
<section>
<p><?php echo $text_empty; ?>
<a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></p>
<section>
<?php } ?>
</div>

<!-- end about -->

</main>
</div>
</div>
</div>
				
<?php echo $content_bottom; ?></div>
    
<?php echo $footer; ?>