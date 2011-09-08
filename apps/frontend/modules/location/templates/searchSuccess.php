<?php use_helper('XssSafe'); ?>
<h2>Поиск мест</h2>
<?php include_partial('search', array('form' => $form)) ?>
<?php if (isset($locations)): ?>

    <div class="locationList search_list">
        <ul>
            <?php foreach ($locations as $location): ?>
                <li>
                    <h3><?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?></h3>     
                    <div class="address">
                        <?php echo htmlspecialchars_decode($location->getAddress()); ?>
                    </div>
                    <?php if ($location->getDescription(ESC_XSSSAFE)) : ?>
                        <div class="text">
                            <?php echo $location->getDescription(ESC_XSSSAFE) ?>
                        </div>
                    <?php endif; ?>
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

    <?php if (!$locations->count()): ?>
        <div class="search_empty">
            Упс. А ничего не найдено...
        </div>
    <?php endif; ?>
<?php endif; ?>
