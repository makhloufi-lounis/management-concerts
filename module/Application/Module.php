<?php

namespace Application;

use Zend\Mvc\ModuleRouteListener;
use Zend\Mvc\MvcEvent;
use Application\Model\Artist;
use Application\Model\ArtistTable;
use Application\Model\Concert;
use Application\Model\ConcertTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;

class Module
{
    public function onBootstrap(MvcEvent $e)
    {
        $eventManager        = $e->getApplication()->getEventManager();
        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }

    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }

    public function getServiceConfig()
    {
        return array(

            'factories' => array(
                'Application\Model\ArtistTable' =>  function($sm) {
                    $tableGateway = $sm->get('ArtistTableGateway');
                    $table = new ArtistTable($tableGateway);
                    return $table;
                },
                'ArtistTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Artist());
                    return new TableGateway('artists', $dbAdapter, null, $resultSetPrototype);
                },
                'Application\Model\ConcertTable' =>  function($sm) {
                    $tableGateway = $sm->get('ConcertTableGateway');
                    $table = new ConcertTable($tableGateway);
                    return $table;
                },
                'ConcertTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Concert());
                    return new TableGateway('concerts', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }


}
