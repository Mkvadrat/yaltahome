<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container-fluid bg-main"><?php echo $content_top; ?>
<div class="container">
<div class="row">
<div class="col-md-12">
<main class="marg-top main">

<!-- start about -->

<div class="main-contacts">

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

<!-- start header content -->

<?php echo $information_info; ?>

<!-- end header content -->

<div class="col-md-8">
<h3 class="h4-title">Написать нам</h3>

<form id="form" class="contacts-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

<label>Ваше имя:</label>
<input type="text" name="name" value="<?php echo $name; ?>" />

<?php if ($error_name) { ?>
<span class="error"><?php echo $error_name; ?></span>
<?php } ?>

<label>Ваш E-Mail:</label>
<input type="text" name="email" value="<?php echo $email; ?>" />

<?php if ($error_email) { ?>
<span class="error"><?php echo $error_email; ?></span>
<?php } ?>

<label>Ваш вопрос:</label>
<textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>

<?php if ($error_enquiry) { ?>
<span class="error"><?php echo $error_enquiry; ?></span>
<?php } ?>

<label>Введите код, указанный на картинке:</label>
<input type="text" name="captcha" value="<?php echo $captcha; ?>" />

<img src="index.php?route=information/contact/captcha" alt="" />
<br>
<?php if ($error_captcha) { ?>
<span class="error"><?php echo $error_captcha; ?></span>
<?php } ?>

</form>
</div>

<p class="continue-block"><a onclick="$('#form').submit();" class="continue">Продолжить</a></p>

</div>

<!-- end about -->

</main>
</div>
</div>
</div>

<?php echo $content_bottom; ?></div>

<?php echo $footer; ?>