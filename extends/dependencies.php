<?php
/**
 *
 */

$c = vtiger_extends_container();

$c['module Contacts'] = function ($c) {
    require_once __DIR__.'/modules/Contacts.php';
    return new VtigerExtends\Modules\Contacts();
};


