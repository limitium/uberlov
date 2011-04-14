<?php

/**
 * PhotoProfit form base class.
 *
 * @method PhotoProfit getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BasePhotoProfitForm extends PhotoForm
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('photo_profit[%s]');
  }

  public function getModelName()
  {
    return 'PhotoProfit';
  }

}
