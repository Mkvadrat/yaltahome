<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      
			<h1><img src="view/image/admin_theme/base5builder_impulsepro/icon-extensions-large.png" alt="" /> <?php echo $heading_title; ?></h1>
			
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <select name="imagemanager_language" id="input-language" class="form-control" style="width: 100%; margin-top: 40px;">
          <?php foreach($languages as $short => $language){ ?>
            <?php if($short == $current_language){ ?> 
              <option value="<?php echo $short; ?>" selected="selected"><?php echo $language; ?></option>
            <?php }else{ ?>
              <option value="<?php echo $short; ?>"><?php echo $language; ?></option>
            <?php } ?>
          <?php } ?>
        </select>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>