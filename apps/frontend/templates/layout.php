<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <link rel="shortcut icon" href="<?php echo image_path('/images/favicon.ico'); ?>" />
        <?php include_http_metas() ?>
        <?php include_metas() ?>
        <?php include_title() ?>
        <?php include_stylesheets() ?>
        <script language="javascript">
            baseUrl = "<?php echo sfContext::getInstance()->getRequest()->getRelativeUrlRoot(); ?>";
            baseUrl = "<?php echo substr(url_for('@homepage'), 0, strlen(url_for('@homepage')) - 1); ?>";
        </script>
        <?php include_javascripts() ?>
    </head>
    <body>
        <div id="page">
            <div id="header">
                <div id="logo"><?php echo link_to(image_tag('/images/logo.png'), '@homepage') ?></div>
                <div id="site_menu">
                    <ul>
                        <li><?php echo link_to('Места', 'collector/locations') ?></li>
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