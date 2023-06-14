<div class="pagetitle">
    <h1>Dashboard</h1>
</div><!-- End Page Title -->
<!-- <?= $this->session->flashdata('message') ?> -->
<section class="section">
    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Jumlah Barang Masuk (<?= date('M') ?>)</h5>
                    <p class="text-center">
                        <?php if ($barang_masuk == null) { ?>
                            0</p>
                <?php } else { ?>
                    <?= $barang_masuk->stok_masuk ?></p>
                <?php } ?>
                </div>
            </div>

        </div>

        <div class="col-lg-4">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Jumlah Barang Keluar (<?= date('M') ?>)</h5>
                    <p class="text-center"><?php if ($barang_keluar == null) { ?>
                            0</p>
                <?php } else { ?>
                    <?= $barang_keluar->stok_keluar ?></p>
                <?php } ?></p>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-lg">
            <div class="card">
                <div class="card-body mt-3">
                    <h4 class="mt-3"> Bahan kurang dari Persediaan Cadangan</h4>
                    <hr>
                    <!-- Default Table -->
                    <table class="table table-responsive-sm" id="dt">
                        <thead>
                            <tr>
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Kode Bahan</th>
                                <th scope="col" class="text-center">Nama Bahan</th>
                                <th scope="col" class="text-center">Jenis Bahan</th>
                                <th scope="col" class="text-center">Stok Persediaan Cadangan</th>
                                <th scope="col" class="text-center">Stok Bahan</th>
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
                    "data": "persediaan_cadangan",
                    className: "align-middle small"
                },
                {
                    "data": "stok",
                    className: "align-middle text-center small"
                },
            ]
        });

        initSelectRowDataTables('#dt', dt);
    });
</script>