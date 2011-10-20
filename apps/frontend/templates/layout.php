<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <link rel="shortcut icon" href="<?php echo image_path('/images/favicon.ico'); ?>" />
        <?php include_http_metas() ?>
        <?php include_metas() ?>

        <title><?php echo get_slot('title', 'Uberлов — найди свое место.') ?></title>

        <?php include_stylesheets() ?>
        <script language="javascript">
            baseUrl = "<?php echo substr(url_for('@homepage'), 0, strlen(url_for('@homepage')) - 1); ?>";
            baseUrlFull = "<?php echo substr(url_for('@homepage', true), 0, strlen(url_for('@homepage', true)) - 1); ?>";
            baseUrl = "<?php echo sfContext::getInstance()->getRequest()->getRelativeUrlRoot(); ?>";
        </script>
        <?php if (sfConfig::get('sf_environment') == 'prod'): ?> 
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
        <?php endif; ?>
        <?php include_javascripts() ?>        
        <script type="text/javascript">
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
        <script type="text/javascript" language="JavaScript" src="http://reformal.ru/tab6.js">
        </script>
        <noscript>
            <a href="http://uberlov.reformal.ru">Uberlov feedback </a>
            <a href="http://reformal.ru">
                <img src="http://reformal.ru/i/logo.gif" />
            </a>
        </noscript>
    </head>
    <body>
        <div id="page">
            <div id="header" class="content">
                <div class="clear_fix">
                    <div id="logo">
                        <?php echo link_to(image_tag('/images/logo_new.png'), '@homepage') ?>
                    </div>
                    <div id="bleat">
                        <?php echo image_tag('/images/bleat2.png'); ?>
                    </div>
                </div>
                <div id="main_menu" class="clear_fix">
                    <ul class="clear_fix">
                        <li class="first<?php echo 'map' == $sf_request->getParameter('menu') ? ' selected' : '' ?>">
                            <?php echo link_to('Карта мест', '@map') ?>
                        </li>
                        <li<?php echo 'profits' == $sf_request->getParameter('menu') ? ' class="selected"' : '' ?>>
                            <?php echo link_to('Отчёты', '@profits') ?>
                        </li>
                        <li<?php echo 'talks' == $sf_request->getParameter('menu') ? ' class="selected"' : '' ?>>
                            <?php echo link_to('Обсуждения', '@talks') ?>
                        </li>
                        <li<?php echo 'events' == $sf_request->getParameter('menu') ? ' class="selected"' : '' ?>>
                            <?php echo link_to('События', '@events') ?>
                        </li>
                        <li<?php echo 'search' == $sf_request->getParameter('menu') ? ' class="selected"' : '' ?>>
                            <?php echo link_to('Поиск', '@search') ?>
                        </li>
                        <?php if ($sf_user->isAnonymous()): ?>
                            <li class="last<?php echo 'sf_guard_signin' == $sf_request->getParameter('menu') ? ' selected' : '' ?>">
                                <?php echo link_to('Вход', '@sf_guard_signin') ?>
                            </li>
                        <?php else: ?>
                            <li class="last">
                                <?php echo link_to('Выход', '@sf_guard_signout') ?>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
            <div id="middle" class="content clear_fix">
                <div id="left_layout">
                    <?php include_component('user', 'menu') ?>
                    <?php include_component('profit', 'last') ?>
                    <?php include_component('comment', 'last') ?>
                    <?php include_component('location', 'last') ?>
                    <?php include_component('event', 'last') ?>
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
            <div class="footer">
                <div class="content">
                    <h2><?php echo link_to(image_tag('/images/logo_small.png'), '@homepage') ?></h2>
                    <div class="footer_box_menu clear_fix">
                        <div class="footer_menu">
                            <h3>
                                <?php echo link_to('Карта мест', '@map') ?>
                            </h3>
                            <ul class="footer_menu_list">
                                <li><?php echo link_to('По рейтингу', '@top') ?></li>
                                <li><?php echo link_to('По регионам', '@regions') ?></li>
                            </ul>
                        </div>
                        <div class="footer_menu">
                            <h3>
                                <?php echo link_to('Отчёты', '@profits') ?>
                            </h3>
                        </div>
                        <div class="footer_menu">
                            <h3>
                                <?php echo link_to('Обсуждения', '@talks') ?>
                            </h3>
                        </div>
                        <div class="footer_menu">
                            <h3>
                                <?php echo link_to('События', '@events') ?>
                            </h3>
                            <ul class="footer_menu_list">
                                <li><?php echo link_to('Архив', '@events_archive') ?></li>
                            </ul>
                        </div>
                        <div class="footer_menu">
                            <h3>
                                <?php echo link_to('Люди', '@people') ?>
                            </h3>
                            <ul class="footer_menu_list">
                                <li><?php echo link_to('По улову', '@profile_top_profit') ?></li>
                            </ul>
                        </div>
                        <div class="footer_menu">
                            <h3>
                                Мы в
                            </h3>
                            <ul class="footer_menu_list">
                                <li><a href="http://www.vkontakte.ru/uberlover"><img src="/images/icons/social/vkontakte.png"/></a></li>
                                <li><a href="http://www.twitter.com/uberlov"><img src="/images/icons/social/twitter.png"/></a></li>
                                <li><a href="http://www.facebook.com/pages/Uberlov/190569190994314"><img src="/images/icons/social/facebook.png"/></a></li>
                            </ul>
                        </div>
                        <div class="footer_menu">
                            <h3>
                                powered by
                            </h3>
                            <ul class="footer_menu_list">
                                <li><a href="http://www.symfony-project.com/">Symfony</a></li>
                                <li><a href="http://www.jquery.com/">jQuery</a></li>
                                <li><a href="http://www.imageshack.us/">ImageShack</a></li>
                                <li><a href="http://www.gravatar.com/">Gravatar</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mini_menu">
                <div>
                    <?php if ($sf_user->isAnonymous()): ?>
                        <?php echo link_to('Регистрация', '@apply', array('class' => 'last')) ?>
                        <?php echo link_to('Вход', '@sf_guard_signin') ?>
                    <?php else: ?>
                        <?php echo link_to('Выход', '@sf_guard_signout') ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </body>
</html>