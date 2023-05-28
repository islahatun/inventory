<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_rop extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Master_rop_model');
    }
    public function index()
    {
        $data['title'] = 'Master barang';
        $data['jenis_barang'] = $this->Master_rop_model->get_jenis_barang();
        $data['satuan'] = $this->Master_rop_model->get_satuan();

        $data['content_overview'] = $this->load->view('Master_rop', $data, true);
        $this->load->view('_parent/overview', $data);
    }
    public function datalist()
    {
        $list = $this->Master_rop_model->dataList();
        $rtn = array();
        $i = 1;

        foreach ($list as $di) {

            $rtn[] = array(
                'nomor'                 => $i,
                'id_barang'         => $di->id_barang,
                'id_jenis_barang'         => $di->id_jenis_barang,
                'id_satuan'         => $di->id_satuan,
                'nama_barang'         => $di->nama_barang,
                'nama_jenis_barang'       => $di->nama_jenis_barang,
                'nama_satuan'       => $di->nama_satuan,
                'stok'       => $di->stok,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {

        $max = $this->Master_rop_model->get_max_id();

        $urutan = $max + 1;

        // membentuk kode barang baru
        // perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
        // misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
        // angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
        $huruf = "BRG";
        $id_barang = $huruf . sprintf("%05s", $urutan);


        $data = array(
            'id_barang' => $id_barang,
            'nama_barang' => $this->input->post('nama_barang'),
            'id_satuan' => $this->input->post('id_satuan'),
            'id_jenis_barang' => $this->input->post('id_jenis_barang'),
            'created_date' => date('y-m-d'),
            // 'created_by' => $this->session->userdata('idUser')
        );
        $result =  $this->Master_rop_model->save($data);

        if ($result) {
            $message = array(
                'status' => true,
                'message' => 'Data pengguna berhasil disimpan'
            );
        } else {
            $message = array(
                'status' => true,
                'message' => 'Data pengguna gagal disimpan'
            );
        }


        echo json_encode($message);
    }
    public function edit()
    {


        $data = [
            'id_barang' => $this->input->post('id_barang'),
            'nama_barang' => $this->input->post('nama_barang'),
            'id_satuan' => $this->input->post('id_satuan'),
            'id_jenis_barang' => $this->input->post('id_jenis_barang'),
            'update_date' => date('y-m-d'),
        ];
        $result =  $this->Master_rop_model->edit($data);
        if ($result) {
            $message = array(
                'status' => true,
                'message' => 'Data pengguna berhasil diubah'
            );
        } else {
            $message = array(
                'status' => false,
                'message' => 'Data pengguna gagal diubah'
            );
        }
        echo json_encode($message);
    }
    public function delete()
    {

        $where =  $this->input->post('id');

        $this->Master_rop_model->delete($where);
    }
}
