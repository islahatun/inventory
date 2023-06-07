<?php defined('BASEPATH') or exit('No direct script access allowed');

class Barang_masuk_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList($userId)
    {
        $result = $this->db->get('trans_barang_masuk_vd', ['created_by' => $userId])->result();
        return $result;
    }
    public function get_max_id()
    {
        $result =  $this->db->get('trans_barang_masuk')->num_rows();
        return $result;
    }
    public function get_barang()
    {
        $result =  $this->db->get('tbl_barang')->result();
        return $result;
    }
    public function stok_barang($id_barang)
    {
        $result =  $this->db->get_where('tbl_barang', array('id_barang' => $id_barang))->row();
        return $result;
    }
    public function save($data)
    {
        $header =  $this->db->insert('trans_barang_masuk', $data);
        if ($header) {
            $barang = $this->db->get_where('tbl_barang', array('id_barang' => $data['id_barang']))->row();
            $stok = $barang->stok + $data['stok_masuk'];
            $this->db->where('id_barang', $data['id_barang']);
            $this->db->update('tbl_barang', ['stok' => $stok]);
        }
        return true;
    }
    public function edit($data, $data_barang)
    {
        $this->db->where('id_trans_masuk', $data['id_trans_masuk']);
        $this->db->update('trans_barang_masuk', $data);

        $this->db->where('id_barang', $data['id_barang']);
        $result =   $this->db->update('tbl_barang', ['stok' => $data_barang['stok']]);
        return $result;
    }
    public function delete($where)
    {
        $this->db->where('id_trans_masuk', $where);
        $this->db->delete('trans_barang_masuk');
    }
}
