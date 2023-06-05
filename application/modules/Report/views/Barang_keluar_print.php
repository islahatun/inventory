<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>Dokumen PDF</title>
</head>

<body>
    <h3>
        <center>

            LAPORAN BARANG MASUK <?= $date_from ?> s/d <?= $date_to ?>
        </center>
    </h3>

    <table border="1" cellspacing="0px" cellpadding="10px">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Id Transaksi</th>
                <th scope="col">Id Barang</th>
                <th scope="col">Nama Barang</th>
                <th scope="col">Tanggal keluar</th>
                <th scope="col">Jumlah Barang keluar</th>
                <th scope="col">Diinput Oleh</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1;
            foreach ($barang as $b) : ?>
                <tr>
                    <td><?= $i; ?></td>
                    <td><?= $b->id_trans_keluar ?></td>
                    <td><?= $b->id_barang ?></td>
                    <td><?= $b->nama_barang ?></td>
                    <td><?= $b->tanggal_keluar ?></td>
                    <td><?= $b->stok_keluar ?> <?= $b->nama_satuan ?></td>
                    <td><?= $b->username ?></td>
                </tr>
            <?php $i++;
            endforeach; ?>
        </tbody>
    </table>
</body>

</html>