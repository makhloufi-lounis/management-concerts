<?php
/**
 * Created by PhpStorm.
 * User: Lounis
 * Date: 17/01/2016
 * Time: 13:39
 */

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\JsonModel;
use Zend\View\Model\ViewModel;
use ZendGData\YouTube;
use ZendGData\ClientLogin;
use ZendGData\AuthSub;



class AjaxController extends AbstractActionController
{

    protected $concertsTable;

    public function filterAction()
    {
        $params = $this->params()->fromQuery();

        if(count($params) > 0) {

            $concerts = $this->getConcertTable()->getConcertsByFilter($params);

            return new ViewModel(array(
                'concerts' => $concerts,
            ));

        }else{
            return "error";
        }

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