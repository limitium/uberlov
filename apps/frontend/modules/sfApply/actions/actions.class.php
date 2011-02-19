<?php

require_once sfConfig::get('sf_plugins_dir') . '/sfForkedDoctrineApplyPlugin/modules/sfApply/lib/BasesfApplyActions.class.php';

class sfApplyActions extends BasesfApplyActions {

    public function executeSettings(sfRequest $request) {
        $request->setParameter('id', $this->getUser()->getProfile()->getId());
        $this->forward('profile', 'edit');
    }

}
