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
$f3->route('GET|POST /', function($f3)
{
    //stuff if necessary
    $f3->set('content', 'views/home.html');

    //load a template
    $template = new Template();
    echo $template->render('views/template.html');
});

//Individual student table
$f3->route('GET|POST /students', function($f3)
{
    $f3->set('content', 'views/students.html');

    //load a template
    $template = new Template();
    echo $template->render('views/template.html');
});

$f3->run();