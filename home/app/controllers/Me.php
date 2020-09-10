<?php

class Me extends Controller
{
    private $db;


    public function __construct()
    {
        $this->contactModel = $this->model('Contact');
        $this->db = new Database;
    }

    public function index()
    {
        $this->view('include/header');
        $this->view('index');
        $this->view('whoami');
        $this->view('skills');
        $this->view('work');
        $this->view('contact');
    }


    public function showMe()
    {
        echo '<pre>';
        var_dump($this->contactModel->fetchContacts());

        echo '</pre>';
    }

    public function contact()
    {
        //Sanitize Post

        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
        $data = [
            'name' => trim($_POST['fullname']),
            'phone' => trim($_POST['phone']),
            'textarea' => trim($_POST['textarea']),
        ];
        if (empty($data['name_err']) && empty($data['phone_err'])) {
            if ($this->contactModel->contact($data)) {
                redirect('');
            } else {
                die('something went wrong');
            }
        } else {

            //Load view with Errors
            $this->view('index', $data);
        }
    }
}
