<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<?php //include_partial('location/location', array('location' => $location)) ?>
<div class="profitNew">

    <?php if ($form->hasGlobalErrors()): ?>
        <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
        </ul>
    <?php endif; ?>

            <form action="<?php echo url_for('profit/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" medtod="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
                <fieldset>
            <?php if (!$form->getObject()->isNew()): ?>
                <input type="hidden" name="sf_medtod" value="put" />
            <?php endif; ?>
                <dl>
                    <dt>Название отчета:</dt>
                    <dd>
                    <?php echo $form['name']->renderError() ?>
                    <?php echo $form['name'] ?>
                </dd>
            </dl>
            <dl>
                <dt>Дата рыбалки:</dt>
                <dd>
                    <?php echo $form['date']->renderError() ?>
                    <?php echo $form['date'] ?>
                </dd>
            </dl>
            <dl>
                <dt>Используемые снасти:</dt>
                <dd>
                    <?php echo $form['cordage']->renderError() ?>
                    <?php echo $form['cordage'] ?>
                </dd>
            </dl>
            <dl>
                <dd>
                    <?php echo $form['best_weight']->renderError() ?>
                    <?php echo $form['best_fish_id']->renderError() ?>
                    Самая большая рыба <?php echo $form['best_fish_id'] ?> на <?php echo $form['best_weight'] ?> кг.
                </dd>
            </dl>
            <dl>
                <dt>Сам текст:</dt>
                <dd>
                    <?php echo $form['description']->renderError() ?>
                    <?php echo $form['description'] ?>
                </dd>
                <dd>
                    Не забудте о погоде, состоянии воды и тд.
                </dd>
            </dl>
            <dl>
                <dd>
                    <table class="profitDetails">
                        <thead>
                            <tr>
                                <th>Как: <?php echo $form['styles'] ?></th>
                                <th>Кого: <?php echo $form['fishes'] ?></th>
                                <th>Сколько: <?php echo $form['qty'] ?><input type="button" value="+" id="addProfitDetail" class="button"></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>0</td>
                            </tr>
                        </tfoot>
                    </table>
                </dd>
            </dl>
            <div>
                <?php echo $form->renderHiddenFields(false) ?>
                <input type="submit" value="Добавить" />
            </div>
        </fieldset>
    </form>
</div>