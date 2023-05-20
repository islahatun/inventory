<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_barang extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Master_barang_model');
    }
    public function index()
    {
        $data['title'] = 'Master barang';
        $data['group'] = $this->Master_barang_model->get_group();

        $data['content_overview'] = $this->load->view('Master_barang', $data, true);
        $this->load->view('_parent/overview', $data);
    }
    public function datalist()
    {
        $list = $this->Master_barang_model->dataList();
        $rtn = array();
        $i = 1;

        foreach ($list as $di) {

            $rtn[] = array(
                'nomor'                 => $i,
                'id_barang'         => $di->id_barang,
                'nama_barang'         => $di->nama_barang,
                'id_jenis_barang'       => $di->id_jenis_barang,
                'id_satuan'       => $di->id_satuan,
                'stok'       => $di->stok,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {

        $data = array(
            'nama_barang' => $this->input->post('nama_barang'),
            'stok' => $this->input->post('stok'),
            'id_satuan' => $this->input->post('id_satuan'),
            'id_jenis_barang' => $this->input->post('id_jenis_barang'),
            'created_date' => date('y-m-d'),
            // 'created_by' => $this->session->userdata('idUser')
        );
        $result =  $this->Master_barang_model->save($data);

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
            'id' => $this->input->post('id'),
            'nama_barang' => $this->input->post('nama_barang'),
            'name' => $this->input->post('name'),
            'active' => $this->input->post('active'),
            'id_jenis_barang' => $this->input->post('id_jenis_barang'),
            'update_date' => date('y-m-d'),
        ];
        $result =  $this->Master_barang_model->edit($data);
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
    public function reset_password()
    {
        $data = [
            'id' => $this->input->post('id'),
            'password' => password_hash('Password', PASSWORD_DEFAULT)
        ];
        $this->Master_barang_model->reset_password($data);
    }
    public function delete()
    {

        $where =  $this->input->post('id');

        $this->Master_barang_model->delete($where);
    }
}
