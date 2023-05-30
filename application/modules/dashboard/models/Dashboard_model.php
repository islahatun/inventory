<?php defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard_model extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
    }

    public function data_barang_sefty_stock()
    {
        $result = $this->db->get('dashboard_barang_vd')->result();
        return $result;
    }
    public function data_barang_masuk($bulan)
    {
        $result =  $this->db->get_where('dashboard_barang_masuk_vd', array('bulan' => $bulan))->row();
        return $result;
    }
    public function data_barang_keluar($bulan)
    {
        $result =  $this->db->get_where('dashboard_barang_keluar_vd', array('bulan' => $bulan))->row();
        return $result;
    }
}
