<?php

class  CommentTable extends Doctrine_Table
{

    public function filterScope(Doctrine_Query $query, sfUser $user)
    {
        $locFilter = Doctrine::getTable('Location')->getVisibleLocationsQuery($user)
            ->select('l.id');

        //@todo: fix this shit!!!!!
        //this is very ugly
        $eventFilter = Doctrine_Query::create()
            ->from('FishEvent fe')
            ->select('fe.id')
            ->where("fe.location_id in ($locFilter)");


        $profitFilter = Doctrine_Query::create()
            ->from('Profit pr')
            ->select('pr.id')
            ->where("fe.location_id in ($locFilter)");

        return $query
            ->andWhere("c.location_id in ($locFilter) or c.location_id is null")
            ->andWhere("c.profit_id in ($profitFilter) or c.profit_id is null")
            ->andWhere("c.fish_event_id in ($eventFilter) or c.fish_event_id is null");
    }

}