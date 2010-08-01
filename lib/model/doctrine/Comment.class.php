<?php

/**
 * Comment
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
class Comment extends BaseComment {

    public $plused = false;
    public $minused = false;

    public function getRating() {
        return Vote::getRating($this, 'Comment');
    }

    public static function getFor($object) {
        $tableName = $object->getTable()->getTableName();

        $q = Doctrine_Query::create()->select('c.message, c.parent, c.created_at, c.updated_at, c.created_by, c.updated_by, p.*, v.*')->from('Comment' . ucfirst($tableName) . ' c')
                        ->leftJoin('c.CommentBy p')
                        ->leftJoin('c.VoteComment v')
                        ->where('c.' . $tableName . '_id = ?', $object->getId());

        $treeObject = Doctrine::getTable('Comment' . ucfirst($tableName))->getTree();
        $treeObject->setBaseQuery($q);

        $comments = array();
        $rootComment = $treeObject->fetchRoots()->getFirst();
        if ($rootComment) {
            foreach ($treeObject->fetchTree(array('root_id' => $rootComment->root_id)) as $comment) {
                $comments[] = $comment;
            }
        }

        array_shift($comments);
        return $comments;
    }

}