<?php

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Helper\PaginationControl;
use Zend\View\Model\ViewModel;
use Zend\Paginator\Paginator;

use Zend\View\Helper\PaginationControl as p;

class SiteController extends AbstractActionController
{
    protected $artistsTable;
    protected $concertsTable;

    public function indexAction()
    {
        $towns = array();
        $tags  = array();
        $costs = array();
        $days  = array();

        $artists = $this->getArtistTable()->fetchAll();
        $concerts = $this->getConcertTable()->fetchAll();

        if(!empty($artists) and !empty($concerts)) {

            foreach ($artists as $artist) {
                $tag = $artist->tags;
                if (!in_array($tag, $tags, true)) {
                    if (!empty($tag))
                        array_push($tags, $tag);
                }
            }

            foreach ($concerts as $concert) {
                $city = $concert->city;
                $cost = $concert->cost;
                $day = $concert->date;
                if (!in_array($city, $towns, true)) {
                    if (!empty($city))
                        array_push($towns, $city);
                }
                if (!in_array($cost, $costs, true)) {
                    if (!empty($cost))
                        array_push($costs, $cost);
                }
                if (!in_array($day, $days, true)) {
                    if (!empty($day))
                        array_push($days, $day);
                }

            }

            $paginator = $this->getConcertTable()->getConcertsOfAllArtists();
            $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
            $paginator->setItemCountPerPage(9);


            return new ViewModel(array(
                'paginator' => $paginator,
                'towns'      => $towns,
                'tags'       => $tags,
                'costs'      => $costs,
                'days'       => $days,
            ));
        }else{
            $flashMessages = $this->flashMessenger()->addMessage(" Erreur: Aucun concerts trouver ")->getMessages();

            return new ViewModel(array(
                'flashMessages' => $flashMessages,
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
