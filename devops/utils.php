<?php

require_once __DIR__.'/../vendor/autoload.php';

$dotenv = new Dotenv\Dotenv(__DIR__.'/../');
$dotenv->load();

switch ($argv[1]) {
    case 'env':
        echo $argv[2] ? getenv($argv[2], @$argv[3]) : '';
}

