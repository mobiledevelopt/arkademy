<!-- jQuery -->
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/jquery/jquery.min.js"></script>
<!-- <script src="<?php echo base_url();?>assets/AdminLTE/plugins/sweetalert2/sweetalert2.min.js"></script> -->
<script src="<?php echo base_url();?>node_modules/sweetalert2/dist/sweetalert2.min.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/select2/js/select2.full.min.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/dist/js/adminlte.min.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/datatables/jquery.dataTables.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<?php echo base_url();?>assets/custom.js"></script>
<script src="<?php echo base_url();?>assets/main.js"></script>
<script src="<?php echo base_url();?>assets/bootstrap/bootstrap_datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/plugins/chart.js/Chart.min.js"></script>
<script src="<?php echo base_url();?>assets/AdminLTE/dist/js/pages/dashboard3.js"></script>



<script>
  $(function () {
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox({
        alwaysShowClose: true
      });
    });

    $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
      $('.btn[data-filter]').removeClass('active');
      $(this).addClass('active');
    });
  })
</script>


<script>
  $(function () {
    $("#example1").DataTable();
    $('#dataTable1').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
	  "lengthMenu": [[10, -1], [10,50, "All"]],
      "info": true,
      "autoWidth": true,
    });
  });

	$(function () {
		$("#example2").DataTable();
		$('#dataTable2').DataTable({
		"paging": true,
		"lengthChange": true,
		"searching": true,
		"ordering": true,
		"lengthMenu": [[10, -1], [10,50, "All"]],
		"info": true,
		"autoWidth": true,
		});
	});

	$(function () {
		$("#example2").DataTable();
		$('#dataTable_pr').DataTable();
	});

</script>

<script type="text/javascript">

	$(document).ready(function () {
		$('#tanggal').datepicker({
			//merubah format tanggal datepicker ke dd-mm-yyyy
			format: "dd-mm-yyyy",
			//aktifkan kode dibawah untuk melihat perbedaanya, disable baris perintah diatasa
			//format: "dd-mm-yyyy",
			autoclose: true
		});
		$('#tanggal3').datepicker({
			//merubah format tanggal datepicker ke dd-mm-yyyy
			minViewMode: "months",
			maxViewMode: 'months',
			//aktifkan kode dibawah untuk melihat perbedaanya, disable baris perintah diatasa
			//format: "dd-mm-yyyy",
			format: 'MM',
			viewMode: 'months',
			autoclose: true
		});

	});
	// $(document).ready(function () {
	// 	$('#dataTable1').DataTable({
	// 		"lengthMenu": [[50, -1], [50, "All"]]
	// 	});
	// 	$('.dataTables_length').addClass('bs-select');
	// });
</script>

<script type="text/javascript">
	$(document).ready(function () {
		$('#tanggal_akhir').datepicker({
			//merubah format tanggal datepicker ke dd-mm-yyyy
			format: "dd-mm-yyyy",
			//aktifkan kode dibawah untuk melihat perbedaanya, disable baris perintah diatasa
			//format: "dd-mm-yyyy",
			autoclose: true
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function () {
		$('#tanggal_akhir1').datepicker({
			//merubah format tanggal datepicker ke dd-mm-yyyy
			format: "dd-mm-yyyy",
			//aktifkan kode dibawah untuk melihat perbedaanya, disable baris perintah diatasa
			//format: "dd-mm-yyyy",
			autoclose: true
		});
	});
</script>
<script>
	$(document).ready(function () {
		$(".nama_barang").select2();
    $(".preloader").fadeOut();
	});
</script>
<script>
	$(document).ready(function () {
		$(".nama_toko").select2();
	});
</script>
<script >
	jQuery("#app_id option").filter(function(){
		return $.trim($(this).text()) == $optionToSet
	}).prop('selected', true);

  </script>

<script>
function deleteConfirm(url){
	$('#btn-delete').attr('href', url);
	$('#deleteModal').modal();
}
</script>

<script>
function backConfirm(url){
	// $('#btn-delete').attr('href', url);
	$('#btn-delete').href=url;
	$('#backModal').modal();
}
</script>

<script>
function edit_brg_master_Modal(url){
	$('#btn-delete').attr('href', url);
	$('#edit_brg_master_Modal').modal();
}
</script>

<script>
	$(document).ready(function(){
		$('.datepicker').datepicker();
	});
</script>

<script>
	$(function () {
		$('#datepicker').datepicker({
		autoclose: true
		});
	});
</script>

<script>
    $(function() {
      $('#only-number').on('keydown', '#number', function(e){
          -1!==$
          .inArray(e.keyCode,[46,8,9,27,13,110,190]) || /65|67|86|88/
          .test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey)
          || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey|| 48 > e.keyCode || 57 < e.keyCode)
          && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault()
      });
    })
</script>

<script>
    $(function() {
      $('#only-number2').on('keydown', '#number2', function(e){
          -1!==$
          .inArray(e.keyCode,[46,8,9,27,13,110,190]) || /65|67|86|88/
          .test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey)
          || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey|| 48 > e.keyCode || 57 < e.keyCode)
          && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault()
      });
    })
</script>

<script>
    $(function() {
      $('#only-number3').on('keydown', '#number3', function(e){
          -1!==$
          .inArray(e.keyCode,[46,8,9,27,13,110,190]) || /65|67|86|88/
          .test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey)
          || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey|| 48 > e.keyCode || 57 < e.keyCode)
          && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault()
      });
    })
</script>

<script type="text/javascript">
	function formatRupiah(angka, prefix){
		var number_string = angka.replace(/[^,\d]/g, '').toString(),
		split   		= number_string.split(','),
		sisa     		= split[0].length % 3,
		rupiah     		= split[0].substr(0, sisa),
		ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);

		if(ribuan){
			separator = sisa ? '.' : '';
			rupiah += separator + ribuan.join('.');
		}

		rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
		return rupiah;
	}

	function formatNotRupiah(angka, prefix){
		var number_string = angka.replace(/[^,\d]/g, '').toString(),
		split   		= number_string.split(','),
		sisa     		= split[0].length % 3,
		rupiah     		= split[0].substr(0, sisa),
		ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);

		if(ribuan){
			separator = sisa ? '' : '';
			rupiah += separator + ribuan.join('');
		}

		rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
		return rupiah;
	}

	var total;
	var	harga = document.getElementById('biaya');
	var	sisa = document.getElementById('sisa');
	var	jumlah = document.getElementById('number1');
	var	jumlah_hid = document.getElementById('jml_bayar_hid');
	var kembalian = document.getElementById('kembalian');

	jumlah.addEventListener('keyup', function(e){

		jumlah.value = formatRupiah(this.value,'Rp. ');

		jumlah_hid.value = formatNotRupiah(this.value);
	});

</script>
