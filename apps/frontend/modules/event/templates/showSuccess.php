<?php use_helper('text'); ?>


<?php include_partial('location/location', array('location' => $event->getLocation())) ?>
<div class="eventFull">
    <h2><?php echo $event->getDateTimeObject('date')->format('d.m.Y') ?> <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()); ?></h2>

    <div class="desctiption">
        <h3>Описание:</h3>
        <?php echo simple_format_text($event->getDescription()); ?>
    </div>
    <div class="result">
        <h3>Результаты:</h3>
        <?php echo simple_format_text($event->getDescription()); ?>
    </div> 
    <div class="users">
        <h3>Участники:</h3>
        <?php echo simple_format_text($event->getDescription()); ?>
    </div>    
    <div class="rules">
        <h3>Регламент:</h3>
        <?php echo simple_format_text($event->getDescription()); ?>
    </div>
    <div class="meta">
        <?php include_partial('vote/vote', array('obj' => $event)); ?>
        <?php //include_partial('profile/addBy', array('added' => $event)); ?>
    </div>
</div>

<div class="tabPanel">
    <ul>
        <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
    </ul>
</div>

<?php include_partial('comment/tree', array('for' => 'fishEvent', 'form' => $form, 'comments' => $comments)); ?>