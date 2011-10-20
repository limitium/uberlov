<?php

class LocationTable extends Doctrine_Table {

    static $uniq = 1;

    public function getVisibleLocations(sfUser $user) {
        return $this->fliterScope($this->createQuery('l'), $user)->execute();
    }

    /**
     *
     * @param Doctrine_Query $query
     * @param sfUser $user
     * @param type $alias
     * @return Doctrine_Query 
     */
    public function fliterScope(Doctrine_Query $query, sfUser $user, $alias = 'l') {
        $query->where("$alias.location_scope_id = 5");

        if (!$user->isAnonymous()) {
            $query->orWhere("$alias.location_scope_id = 1 or $alias.location_scope_id = 3")
                    ->orWhere("$alias.created_by = ?", $user->getProfile()->id);

            $uniq++;
            $query->leftJoin("$alias.CreatedBy c$uniq")
                    ->leftJoin("c$uniq.Accepters a$uniq with a$uniq.accepted = 1")
                    ->leftJoin("a$uniq.Accepter f$uniq")
                    ->orWhere("$alias.location_scope_id = 2")
                    ->andWhere("f$uniq.id = ?", $user->getProfile()->id);
//            $uniq++;
//            $query->leftJoin("$alias.CreatedBy c$uniq")
//                    ->leftJoin("c$uniq.Requester f$uniq with accepted = 1")
//                    ->orWhere("$alias.location_scope_id = 2")
//                    ->andWhere("f$uniq.id = ?", $user->getProfile()->id);
        }
        fb($query->getSqlQuery());
        return $query;
    }

    static public function getLuceneIndex() {
        ProjectConfiguration::registerZend();

        if (file_exists($index = self::getLuceneIndexFile())) {
            return Zend_Search_Lucene::open($index);
        }

        return Zend_Search_Lucene::create($index);
    }

    static public function getLuceneIndexFile() {
//        $filename = strtolower(substr(get_called_class(), 0, -5));
        return sfConfig::get('sf_data_dir') . '/location.' . sfConfig::get('sf_environment') . '.index';
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