<?php

/**
 * collector actions.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class collectorActions extends sfActions {

    /**
     * Executes map action
     *
     * @param sfRequest $request A request object
     */
    public function executeTop(sfWebRequest $request) {
        $this->locations = Doctrine_Query::create()
                ->select('sum(v.value) as weight,l.*,p.*,u.*,v.*')
                ->from('Location l')
                ->leftJoin('l.VoteLocation v')
                ->leftJoin('l.CreatedBy p')
                ->leftJoin('p.User u')
                ->groupBy('l.id')
                ->orderBy('weight desc')
                ->limit(10)
                ->execute();
    }

    /**
     * Executes map action
     *
     * @param sfRequest $request A request object
     */
    public function executeRegions(sfWebRequest $request) {
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
    public function executeLocations(sfWebRequest $request) {
        $this->ip = $request->getRemoteAddress();
    }

    /**
     * Executes data action
     *
     * @param sfRequest $request A request object
     */
    public function executeData(sfWebRequest $request) {
        $this->locations = Doctrine::getTable('Location')
                ->createQuery('r')
                ->leftJoin('r.FishEvent e')
                ->where('r.location_scope_id = 5')
                ->execute();
    }

    public function executeImport(sfWebRequest $request) {
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
