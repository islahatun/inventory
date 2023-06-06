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
                                <button class="btn btn-primary" type="submit">Print</button>
                            </div>
                        </div>
                    </form>

                    <!-- Default Table -->
                    <table class="table table-responsive-sm" id="dt">
                        <thead>
                            <tr>
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Kode Barang</th>
                                <th scope="col" class="text-center">Nama Barang</th>
                                <th scope="col" class="text-center">Jenis Barang</th>
                                <th scope="col" class="text-center">Satuan Barang</th>
                                <th scope="col" class="text-center">Stok Barang</th>
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
                    "data": "stok",
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
            },

        });
    });

    function clearText() {

    }
</script>