<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_jenis_barang extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Master_jenis_barang_model');
    }
    public function index()
    {
        $data['title'] = 'Master Jenis Barang';

        $data['content_overview'] = $this->load->view('Master_jenis_barang', $data, true);
        $this->load->view('_parent/overview', $data);
    }
    public function datalist()
    {
        $list = $this->Master_jenis_barang_model->dataList();
        $rtn = array();
        $i = 1;

        foreach ($list as $di) {

            $rtn[] = array(
                'nomor'                 => $i,
                'id_jenis_barang'         => $di->id_jenis_barang,
                'nama_jenis_barang'         => $di->nama_jenis_barang,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {
        $getName =  $this->Master_jenis_barang_model->getDataByName($this->input->post('nama_jenis_barang'));
        if ($getName) {
            $message = array(
                'status' => false,
                'message' => 'Nama satuan sudah digunakan'
            );
        } else {
            $data = array(
                'nama_jenis_barang' => $this->input->post('nama_jenis_barang'),
                'created_date' => date('y-m-d'),
                'created_by' => $this->session->userdata('id')
            );
            $result =  $this->Master_jenis_barang_model->save($data);

            if ($result) {
                $message = array(
                    'status' => true,
                    'message' => 'Data satuan berhasil disimpan'
                );
            } else {
                $message = array(
                    'status' => true,
                    'message' => 'Data satuan gagal disimpan'
                );
            }
        }
        echo json_encode($message);
    }
    public function edit()
    {


        $data = [
            'id_jenis_barang' => $this->input->post('id_jenis_barang'),
            'nama_jenis_barang' => $this->input->post('nama_jenis_barang'),
            'update_date' => date('y-m-d'),
            'update_by' => $this->session->userdata('id')
        ];
        $result =  $this->Master_jenis_barang_model->edit($data);
        if ($result) {
            $message = array(
                'status' => true,
                'message' => 'Data satuan berhasil diubah'
            );
        } else {
            $message = array(
                'status' => false,
                'message' => 'Data satuan gagal diubah'
            );
        }
        echo json_encode($message);
    }

    public function delete()
    {

        $where =  $this->input->post('id');

        $this->Master_jenis_barang_model->delete($where);
    }
}
