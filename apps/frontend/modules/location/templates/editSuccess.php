<?php use_javascript('locationEdit'); ?>
<h2>Редактирование места</h2>
<p>Все изменения и их автор сохраняются. Так что не стоит шкодничать.</p>
<?php include_partial('location/location', array('location' => $form->getObject())) ?>
<p>Для изменения координат локации переместите маркер в нужное положение.</p>
<?php include_partial('form', array('form' => $form)) ?>