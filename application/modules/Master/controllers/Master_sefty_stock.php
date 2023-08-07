<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_sefty_stock extends CI_Controller
{
	public function __construct()
	{

		parent::__construct();
		$this->load->model('Master_sefty_stock_model');
	}
	public function index()
	{
		$data['title'] = 'Persediaan Cadangan';
		$data['barang'] = $this->Master_sefty_stock_model->get_barang();

		$data['content_overview'] = $this->load->view('Master_sefty_stock', $data, true);
		$this->load->view('_parent/overview', $data);
	}
	public function datalist()
	{
		$list = $this->Master_sefty_stock_model->dataList();
		$rtn = array();
		$i = 1;

		foreach ($list as $di) {

			$rtn[] = array(
				'nomor'                 => $i,
				'nama_barang'         => $di->nama_barang,
				'pengambilan_harian_maximum'         => $di->pengambilan_harian_maximum . ' ' . $di->nama_satuan,
				'jumlah_hari'         => $di->jumlah_hari,
				'persediaan_cadangan'       => $di->persediaan_cadangan . ' ' . $di->nama_satuan,
				'id_persediaan_cadangan'       => $di->id_persediaan_cadangan,
				'id_barang'       => $di->id_barang,
			);
			$i++;
		}

		echo json_encode($rtn);
	}
	public function save()
	{

		$ss = $this->input->post('jumlah_hari') * $this->input->post('pengambilan_harian_maximum');

		$data = array(
			'jumlah_hari' => $this->input->post('jumlah_hari'),
			'pengambilan_harian_maximum' => $this->input->post('pengambilan_harian_maximum'),
			'id_barang' => $this->input->post('id_barang'),
			'persediaan_cadangan' => $ss,
			'created_date' => date('y-m-d'),
			'created_by' => $this->session->userdata('id')
		);
		$result =  $this->Master_sefty_stock_model->save($data);

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

		$ss = $this->input->post('jumlah_hari') * $this->input->post('pengambilan_harian_maximum');
		$data = [
			'id_barang' => $this->input->post('id_barang'),
			'jumlah_hari' => $this->input->post('jumlah_hari'),
			'pengambilan_harian_maximum' => $this->input->post('pengambilan_harian_maximum'),
			'persediaan_cadangan' => $ss,
			'update_date' => date('y-m-d'),
			'update_by' => $this->session->userdata('id')
		];
		$result =  $this->Master_sefty_stock_model->edit($data);
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

		var_dump($where);

		$this->Master_sefty_stock_model->delete($where);
	}
}
