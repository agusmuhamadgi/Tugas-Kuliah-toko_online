<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

	public function index()
	{
		$data['tittle'] = 'TOKO ONLINE';
		$data['aktif'] = 'Dashboard';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();


		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar_admin', $data);
		$this->load->view('admin/index', $data);
		$this->load->view('templates/footer');
	}
	public function data_barang()
	{
		$data['tittle'] = 'TOKO ONLINE';
		$data['aktif'] = 'Data Barang';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['barang'] = $this->model_barang->tampil_data()->result();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar_admin', $data);
		$this->load->view('admin/data_barang', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		$data['barang'] = $this->Model_barang->tampil_data()->result();
		$nama_barang = $this->input->post('nama_barang');
		$keterangan = $this->input->post('keterangan');
		$kategori = $this->input->post('kategori');
		$harga = $this->input->post('harga');
		$stok = $this->input->post('stok');
		$gambar = $_FILES['gambar'];

		if ($gambar) {
			$config = array(
				'upload_path' => "uploads",
				'allowed_types' => "jpg|jpeg|png|gif",
				'max_size' => "5048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
				'max_height' => "3000",
				'max_width' => "3000"
			);
			$this->upload->initialize($config);
			$this->load->library('upload', $config);

			if ($this->upload->do_upload('gambar')) {
				$gambar_upload = $this->upload->data('file_name');

				$data = array(

					'nama_barang' => $nama_barang,
					'keterangan'  => $keterangan,
					'kategori'    => $kategori,
					'harga'       => $harga,
					'stok'        => $stok,
					'gambar'      => $gambar_upload
				);

				$this->db->insert('tb_barang', $data);
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Barang berhasil di tambahkan!</div>');
				redirect('admin/data_barang');
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"> Barang gagal di tambahkan!</div>');
				redirect('admin/data_barang');
			}
		}
	}

	public function edit($id)
	{
		$data['tittle'] = 'TOKO ONLINE';
		$data['aktif'] = '';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$where = array('id_barang' => $id);
		$data['barang'] = $this->model_barang->edit_barang($where, 'tb_barang')->result();
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar_admin', $data);
		$this->load->view('admin/edit_barang', $data);
		$this->load->view('templates/footer');
	}
	public function update()
	{
		$id = $this->input->post('id_barang');
		$nama_barang = $this->input->post('nama_barang');
		$keterangan = $this->input->post('keterangan');
		$kategori = $this->input->post('kategori');
		$harga = $this->input->post('harga');
		$stok = $this->input->post('stok');

		$data = array(

			'nama_barang' => $nama_barang,
			'keterangan' => $keterangan,
			'kategori' => $kategori,
			'harga' => $harga,
			'stok' => $stok
		);
		$where = array(
			'id_barang' => $id
		);
		$this->model_barang->update_data($where, $data, 'tb_barang');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data berhasil di ubah!</div>');
		redirect('admin/data_barang');
	}
	public function hapus($id)
	{
		$where = array('id_barang' => $id);
		$this->model_barang->hapus_data($where, 'tb_barang');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data berhasil di dihapus!</div>');
		redirect('admin/data_barang');
	}
	public function invoice()
	{

		$data['tittle'] = 'TOKO ONLINE';
		$data['aktif'] = 'Invoice';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['invoice'] = $this->model_invoice->tampil_data();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar_admin', $data);
		$this->load->view('admin/invoice', $data);
		$this->load->view('templates/footer');
	}
	public function detail($id_invoice)
	{
		$data['tittle'] = 'TOKO ONLINE';
		$data['aktif'] = 'Detail Invoice';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['invoice'] = $this->model_invoice->ambil_id_invoice($id_invoice);
		$data['pesanan'] = $this->model_invoice->ambil_id_pesanan($id_invoice);

		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar_admin', $data);
		$this->load->view('admin/detail_invoice', $data);
		$this->load->view('templates/footer');
	}
}
