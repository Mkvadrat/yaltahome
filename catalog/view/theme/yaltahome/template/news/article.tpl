<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container-fluid bg-main"><?php echo $content_top; ?>

<div class="container">
<div class="row">
<div class="col-md-12">
<main class="marg-top main">

<!-- start about -->

<div class="main-news">

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

<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
<script src="//yastatic.net/share2/share.js"></script>
<div class="ya-share2" data-services="collections,vkontakte,facebook,odnoklassniki,moimir,gplus,twitter,blogger,evernote,linkedin,lj,pocket,sinaWeibo,tencentWeibo,tumblr,viber,whatsapp,skype,telegram" data-limit="3"></div>

<?php if (isset($news_info)) { ?>
<h2 class="first-title"><?php echo $heading_title; ?></h2>

<?php if ($thumb) { ?>
<a class="colorbox" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img class="article-image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
<?php } ?>
<?php echo $description; ?>
<article>

<section>

<?php if ($acom != 0) { ?>

<?php if ($comment) { ?>
<?php foreach ($comment as $comment) { ?>
<div class="article-content"><div class="article-author-head"><b><?php echo $comment['author']; ?></b> - <?php echo $comment['date_added']; ?></div>
<br />
<?php echo $comment['text']; ?></div>
<?php } ?>
<?php echo $pagination; ?>
<?php } ?>
				
<p>Комментариев к статье: "<?php echo $heading_title; ?>" - <?php echo $title_comments; ?> <?php echo $item_comments; ?></p>
<p id="review-title"><?php echo $writec; ?></p>

<div class="form-comment">
    
<label for="your-name"><strong><?php echo $entry_name; ?></strong></label>
<input id="your-name" type="text" name="name" value="" />

<label name="your-comment"><strong><?php echo $entry_review; ?></strong></label>
<textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>

<span style="font-size: 11px;"><?php echo $text_note; ?></span><br />

<label name="your-comment"><strong><?php echo $entry_captcha; ?></strong></label>
<input type="text" name="captcha" value="" />

<img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />

</div>

<p class="continue-block"><a class="continue" id="button-comment">Продолжить</a></p>
<p class="continue-block"><a class="continue" onclick="location='<?php echo $news; ?>'">Все новости</a></p>
</article>

<?php } ?>
<?php } ?>

</div>
<!-- end about -->

</main>
</div>
</div>
</div>

<?php echo $content_bottom; ?></div>

<script type="text/javascript"><!--
$(document).ready(function() {
$('.colorbox').colorbox({
overlayClose: true,
opacity: 0.5,
rel: "colorbox"
});
});
//--></script>

<script type="text/javascript"><!--
$('#button-comment').bind('click', function() {
$.ajax({
type: 'POST',
url: 'index.php?route=news/article/writecomment&news_id=<?php echo $news_id; ?>',
dataType: 'json',
data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
beforeSend: function() {
$('.success, .warning').remove();
$('#button-comment').attr('disabled', true);
$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
},
complete: function() {
$('#button-comment').attr('disabled', false);
$('.attention').remove();
},
success: function(data) {
if (data.error) {
$('#review-title').after('<div class="warning">' + data.error + '</div>');
}

if (data.success) {
$('#review-title').after('<div class="success">' + data.success + '</div>');

$('input[name=\'name\']').val('');
$('textarea[name=\'text\']').val('');
$('input[name=\'captcha\']').val('');
}
}
});
});
//--></script>
<?php echo $footer; ?> 