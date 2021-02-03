<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_produk extends CI_Model {

  private $_table = "produk";

  public function get_all(){
    return $this->db->get($this->_table);
  }

  public function get_by($where){
    return $this->db->get_where($this->_table,$where);
  }

  public function save(){
    $data = $this->input->post();
    $this->namaProduk = $data["nama_produk"];
    $this->ketProduk = $data["ket_produk"];
    $this->jumlahProduk = $data["jml_produk"];
    $this->hargaProduk = $data["harga_produk"];
    return $this->db->insert($this->_table, $this);
  }

  public function delete($id){
    return $this->db->delete($this->_table, array("idProduk" => $id));
  }

  public function update(){
    $post = $this->input->post();
    $this->namaProduk = $post["nama_produk"];
    $this->ketProduk = $post["ket_produk"];
    $this->jumlahProduk = $post["jml_produk"];
    $this->hargaProduk = $post["harga_produk"];
    $this->db->where('idProduk', $post['id']);
    return $this->db->update($this->_table,$this);
  }


}
