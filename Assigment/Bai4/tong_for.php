
<?php
if (isset($_GET["so_dau"])&& isset($_GET["so_cuoi"]))
{
$so_dau=$_GET["so_dau"];
$so_cuoi=$_GET["so_cuoi"];
$tong=0;
$tong_chan=0;
$tong_le=0;
$tich=1;
for ($i=$so_dau;$i<=$so_cuoi;$i++)
$tong=$tong+$i;
for ($i=$so_dau;$i<=$so_cuoi;$i++)
$tich=$tich*$i;
for ($i=$so_dau;$i<=$so_cuoi;$i++)
if ($i%2==0)
$tong_chan=$tong_chan+$i;
for ($i=$so_dau;$i<=$so_cuoi;$i++)
if ($i%2!=0)
$tong_le=$tong_le+$i;
}
?>
<form action="tong_for.php" method="get" >
<table width="728" border="1">
<tr>
<td width="122">&nbsp;</td>
<td width="76">Số bắt đầu</td>
<td width="169"><label for="textfield"></label>
<input type="text" name="so_dau" id="textfield" value="<?php if (isset($_GET["so_dau"]))
echo $_GET["so_dau"];?> "/></td>
<td width="152">Số kết thúc</td>
<td width="175"><label for="textfield2"></label>
<input type="text" name="so_cuoi" id="textfield2" value="<?php if
(isset($_GET["so_cuoi"])) echo $_GET["so_cuoi"];?> "/></td>
</tr>
<tr>
<td colspan="5">Kết quả
<label for="textfield3"></label></td>
</tr>
<tr>
<td>Tổng các số</td>
<td colspan="4"><label for="textfield4"></label>
<input type="text" name="tong" id="textfield4" value="<?php if (isset($tong)) echo $tong;?>
"/></td>
</tr>
<tr>
<td>Tích các số</td>
<td colspan="4"><label for="textfield5"></label>
<input type="text" name="tich" id="textfield5" value="<?php if (isset($tich)) echo $tich;?>
"/></td>
</tr>
<tr>
<td>Tổng các số chẵn</td>
<td colspan="4"><label for="textfield6"></label>
<input type="text" name="tong_chan" id="textfield6" value="<?php if (isset($tong_chan))
echo $tong_chan;?> "/></td>
</tr>
<tr>
<td>Tổng các số lẻ</td>
<td colspan="4"><label for="textfield7"></label>
<input type="text" name="tong_le" id="textfield7" value="<?php if (isset($tong_le)) echo
$tong_le;?> "/></td>
</tr>
<tr>
<td colspan="5"><input type="submit" name="button" id="button" value="Tính toán" /></td>
</tr>
</table>
</form>
</body>
</html>
