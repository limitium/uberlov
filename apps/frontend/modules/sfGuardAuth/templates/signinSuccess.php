<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<div class="pull-left">
    <?php if ($form->hasGlobalErrors()): ?>
    <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
        <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
    </ul>
    <?php endif; ?>

    <form action="<?php echo url_for('@sf_guard_signin') ?>"
          method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
        <fieldset>
            <dl>
                <dt><?php echo $form['username']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['username']->renderError() ?>
                    <?php echo $form['username'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['password']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['password']->renderError() ?>
                    <?php echo $form['password'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['remember']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['remember']->renderError() ?>
                    <?php echo $form['remember'] ?>
                </dd>
            </dl>
        </fieldset>
        <div class="form_footer">
            <?php echo $form->renderHiddenFields(false) ?>
            <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg">ВОЙТИ</span>
                </span>
            </span>
            </button>
            или <a href="<?php echo url_for('@resetRequest') ?>"><span>Забыл?</span></a>
        </div>
    </form>
</div>
<?php if (sfConfig::get('sf_environment') == 'dev'): ?>
<div class="pull-right">
    <script src="http://loginza.ru/js/widget.js" type="text/javascript"></script>
    <iframe
        src="http://loginza.ru/api/widget?overlay=loginza&token_url=<?php echo url_for('@signin_openid', true) ?>&lang=ru"
        style="width:359px;height:300px;" scrolling="no" frameborder="no"></iframe>
</div>
<?php endif; ?>