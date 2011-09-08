<?php

class LocationTable extends Doctrine_Table {

    static public function getLuceneIndex() {
        ProjectConfiguration::registerZend();

        if (file_exists($index = self::getLuceneIndexFile())) {
            return Zend_Search_Lucene::open($index);
        }

        return Zend_Search_Lucene::create($index);
    }

    static public function getLuceneIndexFile() {
        $filename = strtolower(substr(get_called_class(), 0, -5));
        return sfConfig::get('sf_data_dir') . '/' . $filename . '.' . sfConfig::get('sf_environment') . '.index';
    }

    public function getForLuceneQuery($query) {
        $hits = self::getLuceneIndex()->find($query);

        $pks = array();
        foreach ($hits as $hit) {
            $pks[] = $hit->pk;
        }

        if (empty($pks)) {
            return array();
        }

        $q = $this->createQuery('l')
                ->whereIn('l.id', $pks)
                ->leftJoin('l.Address a')
                ->leftJoin('a.Country ac')
                ->leftJoin('a.AreaLow aal')
                ->leftJoin('a.AreaHigh aah')
                ->leftJoin('a.Locality al')
                ->leftJoin('l.Profit p')
                ->leftJoin('l.CreatedBy c')
                ->leftJoin('l.VoteLocation v')
                ->leftJoin('l.CommentLocation ct')
                ->limit(20);

        return $q->execute();
    }

}