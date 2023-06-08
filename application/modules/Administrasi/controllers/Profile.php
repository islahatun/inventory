<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Profile_model');
    }
    public function index()
    {
        $data['title'] = 'Profile';

        $data['content_overview'] = $this->load->view('Profile', $data, true);
        $this->load->view('_parent/overview', $data);
    }

    public function edit()
    {

        $id = $this->session->userdata('id');
        $hasil = $this->Profile_model->get_data($id);
        $password = $this->input->post('current_password');

        if (password_verify($password, $hasil->password)) {

            $data = [
                'id' => $this->session->userdata('id'),
                'password' => password_hash($this->input->post('new_password'), PASSWORD_DEFAULT)
            ];

            $result =  $this->Profile_model->edit($data);
            if ($result) {
                $message = array(
                    'status' => true,
                    'message' => 'Password berhasil diubah'
                );
            } else {
                $message = array(
                    'status' => false,
                    'message' => 'Password gagal diubah'
                );
            }
        } else {

            $message = array(
                'status' => false,
                'message' => 'Password lama salah'
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
        $this->Profile_model->reset_password($data);
    }
    public function delete()
    {

        $where =  $this->input->post('id');

        $this->Profile_model->delete($where);
    }
}
