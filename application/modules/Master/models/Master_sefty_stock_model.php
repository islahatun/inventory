<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_sefty_stock_model extends CI_Model
{

	public function __construct()
	{

		parent::__construct();
	}

	public function dataList()
	{
		$group_id = $this->session->userdata('group_id');
		$result = $this->db->get_where('sefty_stock_vd', ['id_group' => $group_id])->result();

		return $result;
	}
	public function get_barang()
	{
		$result =  $this->db->get('tbl_barang')->result();
		return $result;
	}
	public function save($data)
	{
		$this->db->insert('tbl_sefty_stock', $data);
		return true;
	}
	public function edit($data)
	{
		$this->db->where('id_barang', $data['id_barang']);
		$result =  $this->db->update('tbl_sefty_stock', $data);
		return $result;
	}
	public function delete($where)
	{
		$this->db->where('id_barang', $where);
		$this->db->delete('tbl_sefty_stock');
	}
}
