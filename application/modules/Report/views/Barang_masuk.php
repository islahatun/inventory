<div class="pagetitle">
    <h1><?= $title ?></h1>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg">
            <div class="card">
                <div class="card-body mt-3">

                    <form action="" method="post">
                        <div class="mb-3 row">
                            <div class="col-sm-4">
                                <input required placeholder="Tanggal Mulai" type="date" class="form-control" id="date_from" name="date_from">
                            </div>
                            <div class="col-sm-4">
                                <input required placeholder=" Tanggal Selesai   " type="date" class="form-control" id="date_to" name="date_to">
                            </div>
                            <div class="col-sm-4">
                                <button class="btn btn-primary" type="button" onclick="laporan()">Print</button>
                            </div>
                        </div>
                    </form>

                    <!-- Default Table -->
                    <table class="table table-responsive-sm" id="dt">
                        <thead>
                            <tr>
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Id Transaksi</th>
                                <th scope="col" class="text-center">Id Bahan</th>
                                <th scope="col" class="text-center">Nama Bahan</th>
                                <th scope="col" class="text-center">Tanggal Masuk</th>
                                <th scope="col" class="text-center">Jumlah Bahan masuk</th>
                                <th scope="col" class="text-center">Diinput Oleh</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <!-- End Default Table Example -->
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
                    "data": "id_trans_masuk",
                    className: "align-middle small"
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
                    "data": "tanggal_masuk",
                    className: "align-middle small"
                },
                {
                    "data": "stok_masuk",
                    className: "align-middle text-center small"
                },
                {
                    "data": "username",
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
            $(fm + ' [name=id_barang]').val(data.id_barang);

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
            let dv = data.id_trans_masuk
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
            url: _url.concat('/exportPDF'),
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

        });
    });


	function laporan() {
		//debugger
		var awal = $("#date_from").val();
		var akhir = $("#date_to").val();
		PatchURL = _url.concat('/exportPDF/', awal, '/', akhir);
		window.open(PatchURL);
	}
</script>
