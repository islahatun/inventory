<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_rop_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function dataList()
    {
        $result = $this->db->get('rop_vd')->result();
        return $result;
    }
    public function get_persediaan_cadangan_barang()
    {
        $result =  $this->db->get('sefty_stock_vd')->result();
        return $result;
    }
    public function get_persediaan_cadangan_barang_byId()
    {
        $result =  $this->db->get('sefty_stock_vd')->row();
        return $result;
    }
    public function save($data)
    {
        $this->db->insert('tbl_rop', $data);
        return true;
    }
    public function edit($data)
    {
        $this->db->where('id_rop', $data['id_rop']);
        $result =  $this->db->update('tbl_rop', $data);
        return $result;
    }
    public function delete($where)
    {
        $this->db->where('id_rop', $where);
        $this->db->delete('tbl_rop');
    }
}
