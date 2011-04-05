<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <link rel="shortcut icon" href="<?php echo image_path('/images/favicon.ico'); ?>" />
        <?php include_http_metas() ?>
        <?php include_metas() ?>
        <?php include_title() ?>
        <?php include_stylesheets() ?>
        <script language="javascript">
            baseUrl = "<?php echo substr(url_for('@homepage'), 0, strlen(url_for('@homepage')) - 1); ?>";
            baseUrl = "<?php echo sfContext::getInstance()->getRequest()->getRelativeUrlRoot(); ?>";
        </script>
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-22389085-1']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        </script>        
        <script type="text/javascript" language="JavaScript">
            reformal_wdg_domain    = "uberlov";
            reformal_wdg_mode    = 0;
            reformal_wdg_title   = "Uberlov";
            reformal_wdg_ltitle  = "";
            reformal_wdg_lfont   = "";
            reformal_wdg_lsize   = "";
            reformal_wdg_color   = "#FFA000";
            reformal_wdg_bcolor  = "#516683";
            reformal_wdg_tcolor  = "#FFFFFF";
            reformal_wdg_align   = "left";
            reformal_wdg_charset = "utf-8";
            reformal_wdg_waction = 0;
            reformal_wdg_vcolor  = "#9FCE54";
            reformal_wdg_cmline  = "#E0E0E0";
            reformal_wdg_glcolor  = "#105895";
            reformal_wdg_tbcolor  = "#FFFFFF";
 
            reformal_wdg_bimage = "http://reformal.ru/files/images/buttons/7688f5685f7701e97daa5497d3d9c745.png";
        </script>

        <script type="text/javascript" language="JavaScript" src="http://reformal.ru/tab6.js" />
        <noscript>
            <a href="http://uberlov.reformal.ru">Uberlov feedback</a> 
            <a href="http://reformal.ru"><img src="http://reformal.ru/i/logo.gif" />
            </a>
        </noscript>
        <?php include_javascripts() ?>
    </head>
    <body>
        <div id="page">
            <div id="header">
                <div id="logo"><?php echo link_to(image_tag('/images/logo.png'), '@homepage') ?></div>
                <div id="site_menu">
                    <ul>
                        <li><?php echo link_to('Карта мест', 'collector/locations') ?></li>
                        <li><?php echo link_to('Отчёты', 'profit/list') ?></li>
                        <li><?php echo link_to('Обсуждения', 'talk/list') ?></li>
                        <li><?php echo link_to('События', 'event/list') ?></li>
                        <?php if ($sf_user->isAnonymous()): ?>
                            <li><?php echo link_to('Вход', '@sf_guard_signin') ?></li>
                            <li><?php echo link_to('Регистрация', '@apply') ?></li>
                        <?php else: ?>
                            <li><?php echo link_to('Выход', '@sf_guard_signout') ?></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
            <div id="middle">
                <div id="left_layout">
                    <?php include_component('user', 'menu') ?>
                    <?php include_component('event', 'last') ?>
                    <?php include_component('location', 'last') ?>
                    <?php include_component('profit', 'last') ?>
                    <?php if (has_slot('extra')): ?>
                        <?php include_slot('extra'); ?>
                    <?php endif; ?>
                </div>

                <div id="right_layout">
                    <div id="content_menu">
                        <?php include_slot('content_menu') ?>
                    </div>

                    <?php if ($sf_user->hasFlash('notice')): ?>
                        <div class="flash_notice"><?php echo $sf_user->getFlash('notice') ?></div>
                    <?php endif; ?>

                    <?php if ($sf_user->hasFlash('error')): ?>
                        <div class="flash_error"><?php echo $sf_user->getFlash('error') ?></div>
                    <?php endif; ?>

                    <?php echo $sf_content ?>
                </div>
            </div>
            <div id="footer">
                Какие-то слова в футере
            </div>
        </div>
    </body>
</html>