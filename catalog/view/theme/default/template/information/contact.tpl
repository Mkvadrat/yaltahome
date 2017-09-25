<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

    <style>
        .content {
            border: none !important;
        }
        h2.contact-caption {
            font-family: avante,sans-serif;
            font-size: 24px;
            margin-bottom: 40px;
        }
        .contact-item {
           height:170px;
        }
        .contact-item .contact-image {
            float: left;
            margin-right: 10px;
            width: 135px;
        }
        .contact-item .contact-image img {
            max-width: 100%;
            height: auto;
            border-radius: 135px;
        }
        .contact-item .contact-desc {
            margin-left: 150px;
        }
        .contact-item h2 {
            font-family: avante,sans-serif;
            font-weight: bold;
            font-size: 18px;
            white-space: nowrap;
        }
        .contact-item p {
            margin: 0px;
            padding: 2px 0px;
            font-size: 14px;
        }
        .contact-item a {
            color: #0081c8;
            font-size: 14px;
        }
        .center-contact {
            width: 520px;
            margin: 40px auto 0px;
        }
        .inline-contact {
            width: 420px;
            display: inline-block;
            vertical-align: top;
            margin-right: 50px;
        }
        .contact-left-block {
            float: left;
            margin-right: 40px;
        }
        .buttons {
            background: none;
            border: none;
        }
    </style>
    <div class="contact-item center-contact">
        <div class="contact-image"><img src="/image/contacts/contact-1.jpg" /></div>
        <div class="contact-desc">
            <h2>Лубинец Сергей Сергеевич</h2>
            <p>Директор Агентства недвижимости «Партнер Плюс» г. Ялта</p>
            <p>Телефон: +7 (978) 015-86-44</p>
            <p>Skype: Lubinetss</p>
            <p>Email: <a href="mailto:info@yaltapartner.ru">Lss@yaltapartner.ru</a></p>
        </div>
    </div>

    <h2 class="contact-caption">Сотрудники</h2>

    <div class="contact-item inline-contact">
        <div class="contact-image"><img src="/image/contacts/contact-2.jpg" /></div>
        <div class="contact-desc">
            <h2>Демчук Сергей Викторович</h2>
            <p>Телефон: +7 (978) 853-91-04</p>
            <p>Skype: matrosn2004</p>
            <p>Email: <a href="mailto:dsv@yaltapartner.ru">dsv@yaltapartner.ru</a></p>
        </div>
    </div>
    <div class="contact-item inline-contact">
        <div class="contact-image"><img src="/image/contacts/contact-3.jpg" /></div>
        <div class="contact-desc">
            <h2>Игнатенко Алексей Алексеевич</h2>
            <p>Телефон: +7 (978) 854-20-27</p>
            <p>Skype: ignalal</p>
            <p>Email: <a href="mailto:ignalal@yaltapartner.ru">partneryalta@mail.ru</a></p>
        </div>
    </div>
    <div class="contact-item inline-contact">
        <div class="contact-image"><img src="/image/contacts/contact-4.jpg" /></div>
        <div class="contact-desc">
            <h2>Романова Марина Михайловна</h2>
            <p>Телефон: +7 (978) 761-26-65</p>
            <p>Skype: mari080375</p>
            <p>Email: <a href="mailto:mr@yaltapartner.ru">mr@yaltapartner.ru</a></p>
        </div>
    </div>
    <div class="contact-item inline-contact">
        <div class="contact-image"><img src="/image/contacts/contact-5.jpg" /></div>
        <div class="contact-desc">
            <h2>Иваненко Андрей Владимирович</h2>
            <p>Телефон: +7 (978) 860-62-16</p>
            <p>Skype: partner.1983</p>
            <p>Email: <a href="mailto:liv@yaltapartner.ru">liv@yaltapartner.ru</a></p>
        </div>
    </div>

    <div style="height:40px"></div>

  <div class="contact-left-block">
      <h1>Контакты</h1>
      <h2><?php echo $text_location; ?></h2>

          <div><div><?php echo $text_address; ?><br />
                  <?php echo $store; ?><br />
                  <?php echo $address; ?></div>
              <div><br />
                  <?php if ($telephone) { ?>
                      <?php echo $text_telephone; ?><br />
                      <?php echo $telephone; ?><br />
                      <br />
                  <?php } ?>
                  <?php if ($fax) { ?>
                      <b><?php echo $text_fax; ?></b><br />
                      <?php echo $fax; ?>
                  <?php } ?>
              </div>
          </div>
  </div>

  <div>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

    <h1><?php echo $text_contact; ?></h1>
    <div class="content">
    <div style="float:left;margin-right:20px">
        <b><?php echo $entry_name; ?></b><br />
        <input type="text" name="name" value="<?php echo $name; ?>" />
        <br />
        <?php if ($error_name) { ?>
        <span class="error"><?php echo $error_name; ?></span>
        <?php } ?>
        <br />
    </div>
    <div style="float:left;">
        <b><?php echo $entry_email; ?></b><br />
        <input type="text" name="email" value="<?php echo $email; ?>" />
        <br />
        <?php if ($error_email) { ?>
        <span class="error"><?php echo $error_email; ?></span>
        <?php } ?>
        <br />
     </div>
    <div style="overflow: hidden;width:100%">
        <b><?php echo $entry_enquiry; ?></b><br />
        <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
        <br />
        <?php if ($error_enquiry) { ?>
        <span class="error"><?php echo $error_enquiry; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
        <br />
        <img src="index.php?route=information/contact/captcha" alt="" />
        <?php if ($error_captcha) { ?>
        <span class="error"><?php echo $error_captcha; ?></span>
        <?php } ?>
        </div>
        <div class="buttons">
          <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
        </div>
     </div>
  </form>
  </div>
  <?php echo $content_bottom; ?></div>
    <script type="text/javascript">
        window.onload = function(){
            jQuery('html, body').animate({scrollTop:580}, 'fast');
        }
    </script>
<?php echo $footer; ?>