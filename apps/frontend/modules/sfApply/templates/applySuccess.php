<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<div class="sf_apply sf_apply_apply">
    <h2>Регистрация</h2>
    <form method="post" action="<?php echo url_for('sfApply/apply') ?>"
          name="sf_apply_apply_form" id="sf_apply_apply_form">
        <ul>
            <?php echo $form ?>
            <li class="submit_row">
                <?php echo link_to("Назад", sfConfig::get('app_sfApplyPlugin_after', '@homepage')) ?>
                | 
                <input type="submit" value="Создать!" />
            </li>
        </ul>
    </form>
</div>