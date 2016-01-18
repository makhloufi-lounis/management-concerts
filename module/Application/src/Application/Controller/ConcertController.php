<?php

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class ConcertController extends AbstractActionController {

    protected $artistsTable;
    protected $concertsTable;

    public function showAction()
    {
        $id = (int) $this->params()->fromRoute('id', 0);
        if (!$id) {
            return $this->redirect()->toRoute('home');
        }
        $request = $this->getRequest();
        if ($request->isGet()) {
            $concert = $this->getConcertTable()->getConcertsById($id);
            return new ViewModel(array(
                'concert' => $concert,
            ));
        }
    }

    public function getArtistTable()
    {
        if (!$this->artistsTable) {
            $sm = $this->getServiceLocator();
            $this->artistsTable = $sm->get('Application\Model\ArtistTable');
        }
        return $this->artistsTable;
    }

    public function getConcertTable()
    {
        if(!$this->concertsTable){
            $sm = $this->getServiceLocator();
            $this->concertsTable = $sm->get('Application\Model\ConcertTable');
        }
        return $this->concertsTable;
    }
}