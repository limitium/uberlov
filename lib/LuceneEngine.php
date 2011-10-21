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

}
