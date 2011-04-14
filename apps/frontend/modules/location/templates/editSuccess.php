<?php use_javascript('locationEdit'); ?>
<h2>Редактирование места</h2>
<p>Все изменения и их автор сохраняются. Так что не стоит шкодничать.</p>
<?php include_partial('location/location', array('location' => $form->getObject())) ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php echo link_to('Назад', 'location/show?id=' . $form->getObject()->getId()); ?>
<?php include_partial('photo/photo', array('object' => $form->getObject())) ?>