<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <?php include_http_metas() ?>
        <?php include_metas() ?>
        <?php include_title() ?>
        <link rel="shortcut icon" href="/favicon.ico" />
        <?php include_stylesheets() ?>
        <?php use_javascript('app') ?>
        <?php include_javascripts() ?>
    </head>
    <body>
        <div id="page">
            <div id="header">
                <div id="logo">HT logo</div>
                <div id="site_menu">
                    <ul>
                        <li><a href="">routes</a></li>
                        <li><a href="">locations</a></li>
                        <li><a href="">search</a></li>
                        <li><a href="">logout</a></li>
                    </ul>
                </div>
            </div>

            <div id="left_layout">
                <?php include_component('user', 'menu') ?>
                <?php include_component('collector', 'stats') ?>
            </div>

            <div id="right_layout">
                <div id="content_menu"><?php include_slot('content_menu')?></div>

                <?php if ($sf_user->hasFlash('notice')): ?>
                <div class="flash_notice"><?php echo $sf_user->getFlash('notice') ?></div>
                <?php endif; ?>

                <?php if ($sf_user->hasFlash('error')): ?>
                <div class="flash_error"><?php echo $sf_user->getFlash('error') ?></div>
                <?php endif; ?>

                <?php echo $sf_content ?>
            </div>

            <div id="footer">
                copyrights
            </div>
        </div>
    </body>
</html>
