<?php
/**
 * Created by PhpStorm.
 * User: Lounis
 * Date: 16/01/2016
 * Time: 11:58
 */

namespace Application\Model;

use Zend\Db\TableGateway\TableGateway;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\Sql\Select;
use Zend\Form\Annotation\Object;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;
use Zend\Db\Sql\Sql;

class ConcertTable {

    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }


    public function fetchAll()
    {
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }

    public function getConcertsOfAllArtists()
    {
        $concerts = new \ArrayObject();
        $select = new Select();
        $select->from(array('c'=> 'concerts'), array('id', 'place', 'city', 'date_concert', 'cost'))  // base table
        ->join(array('a' => 'artists'),     // join table with alias
            'c.id_artist = a.id',array('name', 'tags', 'image'))->order('cost')->quantifier('DISTINCT');

        $resultSetPrototype = new ResultSet();
        $resultSetPrototype->setArrayObjectPrototype($concerts);

        $paginatorAdapter = new DbSelect(
        // our configured select object
            $select,
            // the adapter to run it against
            $this->tableGateway->getAdapter(),
            // the result set to hydrate
            $resultSetPrototype
        );
        $paginator = new Paginator($paginatorAdapter);
        return $paginator;
    }

    public function getConcertsById($id)
    {
        $id = (int) $id;
        $adapter = $this->tableGateway->getAdapter();
        $sql = new Sql($adapter);
        $select = $sql->select();
        $select->from(array('c'=> 'concerts'), array('place', 'address', 'city', 'date_concert', 'cost'))  // base table
            ->join(array('a' => 'artists'),'c.id_artist = a.id',array('name', 'image', 'description')) // join table with alias
            ->where(array('c.id' => $id));
        $statement = $sql->prepareStatementForSqlObject($select);
        $results = $statement->execute();
        return $results->current();
    }

    public function getConcertsByFilter($params)
    {

        $adapter = $this->tableGateway->getAdapter();
        $sql = new Sql($adapter);
        $select = $sql->select();
        $select->from(
                       array('c'=> 'concerts'),
                       array( 'place', 'address', 'city', 'date_concert', 'cost', 'id_artist'))  // base table
                ->join(
                       array('a' => 'artists'),
                            'c.id_artist = a.id',
                       array('name', 'image', 'tags')
                    ); // join table with alias

        if(count($params) == 5){

            $select->where(array(
                'city' => $params['city'],
                'tags' => $params['tags'],
                'cost' => $params['cost'],
                    ))
                ->where->between('date_concert', $params['date_start'], $params['date_end']);

            $statement = $sql->prepareStatementForSqlObject($select);
            $results = $statement->execute();
            return $results->current();

        }else {

            foreach ($params as $key => $value) {
                if ($key == 'date_start') {
                    $select->where('date_concert >= '.$value);
                } elseif ($key == 'date_end') {
                    $select->where('date_concert <= '.$value);
                }else{
                    $select->where(array($key => $value));
                }
            }

            $statement = $sql->prepareStatementForSqlObject($select);
            $results = $statement->execute();
            return $results;


        }


    }

}