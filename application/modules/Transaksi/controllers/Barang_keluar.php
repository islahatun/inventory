<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Barang_keluar extends CI_Controller
{
	public function __construct()
	{

		parent::__construct();
		$this->load->model('Barang_keluar_model');
	}
	public function index()
	{
		$data['title'] = 'Barang keluar';
		$data['barang'] = $this->Barang_keluar_model->get_barang();

		$data['content_overview'] = $this->load->view('Barang_keluar', $data, true);
		$this->load->view('_parent/overview', $data);
	}
	public function datalist()
	{
		$list = $this->Barang_keluar_model->dataList($this->session->userdata('group_id'));
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
	public function save()
	{
		// mengambil data sesuai jumlah row
		$max = $this->Barang_keluar_model->get_max_id();

		$urutan = $max + 1;
		$date = date('ymd');

		// membentuk kode barang baru
		// perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
		// misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
		// angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
		$huruf = "TRSK-" . $date;
		$id_trans_keluar = $huruf . sprintf("%05s", $urutan);


		$data = array(
			'id_trans_keluar' => $id_trans_keluar,
			'id_barang' => $this->input->post('id_barang'),
			'tanggal_keluar' => $this->input->post('tanggal_keluar'),
			'stok_keluar' => $this->input->post('stok_keluar'),
			'created_date' => date('y-m-d'),
			'created_by' => $this->session->userdata('id')
		);
		$result =  $this->Barang_keluar_model->save($data);

		if ($result) {
			$message = array(
				'status' => true,
				'message' => 'Barang keluar berhasil disimpan'
			);
		} else {
			$message = array(
				'status' => true,
				'message' => 'Barang keluar gagal disimpan'
			);
		}


		echo json_encode($message);
	}
	public function edit()
	{
		$stok = $this->Barang_keluar_model->stok_barang($this->input->post('id_barang'));
		$count = ($stok->stok -  $this->input->post('stok_keluar_current')) - $this->input->post('stok_keluar');

		$data = [
			'id_trans_keluar' => $this->input->post('id_trans_keluar'),
			'id_barang' => $this->input->post('id_barang'),
			'tanggal_keluar' => $this->input->post('tanggal_keluar'),
			'stok_keluar' => $this->input->post('stok_keluar'),
			'update_date' => date('y-m-d'),
			'update_by' => $this->session->userdata('id')
		];

		$data_barang = [
			'stok' => $count
		];
		$result =  $this->Barang_keluar_model->edit($data, $data_barang);
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

		$this->Barang_keluar_model->delete($where);
	}
}
