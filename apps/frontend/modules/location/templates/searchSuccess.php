<h2>Поиск мест</h2>
<?php include_partial('search', array('form' => $form)) ?>
<?php if (isset($locations)): ?>
    <?php include_partial('location/location_list', array('locations' => $locations)); ?>
    <?php if (!$locations->count()): ?>
        <div class="search_empty">
            Упс. А ничего не найдено...
        </div>
    <?php endif; ?>
<?php endif; ?>
