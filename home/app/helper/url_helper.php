<?php


//Simple Page Redirect
function redirect($location)
{
    return header('Location: ' . URL_ROOT . '/' . $location);
}
