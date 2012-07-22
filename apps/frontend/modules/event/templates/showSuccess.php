<?php use_helper('XssSafe'); ?>
<?php use_javascript('voting'); ?>


<?php include_partial('location/location', array('location' => $event->getLocation())) ?>
<?php include_partial('default/ilike', array('url' => '@event_show?id=' . $event->getId())) ?>
<?php slot('title', $event->getDateTimeObject('date')->format('d.m.Y') . ' ' . $event->getName()) ?>
<div class="eventFull">
    <h2><?php echo $event->getDateTimeObject('date')->format('d.m.Y') ?> <?php echo $event->getName(); ?>
        <?php if ($sf_user->getProfile() == $event->getCreatedBy()): ?>
            <?php echo link_to(image_tag('/images/ui/edit.png'), 'event/edit?id=' . $event->getId()) ?>
        <?php endif; ?>
    </h2>
    <div class="where">Пройдет на <?php echo link_to($event->getLocation()->getName(), 'location/show?id=' . $event->getLocation()->getId()); ?></div>
    <?php if (trim($event->getDescription())): ?>
        <div class="desctiption">
            <h2>Описание:</h2>
            <div class="text">
                <?php echo $event->getDescription(ESC_XSSSAFE); ?>
            </div>
        </div>
    <?php endif; ?>
    <?php if (trim($event->getDescription())): ?>
        <div class="contacts">
            <h2>Контакты:</h2>
            <div class="text">
                <?php echo $event->getContact(ESC_XSSSAFE); ?>
            </div>
        </div>
    <?php endif; ?>
    <?php if (trim($event->getPrice())): ?>
        <div class="price">
            <h2>Цены:</h2>
            <div class="text">
                <?php echo $event->getPrice(ESC_XSSSAFE); ?>
            </div>
        </div>
    <?php endif; ?>
    <?php if (trim($event->getSchedule())): ?>
        <div class="schedule">
            <h2>Расписание:</h2>
            <div class="text">
                <?php echo $event->getSchedule(ESC_XSSSAFE); ?>
            </div>
        </div>
    <?php endif; ?>
    <?php if (trim($event->getRules())): ?>
        <div class="rules">
            <h2>Регламент:</h2>
            <div class="text">
                <?php echo $event->getRules(ESC_XSSSAFE); ?>
            </div>
        </div>
    <?php endif; ?>
    <?php if (trim($event->getUsers())): ?>
        <div class="users">
            <h2>Участники:</h2>
            <div class="text">
                <?php echo $event->getUsers(ESC_XSSSAFE); ?>
            </div>
        </div>
    <?php endif; ?>
    <div class="meta">
        <?php include_partial('vote/vote', array('obj' => $event)); ?>
        <div>
            <a href="" id="goToReply">□</a>
            <?php include_partial('profile/addBy', array('added' => $event)); ?> | <a href="" class="commentShowAuthor" author="user<?php echo $event->getCreatedBy()->getId(); ?>">●</a>
        </div>
    </div>
</div>

<div class="tabPanel">
    <ul>
        <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
    </ul>
</div>

<?php include_partial('comment/tree', array('form' => $form, 'comments' => $comments)); ?>