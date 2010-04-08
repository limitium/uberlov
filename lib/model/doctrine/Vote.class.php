<?php

/**
 * Vote
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
class Vote extends BaseVote {

    public static function getRating($obj,$modelName = null) {
        $rating = 0;
        $relVote = 'getVote'.($modelName?$modelName:get_class($obj));
        $profile = sfContext::getInstance()->getUser()->getProfile();
        foreach ($obj->$relVote() as $vote) {
            if($profile && $vote->voter == $profile->getId()) {
                $obj->plused = $vote->getValue()>0;
                $obj->minused = $vote->getValue()<0;
            }
            $rating += $vote->getValue();
        }
        return $rating;
    }
}