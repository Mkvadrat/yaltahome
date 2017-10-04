<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?><?php echo $content_top; ?>
<div class="container">
  <div class="row">
    <div class="col-md-12">
<div id="content" class="not-found">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="border">
  <div class="content"><?php echo $text_error; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>