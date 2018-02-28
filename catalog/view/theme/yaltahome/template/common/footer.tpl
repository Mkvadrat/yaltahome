    <!-- start footer -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <footer class="footer-main">
                    <div class="call-us">
                        <span class="call-us-title">Позвоните нам!</span>
                        <p><a href="tel: <?php echo $tel; ?>"><?php echo $tel; ?></a></p>
                    </div>

                    <ul class="footer-nav">
                        <li><a href="<?php echo $about_link; ?>">О нас</a></li>
                        <li><a href="<?php echo $services_link; ?>">Услуги</a></li>
                        <li><a href="<?php echo $news_link; ?>">Новости</a></li>
                        <li><a href="<?php echo $contacts_link; ?>">Контакты</a></li>
                    </ul>
                </footer>
            </div>

            <div class="col-md-12">
                <footer class="footer">
                    <div class="make-in-M2">
                        <p>
                            <a href="http://mkvadrat.com/">Сделано в</a>
                        </p>
                    </div>

                    <address>
                        <p>
                            skype: <a href="skype:<?php echo $skype; ?>"><?php echo $skype; ?></a>
                            <a href="<?php echo $email; ?>"><?php echo $email; ?></a>
                        </p>
                    </address>

                    <p><small>Все права защищены &#169; <a href="Yaltahome.ru">centrestate.ru</a></small></p>
                </footer>
            </div>
        </div>
    </div>
    <!-- end footer -->
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter47058258 = new Ya.Metrika({
                    id:47058258,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/47058258" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
</body>
</html>