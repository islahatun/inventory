<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_satuan_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList()
    {
        $result = $this->db->get('tbl_satuan')->result();
        return $result;
    }
    public function getDataByName($nama_satuan)
    {
        $result =  $this->db->get_where('tbl_satuan', array('nama_satuan' => $nama_satuan))->result();
        return $result;
    }
    public function save($data)
    {
        $this->db->insert('tbl_satuan', $data);
        return true;
    }
    public function edit($data)
    {
        $this->db->where('id_satuan', $data['id_satuan']);
        $result =  $this->db->update('tbl_satuan', $data);
        return $result;
    }
    public function delete($where)
    {
        $this->db->where('id_satuan', $where);
        $this->db->delete('tbl_satuan');
    }
}
