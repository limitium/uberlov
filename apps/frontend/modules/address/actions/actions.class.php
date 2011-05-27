<?php

/**
 * address actions.
 *
 * @package    FISHERY
 * @subpackage address
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class addressActions extends sfActions {

    /**
     * Executes index action
     *
     * @param sfRequest $request A request object
     */
    public function executeCountry(sfWebRequest $request) {
        $this->forward404Unless($country = Doctrine::getTable('Country')->find($request->getParameter('id')), sprintf('Object country does not exist (%s).', $request->getParameter('id')));
        $this->country = $country;
        $this->lows = Doctrine_Query::create()->from('AreaLow l')
                ->where('l.country_id = ?', $this->country->getId())
                ->orderBy('l.name')
                ->execute();
        $this->pager = $this->getLocationPager($request, $this->country, 'country');
    }

    public function executeLow(sfWebRequest $request) {
        $this->forward404Unless($low = Doctrine::getTable('AreaLow')->find($request->getParameter('id')), sprintf('Object low does not exist (%s).', $request->getParameter('id')));
        $this->low = $low;
        $this->highs = Doctrine_Query::create()->from('AreaHigh h')
                ->where('h.area_low_id = ?', $this->low->getId())
                ->orderBy('h.name')
                ->execute();
        $this->pager = $this->getLocationPager($request, $this->low, 'low');
    }

    public function executeHigh(sfWebRequest $request) {
        $this->forward404Unless($high = Doctrine::getTable('AreaHigh')->find($request->getParameter('id')), sprintf('Object low does not exist (%s).', $request->getParameter('id')));
        $this->high = $high;
        $this->localities = Doctrine_Query::create()->from('Locality l')
                ->where('l.area_high_id = ?', $this->high->getId())
                ->orderBy('l.name')
                ->execute();

        $this->pager = $this->getLocationPager($request, $this->high, 'high');
    }

    public function executeLocality(sfWebRequest $request) {
        $this->forward404Unless($locality = Doctrine::getTable('Locality')->find($request->getParameter('id')), sprintf('Object low does not exist (%s).', $request->getParameter('id')));
        $this->locality = $locality;
        $this->pager = $this->getLocationPager($request, $this->locality, 'locality');
    }

    private function getLocationPager(sfWebRequest $request, sfDoctrineRecord $part, $partUrl) {
        return htPagerLayout::create(Doctrine_Query::create()->from('Location l')
                        ->leftJoin('l.Address a')
                        ->leftJoin('a.' . $part->getTable()->getComponentName() . ' part')
                        ->leftJoin('l.CreatedBy p')
                        ->leftJoin('l.VoteLocation v')
                        ->where('part.id = ?', $part->getId())
                        ->andWhere('l.location_scope_id=5'), 'address/' . $partUrl . '?id=' . $part->getId() . '&page={%page_number}', $request->getParameter('page', 1));
    }

}
