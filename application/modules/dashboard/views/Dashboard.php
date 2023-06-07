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
</section>