<ul class="i_like_it">
    <li>
        <a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="Uberlov">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    </li>
    <li>
        <div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#appId=227389200621319&amp;xfbml=1"></script><fb:like href="" send="true" layout="button_count" width="300" show_faces="false" font=""></fb:like>
</li>
<li>
    <?php use_javascript('http://userapi.com/js/api/openapi.js?31'); ?>
    <!-- Put this script tag to the <head> of your page -->

    <script type="text/javascript">
        VK.init({apiId: 2350662, onlyWidgets: true});
    </script>

    <!-- Put this div tag to the place, where the Like block will be -->
    <div id="vk_like"></div>
    <script type="text/javascript">
        VK.Widgets.Like("vk_like", {type: "button"});
    </script>
</li>
<li>
    <a target="_blank" class="mrc__plugin_like_button" href="http://connect.mail.ru/share" data-mrc-config="{'type' : 'button', 'width' : '130'}">Нравится</a>
    <script src="http://cdn.connect.mail.ru/js/loader.js" type="text/javascript" charset="UTF-8"></script>
</li>
<li>
    <link href="http://stg.odnoklassniki.ru/share/odkl_share.css" rel="stylesheet">
    <script src="http://stg.odnoklassniki.ru/share/odkl_share.js" type="text/javascript" ></script>
    <div style="float: left;">
        <a class="odkl-klass-stat" href="<?php echo url_for($url, true); ?>" onclick="ODKL.Share(this);return false;" ><span>0</span></a>
    </div>
    <script type="text/javascript">
        ODKL.init();
    </script>
</li>
</ul>