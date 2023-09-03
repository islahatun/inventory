<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_barang extends CI_Controller
{
	public function __construct()
	{

		parent::__construct();
		$this->load->model('Master_barang_model');
		$this->load->model('Master_rop_model');
		$this->load->model('Master_sefty_stock_model');
	}
	public function index()
	{
		$data['title'] = 'Master Bahan';
		$data['jenis_barang'] = $this->Master_barang_model->get_jenis_barang();
		$data['satuan'] = $this->Master_barang_model->get_satuan();

		$data['content_overview'] = $this->load->view('Master_barang', $data, true);
		$this->load->view('_parent/overview', $data);
	}
	public function datalist()
	{
		$list = $this->Master_barang_model->dataList();
		$rtn = array();
		$i = 1;

		foreach ($list as $di) {

			$rtn[] = array(
				'nomor'                 => $i,
				'id_barang'         => $di->id_barang,
				'id_jenis_barang'         => $di->id_jenis_barang,
				'id_satuan'         => $di->id_satuan,
				'nama_barang'         => $di->nama_barang,
				'nama_jenis_barang'       => $di->nama_jenis_barang,
				'nama_satuan'       => $di->nama_satuan,
				'harga'       => $di->harga,
				'persediaan_cadangan'       => $di->persediaan_cadangan,
				'titik_pemesanan_kembali'       => $di->titik_pemesanan_kembali,
				'min'       => $di->min,
				'max'       => $di->max,
				'waktu_tunggu'       => $di->waktu_tunggu,
				'permintaan_rata_rata'       => $di->permintaan_rata_rata,
				'jumlah_hari'       => $di->jumlah_hari,
				'pengambilan_harian_maximum'       => $di->pengambilan_harian_maximum,

			);
			$i++;
		}

		echo json_encode($rtn);
	}
	public function save()
	{

		$max = $this->Master_barang_model->get_max_id();

		$urutan = $max + 1;

		// membentuk kode barang baru
		// perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
		// misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
		// angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
		$huruf = "BRG";
		$id_barang = $huruf . sprintf("%05s", $urutan);
		$ss = $this->input->post('jumlah_hari') * $this->input->post('pengambilan_harian_maximum');
		$max = $ss + (2 * $this->input->post('jumlah_hari'));
		$min = $ss - $this->input->post('jumlah_hari');


		// master bahan baku
		$data = array(
			'id_barang' => $id_barang,
			'nama_barang' => $this->input->post('nama_barang'),
			'id_satuan' => $this->input->post('id_satuan'),
			'id_jenis_barang' => $this->input->post('id_jenis_barang'),
			'harga' => $this->input->post('harga'),
			'max' => $max,
			'min' => $min,
			'created_date' => date('y-m-d'),
			'created_by' => $this->session->userdata('id')
		);
		$result =  $this->Master_barang_model->save($data);
		// master bahan baku end

		// master sefty stock
		$data_sefty_stock = array(
			'jumlah_hari' => $this->input->post('jumlah_hari'),
			'pengambilan_harian_maximum' => $this->input->post('pengambilan_harian_maximum'),
			'id_barang' => $id_barang,
			'persediaan_cadangan' => $ss,
			'created_date' => date('y-m-d'),
			'created_by' => $this->session->userdata('id')
		);
		$result =  $this->Master_sefty_stock_model->save($data_sefty_stock);
		// master sefty stock end


		// master rop
		$ss = $this->Master_rop_model->get_persediaan_cadangan_barang_byId($id_barang);

		$rop = ($this->input->post('waktu_tunggu') * $this->input->post('permintaan_rata_rata')) + $ss->persediaan_cadangan;
		$data_rop = array(
			'waktu_tunggu' => $this->input->post('waktu_tunggu'),
			'titik_pemesanan_kembali' => $rop,
			'id_persediaan_cadangan' => $ss->id_persediaan_cadangan,
			'waktu_tunggu' => $this->input->post('waktu_tunggu'),
			'permintaan_rata_rata' => $this->input->post('permintaan_rata_rata'),
			'persediaan_cadangan' => $ss->persediaan_cadangan,
			'created_date' => date('y-m-d'),
			'created_by' => $this->session->userdata('id')
		);
		$result =  $this->Master_rop_model->save($data_rop);
		// master rop end

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
		$max = $ss + (2 * $this->input->post('jumlah_hari'));
		$min = $ss - $this->input->post('jumlah_hari');

		$data = [
			'id_barang' => $this->input->post('id_barang'),
			'nama_barang' => $this->input->post('nama_barang'),
			'id_satuan' => $this->input->post('id_satuan'),
			'id_jenis_barang' => $this->input->post('id_jenis_barang'),
			'harga' => $this->input->post('harga'),
			'max' => $max,
			'min' => $min,
			'update_date' => date('y-m-d'),
			'update_by' => $this->session->userdata('id')
		];
		$result =  $this->Master_barang_model->edit($data);


		$data_sefty_stock = [
			'id_barang' => $this->input->post('id_barang'),
			'jumlah_hari' => $this->input->post('jumlah_hari'),
			'pengambilan_harian_maximum' => $this->input->post('pengambilan_harian_maximum'),
			'persediaan_cadangan' => $ss,
			'update_date' => date('y-m-d'),
			'update_by' => $this->session->userdata('id')
		];
		$result =  $this->Master_sefty_stock_model->edit($data_sefty_stock);


		$ss = $this->Master_rop_model->get_persediaan_cadangan_barang_byId($this->input->post('id_barang'));

		$rop = ($this->input->post('waktu_tunggu') * $this->input->post('permintaan_rata_rata')) + $ss->persediaan_cadangan;
		$data_rop = [
			'id_persediaan_cadangan' => $ss->id_persediaan_cadangan,
			'waktu_tunggu' => $this->input->post('waktu_tunggu'),
			'titik_pemesanan_kembali' => $rop,
			'waktu_tunggu' => $this->input->post('waktu_tunggu'),
			'permintaan_rata_rata' => $this->input->post('permintaan_rata_rata'),
			'persediaan_cadangan' => $ss->persediaan_cadangan,
			'update_date' => date('y-m-d'),
			'update_by' => $this->session->userdata('id')
		];
		$result =  $this->Master_rop_model->edit($data_rop);


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

		$this->Master_barang_model->delete($where);

		$where =  $this->input->post('id_barang');

		$this->Master_sefty_stock_model->delete($where);

		$where =  $this->input->post('id_persediaan_cadangan');

		$this->Master_rop_model->delete($where);
	}
}
