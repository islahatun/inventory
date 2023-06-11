<div class="pagetitle">
    <h1><?= $title ?></h1>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg">
            <div class="card">
                <div class="card-body mt-3">

                    <form action="">
                        <div class="mb-3 row">
                            <div class="col-sm-4">
                                <input required placeholder="Tanggal Mulai" type="date" class="form-control" id="date_from" name="date_from">
                            </div>
                            <div class="col-sm-4">
                                <input required placeholder=" Tanggal Selesai   " type="date" class="form-control" id="date_to" name="date_to">
                            </div>
                            <div class="col-sm-4">
                                <button class="btn btn-primary" type="submit">Print</button>
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
                                <th scope="col" class="text-center">Tanggal keluar</th>
                                <th scope="col" class="text-center">Jumlah Bahan keluar</th>
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
                }
            ]
        });

        initSelectRowDataTables('#dt', dt);
    });


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
            }
        });
    });

    function clearText() {

    }
</script>