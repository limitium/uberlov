<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of FixCTime
 *
 * @author Администратор
 */
class FixCTime {

    public static function fix() {


        $cs = Doctrine_Query::create()
                        ->from('Comment c')
                        ->where('c.parent is null')
                        ->execute();
        foreach ($cs as $r) {

            $tree = Doctrine::getTable('Comment')->getTree();
            $tree->setBaseQuery(Doctrine_Query::create()->from('Comment c')
                            ->where('c.root_id = ?', $r->id));

            $parent = $tree->fetchRoots()->getFirst();


            self::fixNode($parent);
        }
    }

    private static function fixNode($parent) {
        $cl = $parent->getNode()->getChildren();
        if ($cl->count() == 1) {
            return;
        }

        $from = $parent->getDateTimeObject('created_at')->format('U');
        $to = 0;
        $toUpdate = array();
        for ($i = 0; $i < $cl->count(); $i++) {
            $c = $cl[$i];
            $to = $c->getDateTimeObject('created_at')->format('U');
            $toUpdate[] = $c;
            if ($c->getNode()->hasChildren()) {
                self::update($from, $to, $toUpdate);
                $toUpdate = array();
                $from = $to;
                self::fixNode($c);
            }
        }
        self::update($from, $to, $toUpdate);
    }

    private static function update($from, $to, $toUpdate) {
        $times = array();
        foreach ($toUpdate as $u) {
            $times[] = rand($from, $to);
        }
        sort($times);
        $i = 0;
        foreach ($toUpdate as $c) {
            Doctrine_Query::create()->update('Comment')
                    ->set("created_at", "'" . date("Y-m-d H:i:s", $times[$i++]) . "'")
                    ->where('id = ?', $c->id)
                    ->execute();
        }
    }

}
