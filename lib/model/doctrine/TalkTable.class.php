<?php

class TalkTable extends Doctrine_Table {

    public function getTagQuery() {
        return $this
                ->createQuery('t')
                ->leftJoin('t.CommentTalk')
                ->leftJoin('t.CreatedBy')
                ->leftJoin('t.Tagging tg')
                ->leftJoin('tg.Tag tag')
                ->orderBy('t.created_at desc');
    }

}