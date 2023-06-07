<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {

        parent::__construct();
        $this->load->model('Dashboard_model');
    }

    public function index()
    {
        $bulan = date('m');
        $data['barang_masuk'] = $this->Dashboard_model->data_barang_masuk($bulan);
        $data['barang_keluar'] = $this->Dashboard_model->data_barang_keluar($bulan);

        $ss = $this->Dashboard_model->data_barang_sefty_stock();
        foreach ($ss as $s) {
            if ($s->stok < $s->persediaan_cadangan) {
                if ($s->stok < 0) {
                    $stok = 0;
                } else {
                    $stok = $s->stok;
                }
                $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">Stok 
                <strong>' . $s->nama_barang . '!</strong> berjumlah ' . $stok . ' kurang dari persediaan cadangan
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>');
            }
        }
        $data['content_overview'] = $this->load->view('Dashboard', $data, true);
        $this->load->view('_parent/overview', $data);
    }
}
