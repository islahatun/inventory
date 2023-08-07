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

			LAPORAN BARANG
		</center>
	</h3>

	<table border="1" cellspacing="0px" cellpadding="10px">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Kode Bahan</th>
				<th scope="col">Nama Bahan</th>
				<th scope="col">Jenis Bahan</th>
				<th scope="col">Satuan Bahan</th>
			</tr>
		</thead>
		<tbody>
			<?php $i = 1;
			foreach ($barang as $b) : ?>
				<tr>
					<td><?= $i; ?></td>
					<td><?= $b->id_barang ?></td>
					<td><?= $b->nama_barang ?></td>
					<td><?= $b->nama_jenis_barang ?></td>
					<td><?= $b->nama_satuan ?></td>
				</tr>
			<?php $i++;
			endforeach; ?>
		</tbody>
	</table>
</body>

<script>
	window.print();
</script>

</html>