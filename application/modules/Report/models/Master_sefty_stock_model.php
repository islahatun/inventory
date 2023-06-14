<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_sefty_stock_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList()
    {
        $result = $this->db->get('sefty_stock_vd')->result();
        return $result;
    }
    public function get_barang()
    {
        $result =  $this->db->get('tbl_barang')->result();
        return $result;
    }
    public function save($data)
    {
        $this->db->insert('tbl_sefty_stock', $data);
        return true;
    }
    public function edit($data)
    {
        $this->db->where('id_persediaan_cadangan', $data['id_persediaan_cadangan']);
        $result =  $this->db->update('tbl_sefty_stock', $data);
        return $result;
    }
    public function delete($where)
    {
        $this->db->where('id_persediaan_cadangan', $where);
        $this->db->delete('tbl_sefty_stock');
    }
}
