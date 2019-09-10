<?php include ('koneksi.php');

$hasil=mysqli_query($koneksi, "select * from tabel_soal WHERE publish='yes' ORDER BY RAND ()");
$jumlah=mysqli_num_rows($hasil);
$urut=0;
while($row =mysqli_fetch_array($hasil))
    {
        $id_soal=$row["id_soal"];
        $pertanyaan=$row["pertanyaan"];
        $pilihan_a=$row["pilihan_a"];
        $pilihan_b=$row["pilihan_b"];
        $pilihan_c=$row["pilihan_c"];
        $pilihan_d=$row["pilihan_d"];

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Soal Ujian</title>
</head>
<body>
 <form name="form1" method="post" action="jawab.php">
 	<table>
        <input type="hidden" name="id[]" value=<?php echo $id_soal; ?>>
        <input type="hidden" name="jumlah" value=<?php echo $jumlah; ?>>
        <tr>
         	<td width="17"><font color="#000000"><?php echo $urut=$urut+1; ?></font></td>
            <td width="430"><font color="#000000"><?php echo "$pertanyaan"; ?></font></td>
        </tr>
       <tr>
            <td height="21"><font color="#000000">&nbsp;</font></td>
            <td><font color="#000000">
            A.  <input name="pilihan[<?php echo $id_soal; ?>]" type="radio" value="A"> 
            <?php echo "$pilihan_a";?></font> </td>
        </tr>
        <tr>
        	<td><font color="#000000">&nbsp;</font></td>
            <td><font color="#000000">
            B. <input name="pilihan[<?php echo $id_soal; ?>]" type="radio" value="B"> 
            <?php echo "$pilihan_b";?></font> </td>
        </tr>
        <tr>
            <td><font color="#000000">&nbsp;</font></td>
            <td><font color="#000000">
            C.  <input name="pilihan[<?php echo $id_soal; ?>]" type="radio" value="C"> 
            <?php echo "$pilihan_c";?></font> </td>
        </tr>
        <tr>
            <td><font color="#000000">&nbsp;</font></td>
            <td><font color="#000000">
            D.   <input name="pilihan[<?php echo $id_soal; ?>]" type="radio" value="D"> 
            <?php echo "$pilihan_d";?></font> </td>
        </tr>

<?php
}
?>

		<tr>
            <td>&nbsp;</td>
                <td>
                	<input type="submit" name="submit" value="Selesai menjawab?" onclick="return confirm('Apakah Anda yakin dengan jawaban Anda?')">
                </td>
        </tr>
     </table>
	</form>
 </body>
</html>