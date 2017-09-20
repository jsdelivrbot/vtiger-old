<?php
/**
 *
 */
require_once 'vtigerextends.php';
require_once __DIR__.'/vendor/autoload.php';

/**
 * Create a
 */
vtigerextends('add custom function', function() use ($adb) {
    require_once 'modules/com_vtiger_workflow/VTEntityMethodManager.inc';
    $emm = new VTEntityMethodManager($adb);
    $emm->addEntityMethod(
        'Contacts',
        'Contacts create',
        'custom/workflow-custom-function.php',
        'workflow_custom_function_contacts_create'
    );
});
