<?php
class Shop_MyShop_ProductController extends Mage_Core_Controller_Front_Action{
    public function showAction(){ }

    public $a = 2;
    public function helloAction(){



        $this->loadLayout();



        $a=2;
        $this->renderLayout();

    }


}