<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo site_url('admin/Dashboard/')?>" class="nav-link">Home</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- <div class="user-panel">
        <div class="image">
          <img src="<?php echo base_url();?>assets/AdminLTE/dist/img/avatar5.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Admin</a>
        </div>
      </div> -->
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url('index.php/admin/Ganti_password'); ?>" class="nav-link">Ganti Password</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
      <a href="<?php echo base_url('index.php/auth/logout'); ?>" data-toggle="modal" data-target="#logoutModal" class="nav-link">
        Keluar Aplikasi
      </a>
      </li>
    </ul>
  </nav>