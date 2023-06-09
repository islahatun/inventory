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
                                <th scope="col" class="text-center">Nama Bahan</th>
                                <th scope="col" class="text-center">Waktu Tunggu (Hari)</th>
                                <th scope="col" class="text-center">Permintaan Rata-rata</th>
                                <th scope="col" class="text-center">Persediaan Cadangan</th>
                                <th scope="col" class="text-center">ROP (Hari)</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <!-- End Default Table Example -->
                </div>

                <!-- Modal -->
                <div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="ModalLabel"></h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form id="fm" action="" enctype="multipart/form-data" method="post">
                                <div class="modal-body">
                                    <input type="hidden" name="id_rop" id="">
                                    <div class="mb-3 row">
                                        <label for="id_persediaan_cadangan" class="col-sm-6 col-form-label">Nama bahan dan persediaan bahan</label>
                                        <div class="col-sm-6">
                                            <select required class="form-control" name="id_persediaan_cadangan" id="id_persediaan_cadangan">
                                                <option selected> ---------- Nama bahan dan persediaan bahan---------- </option>
                                                <?php foreach ($barang as $jb) : ?>
                                                    <option value="<?= $jb->id_persediaan_cadangan ?>"><?= $jb->nama_barang  ?> - <?= $jb->persediaan_cadangan  ?> <?= $jb->nama_satuan  ?></option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="waktu_tunggu" class="col-sm-6 col-form-label">Waktu Tunggu (Hari)</label>
                                        <div class="col-sm-6">
                                            <input required type="text" class="form-control" id="waktu_tunggu" name="waktu_tunggu">
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="permintaan_rata_rata" class="col-sm-6 col-form-label">Permintaan Rata - Rata</label>
                                        <div class="col-sm-6">
                                            <input required type="text" class="form-control" id="permintaan_rata_rata" name="permintaan_rata_rata">
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
                    "data": "nama_barang",
                    className: "align-middle small"
                },
                {
                    "data": "waktu_tunggu",
                    className: "align-middle small"
                },
                {
                    "data": "permintaan_rata_rata",
                    className: "align-middle  small"
                },
                {
                    "data": "persediaan_cadangan",
                    className: "align-middle  small"
                },
                {
                    "data": "titik_pemesanan_kembali",
                    className: "align-middle  small"
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
            $(fm + ' [name=id_persediaan_cadangan]').val(data.id_pemesanan_cadangan);


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
            let dv = data.id_rop
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