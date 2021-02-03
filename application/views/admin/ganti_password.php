<!DOCTYPE html>
<html>
<head>
  <?php $this->load->view("admin/_partials/head.php")?>
</head>
<?php
  $this->load->helper('rupiah_helper');
  $this->load->helper('tgl_indo_helper');
?>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
  <div class="wrapper">
    <!-- Navbar -->
    <?php $this->load->view("admin/_partials/navbar.php") ?>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <?php $this->load->view("admin/_partials/sidebar.php")?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Ganti Password</h1>
            </div>
            <div class="col-sm-6">
              <!-- breadcum -->
              <?php //$this->load->view("admin/_partials/breadcrumb.php") ?>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
      <?php if ($this->session->flashdata('success')): ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
        <?php elseif ($this->session->flashdata('fail')): ?>
				<div class="alert alert-warning" role="alert">
					<?php echo $this->session->flashdata('fail'); ?>
				</div>
				<?php endif; ?>


				<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('admin/Program_gtr') ?>"><i class="fas fa-arrow-left"></i> Back</a>
					</div>
					<div class="card-body">

						<form action="<?php echo site_url('admin/ganti_password/update') ?>" method="post" enctype="multipart/form-data" >
							
              <div class="form-group">
								<label for="password_lama">Password Lama *</label>
								<input class="form-control <?php echo form_error('password_lama') ? 'is-invalid':'' ?>"
								 type="password" name="password_lama" placeholder="Password Lama" value="<?php echo $password_lama;?>" required/>
								<div class="invalid-feedback">
									<?php echo form_error('password_lama') ?>
								</div>
              </div>

              <div class="form-group">
								<label for="password_baru">Password Baru *</label>
								<input id="password_baru" class="form-control <?php echo form_error('password_baru') ? 'is-invalid':'' ?>"
								 type="password" name="password_baru" placeholder="Password Baru" value="<?php echo $password_baru;?>" required/>
								<div class="invalid-feedback">
									<?php echo form_error('password_baru') ?>
								</div>
              </div>

                            
							<input class="btn btn-success" type="submit" name="btn" value="Save" />
						</form>

					</div>

					<div class="card-footer small text-muted">
						* required fields
					</div>


				</div>
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- footer -->
    <?php $this->load->view("admin/_partials/footer.php") ?>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

<!-- jQuery -->
<?php $this->load->view("admin/_partials/modal.php") ?>
<?php $this->load->view("admin/_partials/js.php") ?>
</body>
</html>
