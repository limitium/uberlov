<?php

/**
 * collector actions.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class collectorActions extends sfActions
{

    public function executeListFree(sfWebRequest $request)
    {
        $this->pager = htPagerLayout::create(Doctrine::getTable('Location')
            ->getVisibleLocationsQuery($this->getUser())
            ->leftJoin('l.CreatedBy u')
            ->leftJoin('u.User')
            ->leftJoin('l.CommentLocation')
            ->leftJoin('l.VoteLocation')
            ->leftJoin('l.Profit p')
            ->leftJoin('p.ProfitDetail pd')
            ->addWhere('l.is_free = 1'), '@location_free?page={%page_number}', $request->getParameter('page', 1));

    }

    public function executeListPaid(sfWebRequest $request)
    {
        $this->pager = htPagerLayout::create(Doctrine::getTable('Location')
            ->getVisibleLocationsQuery($this->getUser())
            ->leftJoin('l.CreatedBy u')
            ->leftJoin('u.User')
            ->leftJoin('l.CommentLocation')
            ->leftJoin('l.VoteLocation')
            ->leftJoin('l.Profit p')
            ->leftJoin('p.ProfitDetail pd')
            ->addWhere('l.is_free = 0'), '@location_free?page={%page_number}', $request->getParameter('page', 1));

    }

    /**
     * Executes map action
     *
     * @param sfRequest $request A request object
     */
    public function executeTop(sfWebRequest $request)
    {
        $locOrdered = array();
        foreach (Doctrine::getTable('Location')
                     ->getVisibleLocationsQuery($this->getUser())
                     ->select('sum(v.value) as weight,l.id')
                     ->from('Location l')
                     ->leftJoin('l.VoteLocation v')
                     ->where('l.location_scope_id=5')
                     ->groupBy('l.id')
                     ->orderBy('weight desc')
                     ->limit(10)->execute() as $loc) {
            $locOrdered[$loc->id] = $loc->weight;
        }

        foreach (Doctrine_Query::create()
                     ->from('Location l')
                     ->leftJoin('l.VoteLocation v')
                     ->leftJoin('l.CreatedBy p')
                     ->leftJoin('p.User u')
                     ->leftJoin('l.CommentLocation c')
                     ->leftJoin('l.Profit pr')
                     ->andWhereIn("l.id", array_keys($locOrdered))
                     ->execute() as $location) {
            $locOrdered[$location->id] = $location;
        }
        $this->locations = $locOrdered;
    }

    /**
     * Executes map action
     *
     * @param sfRequest $request A request object
     */
    public function executeRegions(sfWebRequest $request)
    {
        $this->countries = Doctrine_Query::create()
            ->select()
            ->from('Country c')
            ->leftJoin('c.AreaLow a')
            ->orderBy('c.name, a.name')
            ->execute();
    }

    /**
     * Executes map action
     *
     * @param sfRequest $request A request object
     */
    public function executeLocations(sfWebRequest $request)
    {
        $this->ip = $request->getRemoteAddress();
    }

    /**
     * Executes data action
     *
     * @param sfRequest $request A request object
     */
    public function executeData(sfWebRequest $request)
    {
//        $this->locations = Doctrine::getTable('Location')
//                ->createQuery('r')
//                ->leftJoin('r.FishEvent e')
//                ->where('r.location_scope_id = 5')
//                ->execute();
//
//        if (!$this->getUser()->isAnonymous()) {
//            $this->locations->merge(Doctrine::getTable('Location')
//                            ->createQuery('r')
//                            ->leftJoin('r.FishEvent e')
//                            ->where('r.location_scope_id = 1 or r.location_scope_id = 3')
//                            ->orWhere('r.created_by = ?',$this->getUser()->getProfile()->id)
//                            ->execute());
//
//            $this->locations->merge(Doctrine_Query::create()
//                            ->select()
//                            ->from('Location l')
//                            ->leftJoin('l.FishEvent e')
//                            ->leftJoin('l.CreatedBy c')
//                            ->leftJoin('c.Accepter f with accepted = 1')
//                            ->where('l.location_scope_id = 2')
//                            ->andWhere('f.id = ?', $this->getUser()->getProfile()->id)
//                            ->execute());
//
//            $this->locations->merge(Doctrine_Query::create()
//                            ->select()
//                            ->from('Location l')
//                            ->leftJoin('l.FishEvent e')
//                            ->leftJoin('l.CreatedBy c')
//                            ->leftJoin('c.Requester f with accepted = 1')
//                            ->where('l.location_scope_id = 2')
//                            ->andWhere('f.id = ?', $this->getUser()->getProfile()->id)
//                            ->execute());
//        }
        $this->locations = Doctrine::getTable('Location')
            ->getVisibleLocationsQuery($this->getUser())
            ->leftJoin('l.FishEvent e')
            ->execute();
    }

    public function executeImport(sfWebRequest $request)
    {
        $form = new ImportForm();

        if ($request->isMethod(sfRequest::POST)) {
            $form->bind(
                $request->getParameter($form->getName()), $request->getFiles($form->getName())
            );
            if ($form->isValid()) {
                $file = $form->getValue('file');
                $fileText = file_get_contents($file->getTempName());
                unlink($file->getTempName());
                $fileStrings = explode("\r\n", $fileText);

                $OZIdata = explode(' ', $fileStrings[0]);
                $version = array_pop($OZIdata);
                $type = ucfirst(strtolower($OZIdata[1]));
                $OZItypes = array('Waypoint', 'Track');

                if (in_array($type, $OZItypes)) {
                    $method = 'parse' . $type;
                    $this->locations = OZIConverter::$method($fileStrings, $version);
                    $this->setTemplate('import' . $type);
                }
            }
        }
        $this->form = $form;
    }

}
