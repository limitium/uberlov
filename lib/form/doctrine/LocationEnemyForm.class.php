<?php

/**
 * Location form.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class LocationEnemyForm extends LocationForm {

    public function configure() {
        parent::configure();

        unset($this['location_scope_id']
        );
    }

}
