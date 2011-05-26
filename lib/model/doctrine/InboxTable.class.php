<?php

class InboxTable extends Doctrine_Table {

    public function getInboxQuery(sfGuardUserProfile $profile) {
        return $this->createQuery('i')
                ->leftJoin('i.Inboxed id')
                ->leftJoin('i.CommentInbox с')
                ->leftJoin('i.CreatedBy p')
                ->leftJoin('p.User')
                ->where('i.created_by = ?', $profile->getId())
                ->orWhere('id.id = ?', $profile->getId());
    }

}