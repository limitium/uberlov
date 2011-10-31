<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<?php use_javascript('profitAdd'); ?>

<div class="profitNew">

    <?php if ($form->hasGlobalErrors()): ?>
        <ul class="error_list">
            <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
                <li><?php echo $name . ': ' . $error ?></li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>

    <form class="profit_form" action="<?php echo url_for('profit/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
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
                <dt>Используемые снасти, прикормки, приманки:</dt>
                <dd>
                    <?php echo $form['cordage']->renderError() ?>
                    <?php echo $form['cordage'] ?>
                </dd>
            </dl>
            <dl>
                <dd>
                    <?php echo $form['weight']->renderError() ?>
                    <?php echo $form['fish_id']->renderError() ?>
                    Самая большая рыба <?php echo $form['fish_id'] ?> на <?php echo $form['weight'] ?> кг.
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
                                <th>Сколько: <?php echo $form['qty'] ?></th>
                                <th><button id="addProfitDetail" class="button_01">
                                        <span class="border_l">
                                            <span class="border_r">
                                                <span class="btn_bg">+</span>
                                            </span>
                                        </span>
                                    </button></th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                        <tfoot>
                            <tr>
                                <td></td>
                                <td></td>
                                <td id="detailTotal">0</td>
                                <td></td>
                            </tr>
                        </tfoot>
                    </table>
                </dd>
            </dl>
        </fieldset>
        <?php include_partial('photo/upload', array('object' => $form->getObject())) ?>
        <div>
            <?php echo $form->renderHiddenFields(false) ?>
            <button class="button_01" type="submit">
                <span class="border_l">
                    <span class="border_r">
                        <span class="btn_bg"><?php echo $form->getObject()->isNew() ? 'ДОБАВИТЬ' : 'СОХРАНИТЬ'; ?></span>
                    </span>
                </span>
            </button>
            <?php echo link_to('Назад', $form->getObject()->isNew() ? ('@location_show?id=' . $form->getDefault('location_id')) : '@profit_show?id=' . $form->getObject()->getId()); ?>
        </div>        
    </form>
</div>