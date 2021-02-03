<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('admin/M_users_admin');
  }

  public function index(){
    if($this->session->userdata('authenticated')){
        redirect('admin/Barang'); 
    } // Jika user sudah login (Session authenticated ditemukan)
      
    // function render_login tersebut dari file core/MY_Controller.php
     $this->load->view("admin/login");
  }

  public function login(){
    $username = $this->input->post('username'); // Ambil isi dari inputan username pada form login
    // $password = md5($this->input->post('password')); // Ambil isi dari inputan password pada form login dan encrypt dengan md5

    // $user = $this->M_users_admin->get($username); // Panggil fungsi get yang ada di UserModel.php

    // if(empty($user)){ // Jika hasilnya kosong / user tidak ditemukan
    //   $this->session->set_flashdata('message', 'Username tidak ditemukan'); // Buat session flashdata
    //   redirect('Auth'); // Redirect ke halaman login
    // }else{
      if($username == "1" || $username == "2" || $username == "3" || $username == "4" || $username == "5" || $username == "6" || $username == "7" || $username == "8" || $username == "9" || $username == "10"){ // Jika password yang diinput sama dengan password yang didatabase
        $session = array(
          'authenticated'=>true, // Buat session authenticated dengan value true
          'id_admin'=>$username,  // Buat session username
          'username'=>$username,  // Buat session username
          'nama'=>"users input" // Buat session nama
        );

        $this->session->set_userdata($session); // Buat session sesuai $session
        redirect('admin/Barang'); 

      }else{
        $this->session->set_flashdata('fail', 'ID salah'); // Buat session flashdata
        redirect('auth'); // Redirect ke halaman login
      }

  }

  public function logout(){
    $this->session->sess_destroy(); // Hapus semua session
    redirect('auth'); // Redirect ke halaman login
  }

}