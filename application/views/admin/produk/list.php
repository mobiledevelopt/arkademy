<!DOCTYPE html>
<html>
  <head>
    <?php $this->load->view("admin/_partials/head.php")?>
  </head>
  <?php
    $this->load->helper('nama_barang_helper');
    $this->load->helper('tgl_indo_helper');
  ?>
  <body class="hold-transition sidebar-mini">
    <div class="wrapper">
      <?php $this->load->view("admin/_partials/navbar.php") ?>
      <?php $this->load->view("admin/_partials/sidebar.php") ?>

      <div class="content-wrapper">
        <section class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1>Data Produk</h1>
              </div>
            </div>
          </div>
        </section>
        <section class="content">
          <div class="card shadow mb-4">
            <div class="card-header">
              <div class="col">
                <a onclick="add()" href="#" class="p-2 badge badge-success">Tambah Produk </a>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <font size="2">
                <table class="table table-bordered table-sm" id="dataTable1" width="100%" cellspacing="0">
                    <thead  class="thead-dark">
                      <tr>
                        <th style=" text-align: center; vertical-align: middle;">No</th>
                        <th style=" text-align: center; vertical-align: middle;">Nama Produk</th>
                        <th style=" text-align: center; vertical-align: middle;">Keterangan Produk</th>
                        <th style=" text-align: center; vertical-align: middle;">Harga Produk</th>
                        <th style=" text-align: center; vertical-align: middle;">Jumlah Produk</th>
                        <th style=" text-align: center; vertical-align: middle;">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                        $x=1;$total=0;
                        foreach ($produk as $product): ?>
                        <tr>
                          <td style=" text-align: center; vertical-align: middle;"><?php echo $x ?></td>
                          <td style=" text-align: center; vertical-align: middle;"><?php echo $product->namaProduk ?></td>
                          <td style=" text-align: center; vertical-align: middle;"><?php echo $product->ketProduk ?></td>
                          <td style=" text-align: center; vertical-align: middle;"><?php echo $product->hargaProduk ?></td>
                          <td style=" text-align: center; vertical-align: middle;"><?php echo $product->jumlahProduk ?></td>
                          <td style=" text-align: center; vertical-align: middle;" align="center">
                            <a onclick="edit('<?php echo site_url('produk/ajax_edit/').$product->idProduk ?>')" href="#"  class="p-1 badge badge-success"><i class="fa fa-edit"></i></a>
                            <a onclick="deleteConfirm('<?php echo site_url('produk/delete/').$product->idProduk ?>')" href="#"  class="p-1 badge badge-danger"><i class="fa fa-trash"></i></a>
                          </td>
                        </tr>
                        <?php $x++;endforeach; ?>
                    </tbody>
                  </table>
              </div>
            </div>
          </div>
        </section>
      </div>
      <?php $this->load->view("admin/_partials/footer.php") ?>
    </div>

    <?php $this->load->view("admin/_partials/modal.php") ?>
    <?php $this->load->view("admin/_partials/js.php") ?>

    <!-- toast -->
    <?php if ($this->session->flashdata('success')): ?>
      <script>
      $(function () {
        const Toast = Swal.mixin({
          toast: true,
          position: "top-end",
          showConfirmButton: false,
          timer: 3000,
        });

        Toast.fire({
          icon: "success",
          title: " <?php echo $this->session->flashdata('success'); ?> ",
        });
      });
      </script>
    <?php elseif ($this->session->flashdata('fail')): ?>
        <script>
        $(function () {
          const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
          })
          Toast.fire({
            icon: 'error',
            title: ' <?php echo $this->session->flashdata('fail'); ?>'
          })
        });
        </script>
      <?php endif; ?>

    <script>
      function edit(ida)
      {

        $.ajax({
          url : ida,
          async : true,
          dataType : 'json',
          success: function(data)
          {
            console.log(ida);

            $('#modal_form').modal('show');
            $('.modal-title').text('Edit Data');
            $('[name="id"]').val(data.idProduk);
            $('[name="nama_produk"]').val(data.namaProduk);
            $('[name="ket_produk"]').val(data.ketProduk);
            $('[name="harga_produk"]').val(data.hargaProduk);
            $('[name="jml_produk"]').val(data.jumlahProduk);

          },
          error: function (jqXHR, textStatus, errorThrown)
          {
            alert('Error get data from ajax');
          }
        });
      }
      function add()
      {
        $('#modal_add').modal('show');
      }
    </script>

    <!-- modal edit-->
    <div class="modal fade" id="modal_form" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title">Form Edit Produk</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body form">
            <form action="<?php echo site_url('produk/update') ?>" method="post" enctype="multipart/form-data" >
              <input type="hidden" value="" id="id" name="id"/>
              <div class="form-body">
                <div class="form-group">
                  <label class="control-label col">Nama Produk *</label>
                  <div class="col">
                  <input name="nama_produk" placeholder="Nama Produk" class="form-control" type="text" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col">Keterangan Produk *</label>
                  <div class="col">
                  <input name="ket_produk" placeholder="Keterangan Produk" class="form-control" type="text" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col">Harga Produk *</label>
                  <div class="col">
                  <input name="harga_produk" placeholder="Harga Produk" class="form-control" type="number" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col">Jumlah Produk *</label>
                  <div class="col">
                  <input name="jml_produk" placeholder="Jumlah Produk" class="form-control" type="number" required>
                  </div>
                </div>
              <div class="modal-footer">
                <input class="btn btn-success swalDefaultSuccess" type="submit" name="simpan" value="Simpan" />
                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
              </div>
            </form>
          </div>

        </div>
      </div>
      </div>
    </div>
    <!-- modal add-->
    <div class="modal fade" id="modal_add" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title">Form Add Produk</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body form">
            <form action="<?php echo site_url('produk/add') ?>" method="post" enctype="multipart/form-data" >
              <div class="form-body">
                <div class="form-group">
                  <label class="control-label col">Nama Produk *</label>
                  <div class="col">
                  <input name="nama_produk" placeholder="Nama Produk" class="form-control" type="text" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col">Keterangan Produk *</label>
                  <div class="col">
                  <input name="ket_produk" placeholder="Keterangan Produk" class="form-control" type="text" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col">Harga Produk *</label>
                  <div class="col">
                  <input name="harga_produk" placeholder="Harga Produk" class="form-control" type="number" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col">Jumlah Produk *</label>
                  <div class="col">
                  <input name="jml_produk" placeholder="Jumlah Produk" class="form-control" type="number" required>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <input class="btn btn-success swalDefaultSuccess" type="submit" name="simpan" value="Simpan" />
                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </body>
</html>
