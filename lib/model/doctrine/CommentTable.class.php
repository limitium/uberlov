<?php

class  CommentTable extends Doctrine_Table
{

    public function filterScope(Doctrine_Query $query, sfUser $user)
    {
        //@todo: fix this shit!!!!!
        //this is very ugly
        $eventFilter = Doctrine_Query::create()
            ->from('FishEvent fe')
            ->select('fe.id')
            ->where("fe.location_id in (" . Doctrine::getTable('Location')->getVisibleLocationsQuery($user, "lc1")
            ->select('lc1.id'). ")");


        $profitFilter = Doctrine_Query::create()
            ->from('Profit pr')
            ->select('pr.id')
            ->where("pr.location_id in (" . Doctrine::getTable('Location')->getVisibleLocationsQuery($user, "lc2")
            ->select('lc2.id'). ")");

        return $query
            ->andWhere("c.location_id in (".Doctrine::getTable('Location')->getVisibleLocationsQuery($user, "lc3")
            ->select('lc3.id').") or c.location_id is null")
            ->andWhere("c.profit_id in ($profitFilter) or c.profit_id is null")
            ->andWhere("c.fish_event_id in ($eventFilter) or c.fish_event_id is null");
    }

}