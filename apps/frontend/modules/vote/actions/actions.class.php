<?php

/**
 * vote actions.
 *
 * @package    FISHERY
 * @subpackage vote
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class voteActions extends sfActions {

    public function executeFor(sfWebRequest $request) {

        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $componentName = $className = $request->getParameter('subj');
        $voteClass = 'Vote' . $className;
        if ($className == 'Profile') {
            $voteClass = 'VoteProfile';
            $className = 'sfGuardUserProfile';
        }
        //@todo: check user componentName input
        $object = Doctrine::getTable($className)->find($request->getParameter('id'));
        $this->forward404Unless($object);

        $field = $voteClass == 'VoteProfile' ? 'profile' : $object->getTable()->getTableName();

        $profile = $this->getUser()->getProfile();

        if ($voteClass == 'VoteProfile' && $object != $profile || $object->hasRelation('sfGuardUserProfile') && $object->getCreatedBy() != $profile) {
            $vote = Doctrine::getTable($voteClass)
                            ->createQuery('v')
                            ->where('v.voter = ? and ' . $field . '_id=?', array($profile->getId(), $object->getId()))
                            ->fetchOne();
            if (!$vote) {
                $vote = new $voteClass();
                $vote->$componentName = $object;
                $vote->Voter = $profile;
                $object->$voteClass->add($vote);
            }
            $vote->value = ($request->getParameter('up') ? 1 : -1) * $profile->getForce();
            $vote->save();
        } else {
            $this->status = 'burn';
        }
        $this->rating = $object->getRating();
    }

}
