<div>
    Дружит с:
    <div id="friends">
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li><?php echo $friend->getSfGuardUserProfile()->getNickName(); ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
    Хочет дружить с:
    <div id="friendsTo">
        <ul>

        </ul>
    </div>
    Хотят дружить:
    <div id="friendsFrom">
        <ul>

        </ul>
    </div>
</div>
