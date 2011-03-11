<div id="userMenu">
    <ul>
        <?php foreach ($menu as $menuItem): ?>
            <li>
                <?php echo link_to(html_entity_decode($menuItem['title']), $menuItem['url']) ?>
            </li>
        <?php endforeach; ?>
    </ul>
</div>