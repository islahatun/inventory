<?php defined('BASEPATH') or exit('No direct script access allowed');

class Profile_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function get_data($id)
    {
        $result  = $this->db->get_where('tbl_users', ['id' => $id])->row();
        return $result;
    }
    public function edit($data)
    {
        $this->db->where('id', $data['id']);
        $this->db->update('tbl_users', array('password' => $data['password']));
        return true;
    }
}
