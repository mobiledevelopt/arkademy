<?php

class Produk extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
    $this->load->model('M_produk');
	}

	public function index(){
		if($this->session->userdata('authenticated')){
      $data['produk'] = $this->M_produk->get_all()->result();
      $this->load->view("admin/produk/list",$data);
    }
    else{
      redirect('auth');
    }
	}

  public function add(){
  	$save = $this->M_produk->save();
		if($save){
			$this->session->set_flashdata('success', 'Data Berhasil Disimpan');
			redirect('produk');
		}else{
			$this->session->set_flashdata('fail', 'Data Gagal Disimpan');
		}
  }

  public function ajax_edit($id_barang){
    $where = array("idProduk" => $id_barang);
    $produk = $this->M_produk->get_by($where)->row();
    echo json_encode($produk);
  }

  public function update(){
		$update = $this->M_produk->update();
		if($update){
      $this->session->set_flashdata('success', 'Data Berhasil di Update');
			redirect('produk');
		}else {
      $this->session->set_flashdata('fail', 'Data Gagal di Update');
    }
	}

	public function delete($id_barang){
		$delete = $this->M_produk->delete($id_barang);
		if($delete){
      $this->session->set_flashdata('success', 'Data Berhasil di Hapus');
			redirect('produk');
		}else {
      $this->session->set_flashdata('fail', 'Data Gagal di Hapus');
    }
	}


}
