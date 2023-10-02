<?php
if(isset($_POST["ten"])){
    $ten=$_POST["ten"];
    $xuat_ten="Chao ban ".$ten;
}
?>
<form action="vidu.php" method="post" >
<table width="271" border="1">
<tr>
<td colspan="2" bgcolor="#336699"><strong>In lời chào</strong></td>
</tr>
<tr>
<td width="150">Họ tên bạn</td>
<td width="164">
<input type="text" name="ten" id="chao3" value="<?= $ten ?>"/></td>
</tr>
<tr>
<td colspan="2">
<label><?php echo $xuat_ten; ?></label></td>
</tr>
<tr>
<td colspan="2" align="center" valign="middle"><input type="submit" name="chao"
id="chao" value="Xuất" /></td>
</tr>
</table>
</form>
</body>
</html>