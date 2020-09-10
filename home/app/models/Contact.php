<?php


class Contact
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    //Register User
    public function contact($data)
    {
        $this->db->query('INSERT INTO contact(name,phone,textarea) VALUES(?,?,?)');
        $this->db->bind(1, $data['name']);
        $this->db->bind(2, $data['phone']);
        $this->db->bind(3, $data['textarea']);
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }
    public function fetchContacts()
    {
        $this->db->query("SELECT * FROM contact ORDER BY contact.id DESC LIMIT 5");
        $row = $this->db->resultSet();
        return $row;
    }
}
