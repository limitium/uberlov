<?php

class validatorPoints extends sfValidatorBase {
/**
 * Configures the current validator.
 *
 * Available error codes:
 *
 *  * wrong_points
 *
 * @param array $options   An array of options
 * @param array $messages  An array of error messages
 *
 * @see sfValidatorBase
 */
    protected function configure($options = array(), $messages = array()) {
        $this->addMessage('wrong_points', 'Girven wrong points');
    }

    /**
     * @see sfValidatorBase
     */
    protected function doClean($value) {
        $value = (string) $value;

        $points =array();
        try {
            foreach(explode('|',$value) as $rawPoint) {
                $coords = explode(';',(string) $rawPoint);
                $point = new Point();
                $point->setLatitude($coords[0]);
                $point->setLongitude($coords[1]);
                $points[] = $point;
            }
        }catch (Exception $e ) {
            throw new sfValidatorError($this, 'wrong_points');
        }

        if ($this->hasOption('required') && sizeof($points)==0) {
            throw new sfValidatorError($this, 'required');
        }
        return $points; new Doctrine_Collection($table);
    }
}