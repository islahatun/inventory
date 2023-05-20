<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_jenis_barang_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList()
    {
        $result = $this->db->get('tbl_jenis_barang')->result();
        return $result;
    }
    public function getDataByName($nama_jenis_barang)
    {
        $result =  $this->db->get_where('tbl_jenis_barang', array('nama_jenis_barang' => $nama_jenis_barang))->result();
        return $result;
    }
    public function save($data)
    {
        $this->db->insert('tbl_jenis_barang', $data);
        return true;
    }
    public function edit($data)
    {
        $this->db->where('id_jenis_barang', $data['id_jenis_barang']);
        $result =  $this->db->update('tbl_jenis_barang', $data);
        return $result;
    }
    public function delete($where)
    {
        $this->db->where('id_jenis_barang', $where);
        $this->db->delete('tbl_jenis_barang');
    }
}
