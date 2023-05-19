<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_user_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList()
    {
        $result = $this->db->get('user_vd')->result();
        return $result;
    }
    public function get_group()
    {
        $result =  $this->db->get('tbl_group_user')->result();
        return $result;
    }
    public function save($data)
    {
        $this->db->insert('tbl_users', $data);
        return true;
    }
    public function edit($data)
    {
        $this->db->where('id', $data['id']);
        $this->db->update('tbl_users', $data);
    }
    public function reset_password($data)
    {
        $this->db->where('id', $data['id']);
        $this->db->update('tbl_users', array('password' => $data['password']));
    }
    public function delete($where)
    {
        $this->db->where('id', $where);
        $this->db->delete('tbl_users');
    }
}
