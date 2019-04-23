<?php
//Turn on error reporting
ini_set('display_errors', 1);
error_reporting(E_ALL);

//Require autoload
require_once('vendor/autoload.php');
session_start();

//create an instance of the Base class
$f3 = Base::instance();

//Turn on fat free error reporting
$f3->set('DEBUG', 3);

//Define Default route
$f3->route('GET|POST /', function()
{

    //stuff if necessary

    //load a template
    $template = new Template();
    echo $template->render('views/home.html');
});

$f3->run();