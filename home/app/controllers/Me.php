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
        $data = [

            'blog' => (object)[
                'id' => '1',
                'url' => 'http://techpr.dor-projects.com',
                'imgURL' => '/images/work/techpr.png',
                'description' => '<p class="ltl">First project Hacker-U College</p>
                                      <p>Made with PHP NATIVE</p>',
                'title' => 'Blog Project'
            ],
            'shop' => (object)[
                'id' => '2',
                'url' => 'http://shop.dor-projects.com',
                'imgURL' => '/images/work/petzone.png',
                'description' => ' <p class="ltl">Final project Hacker-U College</p>
                        <p>Made with Laravel MVC</p>',
                'title' => 'Petzone Project'
            ],
            'gym' => (object) [
                'id' => '3',
                'url' => 'http://gym.dordl.com',
                'imgURL' => '/images/work/gym.png',
                'description' => '<p class="ltl">Personal Trainer Gym</p>
                        <p>Made with NODEJS & MONGOOSE </p>',
                'title' => 'Gym Project'
            ],
            'landingPage' => (object) [
                'id' => '4',
                'url' => 'http://landing.dor-projects.com',
                'imgURL' => '/images/work/landing.png',
                'description' => '<p class="ltl">Landing Site</p>
                        <p>Made with PHP + JQUERY </p>',
                'title' => 'Landing site project'
            ]

        ];
        $this->view('include/header');
        $this->view('index');
        $this->view('whoami');
        $this->view('skills');
        $this->view('work', $data);
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
