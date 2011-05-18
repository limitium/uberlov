<?php use_helper('XssSafe'); ?>
<div class="locationList">
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
                <h3><?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?></h3>     
                <div class="fish">
                    <?php $fishes = $location->getFishes(); ?>
                    <?php if ($fishes->count()): ?>
                        <ul>
                            <?php foreach ($fishes as $fish): ?>
                                <li><?php echo $fish->name; ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php else: ?>
                        <p>Тут еще не ловили</p>
                    <?php endif; ?>
                </div>
                <div class="meta">
                    <?php include_partial('vote/vote', array('obj' => $location)); ?>
                    <?php include_partial('profile/addBy', array('added' => $location)); ?>
                    <?php include_partial('comment/meta', array('commented' => $location)); ?>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>