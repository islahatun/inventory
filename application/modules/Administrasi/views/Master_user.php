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
                                <th scope="col" class="text-center">Username</th>
                                <th scope="col" class="text-center">Nama</th>
                                <th scope="col" class="text-center">Posisi</th>
                                <th scope="col" class="text-center">Aktif</th>
                                <th scope="col" class="text-center">Aksi</th>
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
                                    <input type="hidden" name="id" id="">
                                    <div class="mb-3 row">
                                        <label for="username" class="col-sm-4 col-form-label">Username</label>
                                        <div class="col-sm-8">
                                            <input required type="text" class="form-control" id="username" name="username">
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="name" class="col-sm-4 col-form-label">Nama</label>
                                        <div class="col-sm-8">
                                            <input required type="text" class="form-control" id="name" name="name">
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="group_id" class="col-sm-4 col-form-label">Posisi</label>
                                        <div class="col-sm-8">
                                            <select required class="form-control" name="group_id" id="group_id">
                                                <option selected>Posisi</option>
                                                <?php foreach ($group as $g) : ?>
                                                    <option value="<?= $g->id_group ?>"><?= $g->group_name ?></option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="active" class="col-sm-4 col-form-label">Aktif</label>
                                        <div class="col-sm-8">
                                            <select required class="form-control" name="active" id="active">
                                                <option value="Y">Ya</option>
                                                <option value="N">Tidak</option>
                                            </select>
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
                    "data": "username",
                    className: "align-middle small"
                },
                {
                    "data": "name",
                    className: "align-middle small"
                },
                {
                    "data": "group_name",
                    className: "align-middle small"
                },
                {
                    "data": "active",
                    className: "align-middle text-center small"
                }
            ],
            "columnDefs": [{
                "render": function(data, type, row, meta) {
                    let ret = '<button type="button" class="btn btn-warning btn-sm"  onclick="reset(this)" data-index="' + row.id + '">Reset</button>'
                    return ret;
                },
                "className": 'text-center',
                "targets": 5

            }, ]
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
            $(fm + ' [name=group_id]').val(data.group_id);
            $(fm + ' [name=active]').val(data.active);

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
            let dv = data.id
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

    function reset(obj) {
        let idx = $(obj).attr('data-index');
        if (idx) {
            let value = {
                id: idx
            }
            Swal.fire({
                title: 'Apakah anda yakin.? katasandi akan diubah menjadi 123456',
                text: "Password yang di reset tidak dapat dikembalikan!",
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Ya!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        type: "POST",
                        url: _url.concat('/reset_password'),
                        data: value,
                        cache: false,
                        success: function(data, textStatus, jqXHR) {
                            let table = $('#dt').DataTable();
                            table.ajax.reload();
                            toastr.success('Kata sandi berhasil diubah.');
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            toastr.error('Kata sandi gagal diubah.');
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