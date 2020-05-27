<?php 
include('template/top.php');
include('template/navigasi.php');
 if(!isset($_SESSION)){
 	session_start();
 }
 if (empty($_SESSION['username'])) {
 	header('Location:index.html');
 }
?>
<div id="main">
	<div class="content">
		<h3>Data pembelian</h3>
		<button class="print" onclick="PrintDoc()"><img src="http://localhost/cibot/img/print.png">Print Data</button>
		<button class="print" onclick="PrintPreview()"><img src="http://localhost/cibot/img/preview.png">Print Preview</button>

		<table id="tabel"  border="1" cellpadding="3" >
			<tr>
				<th style="width: 20px;">No</th>
				<th style="width: 50px;">Nomor Konsumen</th>
				<th style="width: 100px;">Nomor Tiket</th>
				<th>Tanggal </th>
				<th>Hari </th>
				<th>Waktu</th>
				<th>NAMA SEMINAR</th>

			</tr>
			<?php include('koneksi/conn.php'); 
			$sql = "SELECT * FROM tbl_tiket ORDER BY no_tiket ASC"; 
			$hasil=mysqli_query($conn,$sql) or die(mysqli_error());
			$no=1;
			while ($data = mysqli_fetch_array ($hasil)){
				$id=$data['no_tiket'];
				?>
				<tr>

					<td><?php echo $no++?></td>
					<td><?php echo $data['no_konsumen'];?></td>
					<td><?php echo $data['no_tiket']; ?></td>
					<td><?php echo $data['tgl']; ?></td>
					<td><?php echo $data['hari']; ?></td>
					<td><?php echo $data['waktu_seminar']; ?></td>
					<td><?php echo $data['nama_seminar']; ?></td>

				</tr>
				<?php } ?>
			</table>
		</div>
	</div>
	<?php include('template/footer.php'); ?>
