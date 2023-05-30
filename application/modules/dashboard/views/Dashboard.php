<div class="pagetitle">
    <h1>Dashboard</h1>
</div><!-- End Page Title -->
<?= $this->session->flashdata('message') ?>
<section class="section">
    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Jumlah Barang Masuk (<?= date('M') ?>)</h5>
                    <p class="text-center"><?= $barang_masuk->stok_masuk ?></p>
                </div>
            </div>

        </div>

        <div class="col-lg-4">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Jumlah Barang Keluar (<?= date('M') ?>)</h5>
                    <p class="text-center"><?= $barang_keluar->stok_keluar ?></p>
                </div>
            </div>

        </div>
    </div>
</section>