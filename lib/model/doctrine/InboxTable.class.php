<?php

class InboxTable extends Doctrine_Table {

    public function getInboxQuery(sfGuardUserProfile $profile) {
        return $this->createQuery('i')
                ->leftJoin('i.Inboxed id')
                ->leftJoin('i.CommentInbox с')
                ->where('i.created_by = ?', $profile->getId())
                ->orWhere('id.id = ?', $profile->getId());
    }

}