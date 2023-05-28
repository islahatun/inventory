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
        $data['title'] = 'ROP';
        $data['barang'] = $this->Master_rop_model->get_persediaan_cadangan_barang();

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
                'id_rop'         => $di->id_rop,
                'nama_barang'         => $di->nama_barang,
                'titik_pemesanan_kembali'         => $di->titik_pemesanan_kembali,
                'waktu_tunggu'         => $di->waktu_tunggu,
                'permintaan_rata_rata'       => $di->permintaan_rata_rata . ' ' . $di->nama_satuan,
                'persediaan_cadangan'       => $di->persediaan_cadangan . ' ' . $di->nama_satuan,
                'id_persediaan_cadangan'       => $di->id_persediaan_cadangan,
            );
            $i++;
        }

        echo json_encode($rtn);
    }
    public function save()
    {
        $ss = $this->Master_rop_model->get_persediaan_cadangan_barang_byId($this->input->post('id_persediaan_cadangan'));

        $rop = ($this->input->post('waktu_tunggu') * $this->input->post('permintaan_rata_rata')) + $ss->persediaan_cadangan;
        $data = array(
            'waktu_tunggu' => $this->input->post('waktu_tunggu'),
            'titik_pemesanan_kembali' => $rop,
            'id_persediaan_cadangan' => $this->input->post('id_persediaan_cadangan'),
            'waktu_tunggu' => $this->input->post('waktu_tunggu'),
            'permintaan_rata_rata' => $this->input->post('permintaan_rata_rata'),
            'persediaan_cadangan' => $ss->persediaan_cadangan,
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
            'id_rop' => $this->input->post('id_rop'),
            'waktu_tunggu' => $this->input->post('waktu_tunggu'),
            'titik_pemesanan_kembali' => $this->input->post('titik_pemesanan_kembali'),
            'id_persediaan_cadangan' => $this->input->post('id_persediaan_cadangan'),
            'waktu_tunggu' => $this->input->post('waktu_tunggu'),
            'permintaan_rata_rata' => $this->input->post('permintaan_rata_rata'),
            'persediaan_cadangan' => $this->input->post('persediaan_cadangan'),
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
