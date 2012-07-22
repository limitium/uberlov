<?php

class LocationTable extends Doctrine_Table {

    static $uniq = 1;

    public function getVisibleLocationsQuery(sfUser $user, $alias = 'l') {
        return $this->filterScope($this->createQuery($alias), $user, $alias);
    }

    /**
     *
     * @param Doctrine_Query $query
     * @param sfUser $user
     * @param type $alias
     * @return Doctrine_Query
     */
    public function filterScope(Doctrine_Query $query, sfUser $user, $alias = 'l') {
        $where = "$alias.location_scope_id = 5";
        if (!$user->isAnonymous()) {
            $uniq = self::$uniq++;
            $where .= "
                    or $alias.location_scope_id = 1
                    or $alias.location_scope_id = 3
                    or $alias.created_by = " . $user->getProfile()->id . "
                    or $alias.created_by in(SELECT fa$uniq.accepter_id FROM friend fa$uniq WHERE fa$uniq.accepted = 1 and fa$uniq.requester_id = " . $user->getProfile()->id . ")
                    or $alias.created_by in(SELECT fr$uniq.requester_id FROM friend fr$uniq WHERE fr$uniq.accepted = 1 and fr$uniq.accepter_id = " . $user->getProfile()->id . ")";
        }
        $query->addWhere($where);
        return $query;
    }

    public function getForLuceneQuery($query) {
        //@todo: remove object;
        $hits = LuceneEngine::getLuceneIndex(new Location())->find($query);

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

    /**
     * @param Doctrine_Query $query
     * @param $toAlias
     * @return Doctrine_Query
     */
    public function addLocation(Doctrine_Query $query, $toAlias){
        $query->leftJoin($toAlias.'.Location location')
            ->leftJoin('location.Address address')
            ->leftJoin('address.Country')
            ->leftJoin('address.AreaLow')
            ->leftJoin('address.AreaHigh');
        return $query;
    }

}