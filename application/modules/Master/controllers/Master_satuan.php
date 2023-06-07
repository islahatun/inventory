<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_satuan extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Master_satuan_model');
    }
    public function index()
    {
        $data['title'] = 'Master Satuan';

        $data['content_overview'] = $this->load->view('Master_satuan', $data, true);
        $this->load->view('_parent/overview', $data);
    }
    public function datalist()
    {
        $list = $this->Master_satuan_model->dataList();
        $rtn = array();
        $i = 1;

        foreach ($list as $di) {

            $rtn[] = array(
                'nomor'                 => $i,
                'id_satuan'         => $di->id_satuan,
                'nama_satuan'         => $di->nama_satuan,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {
        $getName =  $this->Master_satuan_model->getDataByName($this->input->post('nama_satuan'));
        if ($getName) {
            $message = array(
                'status' => false,
                'message' => 'Nama satuan sudah digunakan'
            );
        } else {
            $data = array(
                'nama_satuan' => $this->input->post('nama_satuan'),
                'created_date' => date('y-m-d'),
                'created_by' => $this->session->userdata('id')
            );
            $result =  $this->Master_satuan_model->save($data);

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
            'id_satuan' => $this->input->post('id_satuan'),
            'nama_satuan' => $this->input->post('nama_satuan'),
            'update_date' => date('y-m-d'),
            'update_by' => $this->session->userdata('id')
        ];
        $result =  $this->Master_satuan_model->edit($data);
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

        $this->Master_satuan_model->delete($where);
    }
}
