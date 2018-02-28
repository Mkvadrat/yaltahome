<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container-fluid bg-main"><?php echo $content_top; ?>

<div class="container">
<div class="row">
<div class="col-md-12">
<main class="marg-top main">

<!-- start about -->

<div class="main-about">

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

<?php echo $description; ?>

<ul class="list-documents">
	<li><a class="fancybox" href="catalog/view/theme/yaltahome/images/inn.jpg"><img src="catalog/view/theme/yaltahome/images/inn.jpg" alt=""><span>ИИН</span></a></li>
	<li><a class="fancybox" href="catalog/view/theme/yaltahome/images/ip.jpg"><img src="catalog/view/theme/yaltahome/images/ip.jpg" alt=""><span>ИП</span></a></li>
</ul>

<p class="continue-block"><a class="continue" href="<?php echo $continue; ?>">Продолжить</a></p>

</div>

<!-- end about -->

</main>
</div>
</div>
</div>

<?php echo $content_bottom; ?></div>

<?php echo $footer; ?>