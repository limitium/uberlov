<div id="user_menu">
    <ul>
        <?php foreach ($menu as $menuItem): ?>
        <li>
            <?php echo link_to($menuItem['title'],$menuItem['url'])?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>