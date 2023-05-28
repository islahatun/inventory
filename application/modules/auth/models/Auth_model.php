<?php defined('BASEPATH') or exit('No direct script access allowed');

class Auth_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function login($username)
    {
        $result  = $this->db->get_where('tbl_users', ['username' => $username]);
        return $result;
    }
}
