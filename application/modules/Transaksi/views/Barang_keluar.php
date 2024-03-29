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
                                <th scope="col" class="text-center">Id Transaksi</th>
                                <th scope="col" class="text-center">Id Barang</th>
                                <th scope="col" class="text-center">Nama Barang</th>
                                <th scope="col" class="text-center">Tanggal keluar</th>
                                <th scope="col" class="text-center">Jumlah Barang keluar</th>
                                <th scope="col" class="text-center">Diinput Oleh</th>
								<th scope="col" class="text-center">Status</th>
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
                                    <input type="hidden" name="id_trans_keluar" id="">
                                    <input type="hidden" name="stok_keluar_current" id="">
                                    <div class="mb-3 row">
                                        <label for="id_barang" class="col-sm-4 col-form-label">Nama Barang</label>
                                        <div class="col-sm-8">
                                            <select required class="form-control" name="id_barang" id="id_barang">
                                                <option selected> ---------- Barang ---------- </option>
                                                <?php foreach ($barang as $b) : ?>
                                                    <option value="<?= $b->id_barang ?>"><?= $b->nama_barang ?></option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="tanggal_keluar" class="col-sm-4 col-form-label">Tanggal Keluar</label>
                                        <div class="col-sm-8">
                                            <input required type="date" class="form-control" id="tanggal_keluar" name="tanggal_keluar">
                                        </div>
                                    </div>

                                    <div class="mb-3 row">
                                        <label for="stok_keluar" class="col-sm-4 col-form-label">Jumlah Barang</label>
                                        <div class="col-sm-8">
                                            <input required type="number" class="form-control" id="stok_keluar" name="stok_keluar">
                                        </div>
                                    </div>

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
                    "data": "id_trans_keluar",
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
                    "data": "tanggal_keluar",
                    className: "align-middle small"
                },
                {
                    "data": "stok_keluar",
                    className: "align-middle text-center small"
                },
                {
                    "data": "username",
                    className: "align-middle text-center small"
                },
				{
                    "data": "status",
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
            let dv = data.id_trans_keluar
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
