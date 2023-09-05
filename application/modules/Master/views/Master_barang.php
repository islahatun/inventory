<div class="pagetitle">
	<h1><?= $title ?></h1>
</div><!-- End Page Title -->

<section class="section">
	<div class="row">
		<div class="col-lg">
			<div class="card">
				<div class="card-body mt-3">

					<!-- Button trigger modal -->
					<button type="button" class="btn btn-success btn-sm mb-3" onclick="create(this)">
						Tambah
					</button>
					<button type="button" class="btn btn-primary btn-sm mb-3" onclick="Edit(this)">
						Ubah
					</button>
					<button type="button" class="btn btn-danger btn-sm mb-3" onclick="Delete(this)">
						Hapus
					</button>

					<!-- Default Table -->
					<table class="table table-responsive-sm" id="dt">
						<thead>
							<tr>
								<th scope="col" class="text-center">#</th>
								<th scope="col" class="text-center">Kode Bahan</th>
								<th scope="col" class="text-center">Nama Bahan</th>
								<th scope="col" class="text-center">Jenis Bahan</th>
								<th scope="col" class="text-center">Satuan Bahan</th>
								<th scope="col" class="text-center">Harga</th>
								<th scope="col" class="text-center">Sefety Stock</th>
								<!-- <th scope="col" class="text-center">ROP</th> -->
								<th scope="col" class="text-center">Minimal Barang</th>
								<th scope="col" class="text-center">Maximal barang</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					<!-- End Default Table Example -->
				</div>

				<!-- Modal -->
				<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="ModalLabel"></h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<form id="fm" action="" enctype="multipart/form-data" method="post">
								<div class="modal-body">
									<input type="hidden" name="id_barang" id="">
									<div class="mb-3 row">
										<label for="nama_barang" class="col-sm-4 col-form-label">Nama Bahan</label>
										<div class="col-sm-8">
											<input required type="text" class="form-control" id="nama_barang" name="nama_barang">
										</div>
									</div>
									<div class="mb-3 row">
										<label for="id_jenis_barang" class="col-sm-4 col-form-label">Jenis Bahan</label>
										<div class="col-sm-8">
											<select required class="form-control" name="id_jenis_barang" id="id_jenis_barang">
												<option selected> ---------- Jenis Bahan ---------- </option>
												<?php foreach ($jenis_barang as $jb) : ?>
													<option value="<?= $jb->id_jenis_barang ?>"><?= $jb->nama_jenis_barang ?></option>
												<?php endforeach ?>
											</select>
										</div>
									</div>
									<div class="mb-3 row">
										<label for="id_satuan" class="col-sm-4 col-form-label">Satuan</label>
										<div class="col-sm-8">
											<select required class="form-control" name="id_satuan" id="id_satuan">
												<option selected> ---------- Satuan ---------- </option>
												<?php foreach ($satuan as $s) : ?>
													<option value="<?= $s->id_satuan ?>"><?= $s->nama_satuan ?></option>
												<?php endforeach ?>
											</select>
										</div>
									</div>
									<div class="mb-3 row">
										<label for="harga" class="col-sm-4 col-form-label">Harga</label>
										<div class="col-sm-8">
											<input required type="text" class="form-control" id="harga" name="harga">
										</div>
									</div>
									<div class="mb-3 row">
										<label for="jumlah_hari" class="col-sm-4 col-form-label">Jumlah Hari Persediaan</label>
										<div class="col-sm-8">
											<input required type="text" class="form-control" id="jumlah_hari" name="jumlah_hari">
										</div>
									</div>
									<div class="mb-3 row">
										<label for="pengambilan_harian_maximum" class="col-sm-4 col-form-label">Pengambilan harian maximum</label>
										<div class="col-sm-8">
											<input required type="text" class="form-control" id="pengambilan_harian_maximum" name="pengambilan_harian_maximum">
										</div>
									</div>
									<!-- <div class="mb-3 row">
										<label for="waktu_tunggu" class="col-sm-4 col-form-label">Waktu Tunggu</label>
										<div class="col-sm-8">
											<input required type="text" class="form-control" id="waktu_tunggu" name="waktu_tunggu">
										</div>
									</div>
									<div class="mb-3 row">
										<label for="permintaan_rata_rata" class="col-sm-4 col-form-label">Permintaan rata-rata</label>
										<div class="col-sm-8">
											<input required type="text" class="form-control" id="permintaan_rata_rata" name="permintaan_rata_rata">
										</div>
									</div> -->

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
									<button type="submit" class="btn btn-primary">Simpan</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</section>

<script>
	let dt;
	let formUrl;
	let fm = '#fm';

	$(document).ready(function() {

		dt = $('#dt').DataTable({
			"destroy": true,
			"processing": true,
			"select": true,

			ajax: {
				type: "POST",
				url: _url.concat('/datalist'),
				dataSrc: ""
			},
			"columns": [{
					"data": "nomor",
					className: "align-middle text-center small"
				},
				{
					"data": "id_barang",
					className: "align-middle small"
				},
				{
					"data": "nama_barang",
					className: "align-middle small"
				},
				{
					"data": "nama_jenis_barang",
					className: "align-middle small"
				},
				{
					"data": "nama_satuan",
					className: "align-middle text-center small"
				},
				{
					"data": "harga",
					className: "align-middle text-center small"
				},
				{
					"data": "persediaan_cadangan",
					className: "align-middle text-center small"
				},
				// {
				// 	"data": "titik_pemesanan_kembali",
				// 	className: "align-middle text-center small"
				// },
				{
					"data": "min",
					className: "align-middle text-center small"
				},
				{
					"data": "max",
					className: "align-middle text-center small"
				}
				
			]
		});

		initSelectRowDataTables('#dt', dt);
	});


	function create() {
		// reset form
		$(fm).each(function() {
			this.reset();
		});
		$('#Modal').modal('toggle');
		$("#ModalLabel").html("Tambah")
		formUrl = _url.concat('/save');
	}

	function Edit(obj) {

		let idx = getSelectedRowDataTables(dt);

		if (idx) {
			let data = dt.row(idx.row).data();
			// reset form
			$(fm).each(function() {
				this.reset();
			});

			// mengambil data 
			$(fm).deserialize(data)
			$(fm + ' [name=id_jenis_barang]').val(data.id_jenis_barang);
			$(fm + ' [name=id_satuan]').val(data.id_satuan);

			// setting title modal
			$("#ModalLabel").html("Ubah")
			// open modal
			$('#Modal').modal('toggle');
			formUrl = _url.concat('/edit');

		}
	}

	function Delete() {
		let idx = getSelectedRowDataTables(dt);
		if (idx) {
			let data = dt.row(idx.row).data();
			let dv = data.id_barang
			let value = {
				id: dv
			}
			Swal.fire({
				title: 'Apakah anda yakin.?',
				text: "Data yang dihapus tidak dapat dikembalikan!",
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Ya!'
			}).then((result) => {
				if (result.isConfirmed) {
					$.ajax({
						type: "POST",
						url: _url.concat('/delete'),
						data: value,
						cache: false,
						success: function(data, textStatus, jqXHR) {
							let table = $('#dt').DataTable();
							table.ajax.reload();
							toastr.success('Data sandi berhasil dihapus.');
						},
						error: function(jqXHR, textStatus, errorThrown) {
							toastr.error('Data sandi gagal dihapus.');
						}
					});
				}
			})

		}
	}

	$("form").submit(function(e) {
		e.preventDefault();
		$.ajax({
			url: formUrl,
			type: 'post',
			data: $(this).serialize(),
			success: function(data, textStatus, jqXHR) {

				let view = jQuery.parseJSON(data);
				// console.log(view);
				if (view.status == true) {
					toastr.success(view.message);
					let table = $('#dt').DataTable();
					table.ajax.reload();
					$('#Modal').modal('hide');
					clearText();
				} else {
					toastr.error(view.message);
				}
			},
			error: function(jqXHR, textStatus, errorThrown) {
				toastr.error('Data Gagal disimpan.');
			}
		});
	});

	function clearText() {

	}
</script>
