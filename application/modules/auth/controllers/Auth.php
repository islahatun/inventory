<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Auth_model');
    }
    public function index()
    {
        $this->load->view('Auth');
    }
    public function login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $row = $this->Auth_model->login($username);

        if ($row->num_rows() > 0) {
            $hasil = $row->row();
            if (password_verify($password, $hasil->password)) {
                if ($hasil->active == 'Y') {
                    $data = [
                        'id' => $hasil->id,
                        'username' => $hasil->username,
                        'group_id' => $hasil->group_id
                    ];
                    $this->session->set_userdata($data);
                    redirect('Dashboard');
                    // $data['content_overview'] = $this->load->view('Dashboard/Dashboard', true);
                    // $this->load->view('_parent/overview', $data);
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Akun sudah tidak aktif !</div>'); //Kirim message ke form login 
                    redirect('Auth');
                }
            } else {

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Anda Salah !</div>'); //Kirim message ke form login 
                redirect('Auth');
            }
        } else {

            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username & Password Anda Salah !</div>'); //Kirim message ke form login 
            redirect('Auth');
        }
    }
    function logout()
    {
        $this->session->unset_userdata('id');
        $this->session->unset_userdata('group_id');
        $this->session->unset_userdata('username');

        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Anda telah logout. </div>');
        redirect('auth/index');
    }
}
