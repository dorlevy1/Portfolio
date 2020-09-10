<?php


class Core
{
    protected $currentController = 'Me';
    protected $currentMethod = 'index';
    protected $params = [];

    public function __construct()
    {
        $url = $this->getUrl();

        //Look in Controllers for first value ;
        if (file_exists('../app/controllers/' . ucwords($url[0]) . '.php')) {
            //If exists , set as controller
            $this->currentController = ucwords($url[0]);
            unset($url[0]);
        }
        // Require the current Controller 
        require_once '../app/controllers/' . $this->currentController . '.php';

        //Instantiate conroller class
        $this->currentController = new $this->currentController;

        //Check for second part of URL 

        if (isset($url[1])) {
            //Check to see if method exists in controller
            if (method_exists($this->currentController, $url[1])) {
                $this->currentMethod = $url[1];
                unset($url[1]);
            }
        }
        //Get Params
        $this->params = $url ? array_values($url) : [];
        // Call a callback with array of params
        call_user_func_array([$this->currentController, $this->currentMethod], $this->params);
    }

    public function getUrl()
    {
        if (isset($_GET['url'])) {
            $url = rtrim($_GET['url'], '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url = explode('/', $url);
            return $url;
        }
    }
}
