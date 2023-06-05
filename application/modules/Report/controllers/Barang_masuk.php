<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Barang_masuk extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        $this->load->model('Barang_masuk_model');
    }
    public function index()
    {
        $data['title'] = 'Barang Masuk';
        $data['barang'] = $this->Barang_masuk_model->get_barang();

        $data['content_overview'] = $this->load->view('Barang_masuk', $data, true);
        $this->load->view('_parent/overview', $data);
    }
    public function datalist()
    {
        $list = $this->Barang_masuk_model->dataList();
        $rtn = array();
        $i = 1;

        foreach ($list as $di) {

            $rtn[] = array(
                'nomor'                 => $i,
                'id_trans_masuk'         => $di->id_trans_masuk,
                'id_barang'         => $di->id_barang,
                'nama_barang'         => $di->nama_barang,
                'tanggal_masuk'         => $di->tanggal_masuk,
                'stok_masuk'         => $di->stok_masuk,
                'stok_masuk_current' => $di->stok_masuk_current,
                'created_by'       => $di->created_by,
                'username'       => $di->username,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {
        // mengambil data sesuai jumlah row
        $max = $this->Barang_masuk_model->get_max_id();

        $urutan = $max + 1;
        $date = date('ymd');

        // membentuk kode barang baru
        // perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
        // misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
        // angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
        $huruf = "TRS-" . $date;
        $id_trans_masuk = $huruf . sprintf("%05s", $urutan);


        $data = array(
            'id_trans_masuk' => $id_trans_masuk,
            'id_barang' => $this->input->post('id_barang'),
            'tanggal_masuk' => $this->input->post('tanggal_masuk'),
            'stok_masuk' => $this->input->post('stok_masuk'),
            'created_date' => date('y-m-d'),
            // 'created_by' => $this->session->userdata('idUser')
        );
        $result =  $this->Barang_masuk_model->save($data);

        if ($result) {
            $message = array(
                'status' => true,
                'message' => 'Barang masuk berhasil disimpan'
            );
        } else {
            $message = array(
                'status' => true,
                'message' => 'Barang masuk gagal disimpan'
            );
        }


        echo json_encode($message);
    }
    public function edit()
    {
        $stok = $this->Barang_masuk_model->stok_barang($this->input->post('id_barang'));
        $count = ($stok->stok -  $this->input->post('stok_masuk_current')) + $this->input->post('stok_masuk');

        $data = [
            'id_trans_masuk' => $this->input->post('id_trans_masuk'),
            'id_barang' => $this->input->post('id_barang'),
            'tanggal_masuk' => $this->input->post('tanggal_masuk'),
            'stok_masuk' => $this->input->post('stok_masuk'),
            'update_date' => date('y-m-d'),
        ];

        $data_barang = [
            'stok' => $count
        ];
        $result =  $this->Barang_masuk_model->edit($data, $data_barang);
        if ($result) {
            $message = array(
                'status' => true,
                'message' => 'Barang masuk berhasil diubah'
            );
        } else {
            $message = array(
                'status' => false,
                'message' => 'Barang masuk gagal diubah'
            );
        }
        echo json_encode($message);
    }
    public function delete()
    {

        $where =  $this->input->post('id');

        $this->Barang_masuk_model->delete($where);
    }

    public function exportPDF()
    {
        $date_from = $this->input->post('date_from');
        $date_to = $this->input->post('date_to');
        $data['date_from'] = $this->input->post('date_from');
        $data['date_to'] = $this->input->post('date_to');
        $data['barang'] = $this->Barang_masuk_model->get_barang_report($date_from, $date_to);
        $mpdf = new \Mpdf\Mpdf();
        $mpdf->AddPage("L", "", "", "", "", "15", "15", "15", "15", "", "", "", "", "", "", "", "", "", "", "", "A4");
        $content = $this->load->view('Barang_masuk_print', $data, TRUE);
        $mpdf->WriteHTML($content);
        $mpdf->Output();
    }
}
