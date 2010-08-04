<?php

class InboxTable extends Doctrine_Table {

    public function myInboxCount() {
        return $this->createQuery('i')
                ->leftJoin('i.Inboxed id')
                ->where('i.created_by = ?', sfContext::getInstance()->getUser()->getProfile()->getId())
                ->andWhere('id.id = ?', sfContext::getInstance()->getUser()->getProfile()->getId())
                ->count();
    }

}