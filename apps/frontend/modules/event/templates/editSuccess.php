<h2>Редактирование события</h2>
<?php include_partial('location/location', array('location' => $form->getObject()->getLocation())) ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php echo link_to1('Назад', 'event/show?id=' . $form->getObject()->getId()); ?>
