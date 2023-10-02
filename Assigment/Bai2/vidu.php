<?php
if(isset($_GET["a"]) && (isset($_GET["b"]))){
    $a = $_GET["a"];
    $b = $_GET["b"];
    if($a==0){
        if($b==0)
            $nghiem="phuong trinh co vo so nghiem";
        if($b<>0)
            $nghiem="phuong trinh vo nghiem";
        
        } else{
             $x=-($b/$a);
             $x= round($x,2);
             $nghiem="x= ".$x;
        }
        }

    

?>
<form action="vidu.php" method="post" >
<table width="744" border="1">
<tr>
<td colspan="3" bgcolor="#336699"><strong>Giải phương trình bậc 1 </strong></td>
</tr>
<tr>
<td width="120">Phương trình </td>
<td width="250">
<input name="a" type="text" required="true" value="<?= $a ?>"/>
X + </td>
<td width="312"><label for="textfield"></label>
<input name="b" type="text" id="textfield" value="<?= $b ?>"/>
= 0</td>
</tr>
<tr>
<td colspan="3">
Nghiệm
<label for="textfield2"></label>
<input name="kq" type="text" id="textfield2" value="<?php if(isset($nghiem)) echo $nghiem;
?>" /></tr>
<tr>
<td colspan="3" align="center" valign="middle"><input type="submit" name="chao"
id="chao" value="Xuất" /></td>
</tr>
</table>
</form>
</body>
</html>