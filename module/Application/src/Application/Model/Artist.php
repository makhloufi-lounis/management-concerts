<?php
/**
 * Created by PhpStorm.
 * User: Lounis
 * Date: 16/01/2016
 * Time: 11:43
 */

namespace Application\Model;


class Artist {

    public $id;
    public $name;
    public $desc;
    public $img;
    public $tags;


    public function exchangeArray($data)
    {
        $this->id     = (!empty($data['id'])) ? $data['id'] : null;
        $this->mane  = (!empty($data['name'])) ? $data['name'] : null;
        $this->desc = (!empty($data['description'])) ? $data['description'] : null;
        $this->img = (!empty($data['image'])) ? $data['image'] : null;
        $this->tags = (!empty($data['tags'])) ? $data['tags'] : null;
    }

}