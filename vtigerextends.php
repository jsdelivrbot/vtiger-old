<?php

// set the default timezone if not set at php.ini
if (!@date_default_timezone_get('date.timezone')) {
    // insert here the default timezone
    date_default_timezone_set('America/New_York');
}

//
error_reporting(E_ALL);
ini_set('display_errors', 1);
set_include_path(dirname(__DIR__));

//
require_once 'include/utils/utils.php';

//
function vtigerextends($name, $callable)
{
    $extends = (array) json_decode(file_get_contents(__DIR__.'/vtigerextends.json'), true);

    if (!isset($extends[$name])) {
        $extends[$name] = 1;
        file_put_contents(__DIR__.'/vtigerextends.json', json_encode($extends));
        call_user_func($callable);
        echo 'Extension installed: '.$name."\n";
    }
}