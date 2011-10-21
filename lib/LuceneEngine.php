<?php

/**
 * Description of LuceneEngine
 *
 * @author limitok
 * $Id: LuceneEngine.php $
 */
class LuceneEngine {

    public static function deleteLuceneIndexFor(Doctrine_Record $object) {
        $index = self::getLuceneIndex($object);
        foreach ($index->find('pk:' . $object->getId()) as $hit) {
            $index->delete($hit->id);
        }
    }

    public static function updateLuceneIndexFor(Doctrine_Record $object) {

        $index = self::getLuceneIndex($object);

        // remove existing entries
        foreach ($index->find('pk:' . $object->getId()) as $hit) {
            $index->delete($hit->id);
        }



        $doc = new Zend_Search_Lucene_Document();

        // store obj primary key to identify it in the search results
        $doc->addField(Zend_Search_Lucene_Field::Keyword('pk', $object->getId()));

        // index object fields
        foreach (array('name', 'message', 'description') as $f) {
            if (isset($object->$f)) {
                $doc->addField(Zend_Search_Lucene_Field::UnStored($f, $object->$f, 'utf-8'));
            }
        }

        // add job to the index
        $index->addDocument($doc);
        $index->commit();
    }

    static public function getLuceneIndex(Doctrine_Record $object) {
        ProjectConfiguration::registerZend();

        if (file_exists($index = self::getLuceneIndexFile($object))) {
            return Zend_Search_Lucene::open($index);
        }

        return Zend_Search_Lucene::create($index);
    }

    static public function getLuceneIndexFile(Doctrine_Record $object) {
        return sfConfig::get('sf_data_dir') . '/' . $object->getTable()->getTableName() . '.' . sfConfig::get('sf_environment') . '.index';
    }

}
