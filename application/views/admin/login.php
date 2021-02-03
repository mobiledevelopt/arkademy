<!DOCTYPE html>
<html lang="en">

<head>
<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body class="hold-transition login-page">

  <div class="login-box">
  <!-- /.login-logo -->
    <?php if ($this->session->flashdata('success')): ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
        <?php elseif ($this->session->flashdata('fail')): ?>
			<div class="alert alert-danger" role="alert">
				<?php echo $this->session->flashdata('fail'); ?>
			</div>
    <?php endif; ?>
  <div class="card">
    <div class="card-body login-card-body">
      <p style="text-align:center; font-size: 200%;  font-family: verdana;" class="login-box-msg">Selamat Datang</p>
      <p class="login-box-msg">Silahkan Login Untuk Melanjutkan</p>

      <form action="<?php echo base_url('index.php/auth/login'); ?>" method="post">
        <div class="input-group mb-3">
          <input class="form-control <?php echo form_error('username') ? 'is-invalid':'' ?>" type="text" name="username" placeholder="ID" required>
          <div class="invalid-feedback">
            <?php echo form_error('username') ?>
          </div>
          <div class="input-group-append">
            <div class="input-group-text">

            </div>
          </div>
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col">
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

    </div>
    <!-- /.login-card-body -->
  </div>
</div>
</body>

<script type="text/javascript">

var check=0;
var check_max=2;

window.setTimeout(function() {
  $(".alert").fadeTo(300, 0).slideUp(300, function(){
    $(this).remove(); 
  });
}, 3000);
</script>

<?php $this->load->view("admin/_partials/js.php") ?>

</html>