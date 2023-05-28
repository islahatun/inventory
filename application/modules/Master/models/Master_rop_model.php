<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_rop_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList()
    {
        $result = $this->db->get('barang_vd')->result();
        return $result;
    }
    public function get_max_id()
    {
        $result =  $this->db->get('tbl_barang')->num_rows();
        return $result;
    }
    public function get_jenis_barang()
    {
        $result =  $this->db->get('tbl_jenis_barang')->result();
        return $result;
    }
    public function get_satuan()
    {
        $result =  $this->db->get('tbl_satuan')->result();
        return $result;
    }
    public function save($data)
    {
        $this->db->insert('tbl_barang', $data);
        return true;
    }
    public function edit($data)
    {
        $this->db->where('id_barang', $data['id_barang']);
        $result =  $this->db->update('tbl_barang', $data);
        return $result;
    }
    public function delete($where)
    {
        $this->db->where('id_barang', $where);
        $this->db->delete('tbl_barang');
    }
}
