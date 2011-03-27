<div id="mailContainer">
    <?php use_stylesheets_for_form($form) ?>
    <p>На ваш текущий ящик <b><?php echo $profile->getEmail(); ?></b> придет письмо с подверждением о смене почтового ящика.</p>
    <form method="post" action="<?php echo url_for("profile/editEmail") ?>" name="sf_apply_email_edit_form">
        <ul>
            <?php echo $form ?>
            <li class="submit_row">
                <input type="submit" value="Изменить" />
            </li>
        </ul>
    </form>
</div>