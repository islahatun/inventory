<?php defined('BASEPATH') or exit('No direct script access allowed');

class Barang_keluar_approve_model extends CI_Model
{

	public function __construct()
	{

		parent::__construct();
	}

	public function dataList()
	{
		$result = $this->db->get_where('trans_barang_keluar_vd')->result();
		return $result;
	}
	public function get_max_id()
	{
		$result =  $this->db->get('trans_barang_keluar')->num_rows();
		return $result;
	}
	public function get_barang()
	{
		$result =  $this->db->get('tbl_barang')->result();
		return $result;
	}
	public function stok_barang($id_barang)
	{
		$result =  $this->db->get_where('tbl_barang', array('id_barang' => $id_barang))->row();
		return $result;
	}
	public function save($data)
	{
		$header =  $this->db->insert('trans_barang_keluar', $data);
		if ($header) {
			$barang = $this->db->get_where('tbl_barang', array('id_barang' => $data['id_barang']))->row();
			$stok = $barang->stok - $data['stok_keluar'];
			$this->db->where('id_barang', $data['id_barang']);
			$this->db->update('tbl_barang', ['stok' => $stok]);
		}
		return true;
	}
	public function edit($data)
	{
		$this->db->where('id_trans_keluar', $data['id_trans_keluar']);
		$result = $this->db->update('trans_barang_keluar', $data);

		return $result;
	}
	public function delete($where)
	{
		$this->db->where('id_trans_keluar', $where);
		$this->db->delete('trans_barang_keluar');
	}
}
