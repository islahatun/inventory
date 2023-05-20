<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_user extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Master_user_model');
    }
    public function index()
    {
        $data['title'] = 'Master Pengguna';
        $data['group'] = $this->Master_user_model->get_group();

        $data['content_overview'] = $this->load->view('Master_user', $data, true);
        $this->load->view('_parent/overview', $data);
    }
    public function datalist()
    {
        $list = $this->Master_user_model->dataList();
        $rtn = array();
        $i = 1;

        foreach ($list as $di) {

            $rtn[] = array(
                'nomor'                 => $i,
                'id'         => $di->id,
                'username'         => $di->username,
                'name'         => $di->name,
                'group_id'       => $di->group_id,
                'group_name'       => $di->group_name,
                'active'       => $di->active,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {
        $getName =  $this->Master_user_model->getDataByName($this->input->post('username'));
        if ($getName) {
            $message = array(
                'status' => false,
                'message' => 'Username sudah digunakan'
            );
        } else {
            $data = array(
                'username' => $this->input->post('username'),
                'name' => $this->input->post('name'),
                'password' => password_hash('Password', PASSWORD_DEFAULT),
                'active' => $this->input->post('active'),
                'group_id' => $this->input->post('group_id'),
                'created_date' => date('y-m-d'),
                // 'created_by' => $this->session->userdata('idUser')
            );
            $result =  $this->Master_user_model->save($data);

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
        }

        echo json_encode($message);
    }
    public function edit()
    {

        $data = [
            'id' => $this->input->post('id'),
            'username' => $this->input->post('username'),
            'name' => $this->input->post('name'),
            'active' => $this->input->post('active'),
            'group_id' => $this->input->post('group_id'),
            'update_date' => date('y-m-d'),
        ];
        $result =  $this->Master_user_model->edit($data);
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
        $this->Master_user_model->reset_password($data);
    }
    public function delete()
    {

        $where =  $this->input->post('id');

        $this->Master_user_model->delete($where);
    }
}
