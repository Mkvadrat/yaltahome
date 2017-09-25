</div>
</div>
<div id="footer">
    <div class="footer-top">
        <div class="column ft-lf-menu" style="float: left;width: 70%;">
            <ul>
                <li>
                    <a href="/about_us">О компании</a>
                </li>
                <li>
                    <a href="/documents">Документы</a>
                </li>
                <li>
                    <a href="/all-news/">Новости</a>
                </li>
                <li>
                    <a href="/reviews">Отзывы</a>
                </li>
                <li>
                    <a href="/contact/">Контакты</a>
                </li>
            </ul>
        </div>

        <div class="column" style="float: right;width: 30%;">
            <ul>
                <li><a href="/sale/">Продажа</a></li>
                <li><a href="/rent/">Аренда</a></li>
                <li><a href="/services/">Услуги</a></li>
            </ul>
        </div>
        <div id="call-up">
            <a class="poplight" rel="popup_contact" href="#?w=600">
                <i class="glyphicon glyphicon-envelope gl-call"></i><br /><span>Заявка</span></div>
        </a>
        <div id="arrow-up"><a class="scroll-up" href="javascript:void(0) title="Back to Top">

            </a></div>

    </div>
    <div class="footer-bottom">
        <div class="card">
            <a href="/"><img alt="" title="" src="../image/data/logo-footer.png" border="0" /></a>
        </div>

        <div id="powered"><?php echo $powered; ?></div>

        <div class="share">
            <p>+7 (978) 084-10-06; +7 (978) 015-86-44</p>
            <p>e-mail:info@yaltapartner.ru</p>

        </div>
    </div>
</div>
</div>
<?php echo $feedback_form ?>
<script type="text/javascript">

    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 300) {
                $('#arrow-up').fadeIn();
            } else {
                $('#arrow-up').fadeOut();
            }
        });
    });

    jQuery('.scroll-up').click(function(){
        jQuery('html, body').animate({scrollTop:0}, 'slow');
    });
</script>

<!--<script type="text/javascript" src="//eyenewton.ru/scripts/callback.min.js" charset="UTF-8" async="async"></script> 
<script type="text/javascript">/*<![CDATA[*/var newton_callback_id="7ca4e7159590cd7c586623438182f06e";/*]]>*/</script>-->

</body></html>
