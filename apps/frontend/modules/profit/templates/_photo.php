<!-- Thirdparty intialization scripts, needed for the Google Gears and BrowserPlus runtimes -->
<?php use_javascript('/plupload/js/gears_init'); ?>
<?php use_javascript('http://bp.yahooapis.com/2.4.21/browserplus-min.js'); ?>


<!-- Load plupload and all it's runtimes -->
<?php use_javascript('/plupload/js/plupload.full.min.js'); ?>

<?php use_javascript('photoUpload'); ?>
<?php use_stylesheet('photoUpload'); ?>

<div id="container">

    <table id="photoList">
        <tr>
            <td>Нельзя добавить фотографии. Нет поддержки: Flash, Silverlight, Gears, BrowserPlus или HTML5.</td>
        </tr>
    </table>

    <br />
    <a id="pickfiles" href="#">[Select files]</a>
    <a id="uploadfiles" href="#">[Upload files]</a>
</div>
