<?php

function vtigerextends_class_loader($a, $b, $c)
{


    echo '<pre>';
    $backtrace = debug_backtrace();

    var_dump($backtrace);



    die();

}
