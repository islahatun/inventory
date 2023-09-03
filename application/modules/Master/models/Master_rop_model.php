<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master_rop_model extends CI_Model
{

	public function __construct()
	{

		parent::__construct();
	}

	public function dataList()
	{
		$group_id = $this->session->userdata('group_id');
		$result = $this->db->get_where('rop_vd', ['id_group' => $group_id])->result();
		return $result;
	}
	public function get_persediaan_cadangan_barang()
	{
		$result =  $this->db->get('sefty_stock_vd')->result();
		return $result;
	}
	public function get_persediaan_cadangan_barang_byId($id_barang)
	{
		$result =  $this->db->get_where('sefty_stock_vd', ['id_barang' => $id_barang])->row();
		return $result;
	}
	public function save($data)
	{
		$this->db->insert('tbl_rop', $data);
		return true;
	}
	public function edit($data)
	{
		$this->db->where('id_persediaan_cadangan', $data['id_persediaan_cadangan']);
		$result =  $this->db->update('tbl_rop', $data);
		return $result;
	}
	public function delete($where)
	{
		$this->db->where('id_persediaan_cadangan', $where);
		$this->db->delete('tbl_rop');
	}
}
