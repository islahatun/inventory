<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Barang_keluar_approve extends CI_Controller
{
	public function __construct()
	{

		parent::__construct();
		$this->load->model('Barang_keluar_approve_model');
	}
	public function index()
	{
		$data['title'] = 'Barang keluar';
		$data['barang'] = $this->Barang_keluar_approve_model->get_barang();

		$data['content_overview'] = $this->load->view('Barang_keluar_approve', $data, true);
		$this->load->view('_parent/overview', $data);
	}
	public function datalist()
	{
		$list = $this->Barang_keluar_approve_model->dataList();
		$rtn = array();
		$i = 1;

		foreach ($list as $di) {

			$rtn[] = array(
				'nomor'                 => $i,
				'id_trans_keluar'         => $di->id_trans_keluar,
				'id_barang'         => $di->id_barang,
				'nama_barang'         => $di->nama_barang,
				'tanggal_keluar'         => $di->tanggal_keluar,
				'stok_keluar'         => $di->stok_keluar,
				'stok_keluar_current' => $di->stok_keluar_current,
				'created_by'       => $di->created_by,
				'username'       => $di->username,
				'status'       => $di->status,
			);
			$i++;
		}

		echo json_encode($rtn);
	}

	public function edit()
	{
		$data = [
			'id_trans_keluar' => $this->input->post('id_trans_keluar'),
			'status' => $this->input->post('status'),
		];

		$result =  $this->Barang_keluar_approve_model->edit($data);
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

}
