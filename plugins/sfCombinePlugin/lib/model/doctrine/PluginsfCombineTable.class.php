<?php

/**
 * PluginsfCombineTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class PluginsfCombineTable extends Doctrine_Table
{
  /**
   * Returns an instance of this class.
   *
   * @return object PluginsfCombineTable
   */
  public static function getInstance()
  {
    return Doctrine_Core::getTable('PluginsfCombine');
  }

  /**
   * Delete all the records in the db
   * 
   * @return int
   */
  public function deleteAll()
  {
    return $this
      ->createQuery()
      ->delete()
      ->execute()
    ;
  }
}