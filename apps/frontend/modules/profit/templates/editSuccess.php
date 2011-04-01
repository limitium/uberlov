<h2>Редактирование отчета</h2>
<?php include_partial('location/location', array('location' => $form->getObject()->getLocation())) ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php echo link_to('Назад', 'profit/show?id=' . $form->getObject()->getId()); ?>
