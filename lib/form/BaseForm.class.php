<?php

/**
 * Base project form.
 * 
 * @package    HT
 * @subpackage form
 * @author     Your name here 
 * @version    SVN: $Id: BaseForm.class.php 20147 2009-07-13 11:46:57Z FabianLange $
 */
class BaseForm extends sfFormSymfony {

    public function getStylesheets() {
        return array(
            '/css/form.css' => 'all'
        );
    }

    public function getJavaScripts() {
        return array('/js/formShow.js');
    }

}
