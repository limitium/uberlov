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

    private static $allowed = array('profile', 'comment', 'profit', 'talk', 'fishEvent', 'location');
    private static $modificators = array('profile' => 'sfGuardUserProfile');

    public function executeFor(sfWebRequest $request) {
        $type = $request->getParameter('subj');

        $this->forward404Unless(in_array($type, self::$allowed));

        $uType = ucfirst($type);

        $profile = $this->getUser()->getProfile();
        $object = Doctrine::getTable(isset(self::$modificators[$type]) ? self::$modificators[$type] : $uType)->find($request->getParameter('id'));
        $this->forward404Unless($object);
        //@todo: make update instad of delete/add
        //@todo: check self voting
        Doctrine_Query::create()
                ->delete('Vote v')
                ->where('v.voter = ? and ' . $type . '_id=?', array($profile->getId(), $object->getId()))
                ->execute();

        $voteType = 'Vote' . $uType;
        $vl = new $voteType();
        $vl->$uType = $object;
        $vl->Voter = $profile;
        $vl->value = ($request->getParameter('up') ? 1 : -1) * $profile->getForce();
        $vl->save();

        $object->$voteType->add($vl);
        $this->rating = $object->getRating();
        $this->setTemplate('vote');
    }

}
