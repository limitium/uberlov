<?php

/**
 * TalkSection
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
class TalkSection extends BaseTalkSection {

    public function modifyQuery(Doctrine_Query $query) {
        if (!$this->getNode()->isRoot()) {
            $nodes = $this->getNode()->getDescendants(null, true);
            if ($nodes) {
                $sectionIds = array();
                foreach ($nodes as $node) {
                    $sectionIds[] = $node->id;
                }
                $query->whereIn('t.talk_section_id', $sectionIds);
            }
        }
    }

}