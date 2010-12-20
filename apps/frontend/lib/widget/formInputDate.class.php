<?php

class formInputDate extends sfWidgetFormInputText {

    /**
     * @param  string $name        The element name
     * @param  string $value       The value displayed in this widget
     * @param  array  $attributes  An array of HTML attributes to be merged with the default HTML attributes
     * @param  array  $errors      An array of errors for the field
     *
     * @return string An HTML tag string
     *
     * @see sfWidgetForm
     */
    public function render($name, $value = null, $attributes = array(), $errors = array()) {
        $mathces = array();
        preg_match('/^(\d{4})-(\d{2})-(\d{2})$/', $value, &$mathces);
        if (sizeof($mathces)) {
            $value = $mathces[3] . '.' . $mathces[2] . '.' . $mathces[1];
        }
        return $this->renderTag('input', array_merge(array('type' => $this->getOption('type'), 'name' => $name, 'value' => $value), $attributes));
    }

}
