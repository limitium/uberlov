<?php

/**
 * Description of CSRF
 *
 * @author Администратор
 * $Id: CSRF.php $
 */
class CSRF {

    public static function getToken() {
        $form = new BaseForm();

        if ($form->isCSRFProtected()) {
            return $form->getCSRFToken();
        }
        return '';
    }

}
