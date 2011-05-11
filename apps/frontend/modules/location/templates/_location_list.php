<?php use_helper('XssSafe'); ?>
<div class="locationList">
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
                <h4><?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?></h4>                
                <div class="meta">
                    <?php include_partial('vote/vote', array('obj' => $location)); ?>
                    <?php include_partial('profile/addBy', array('added' => $location)); ?>
                    <?php include_partial('comment/meta', array('commented' => $location)); ?>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>