<!DOCTYPE html>
<html>
<head>
<title>����������� ������ �4 ����� �.�.</title>
<style type="text/css">
.green-box {
font-style: italic;
font-weight: bold;
background-color: rgb(194,214,155);
border: 1px solid black;
}
.purpletable {
border: 1px solid #CC66CC;
border-spacing: 0px;
width: 453px;
}
table {
border: 1px solid black;
border-spacing: 0px;
width: 100%;
}
#films_td{
text-align: center

}
.blue-box {
font-style: italic;
font-weight: bold;
background-color: rgb(146,205,220);
border: 1px solid black;
}
.violet-box {
font-weight: bold;
background-color: rgb(178,161,199);
border: 1px solid black;
}
.red-box {
background-color: rgb(248,164,94);
border: 1px solid black;
padding: 5px; 
}
</style>
</head>
<body>
<?php

//Task 1
define("Const1",1);
define("Const2",2);
define("Const3",3);
define("Const4",4);
define("Const5",5);
    
//Task 2
$int1=1;
$int2=2;
$int3=3;

$dou1=1.66;
$dou2=2.66;
$dou3=3.66;

$str1= "Hello World!";
$str2= "I Love PHP!";
$str3= "Carpe Diem!";

$bool1=FALSE;
$bool2=TRUE;
$bool3=FALSE;

//Task 3   
echo "<b>���������: </b><br>";
echo "Const1 = ";
echo  Const1;
echo "<br>Const2 = " ;
echo Const2;
echo "<br>Const3 = " ;
echo Const3;
echo "<br>Const4 = " ;
echo Const4;
echo "<br>Const5 = " ;
echo Const5;
echo "<br>";

echo "<b>���� ���� int: </b><br>";
echo "\$int1 = $int1 <br>" ;
echo "\$int2 = $int2 <br>" ;
echo "\$int3 = $int3 <br>" ;

echo "<b>���� ���� double: </b><br>";
echo "\$dou1 = $dou1 <br>" ;
echo "\$dou2 = $dou2 <br>" ;
echo "\$dou3 = $dou3 <br>" ;

echo "<b>���� ���� string: </b><br>";
print "\$str1 = $str1 <br>";
print "\$str2 = $str2 <br>";
print "\$str3 = $str3 <br>";

echo "<b>���� ���� boolean: </b><br>";
echo "\$bool1 = $bool1 <br>" ;
echo "\$bool2 = $bool2 <br>" ;
echo "\$bool3 = $bool3 <br><br>" ;

//Task 4
echo "<b>2 ��������� �� 1 �������� ����: </b><br>";
    
$copyInt1=&$int1;
echo "<i>����� ����������: </i>\$copyInt1 = $copyInt1 <br>";
    
$copyInt2=&$int2;
echo "<i>����� ����������: </i>\$copyInt2 = $copyInt2 <br>";

$string="London is the capital of ";
$$string="Great Britain";
echo "<i>�������� �����: </i>$string ${$string}<br><br>";

//Task 5
$int1+=5;
echo "\$int1+=5 = $int1 <br>";
$int1-=2;
echo "\$int1-=2 = $int1 <br>";
$int1*=2;
echo "\$int1*=2 = $int1 <br>";
$int1/=2;
echo "\$int1/=2 = $int1 <br>";
$int1%=3;
echo "\$int1%=3 = $int1 <br><br>";
    
//Task 6
echo "<b>������������ ��� ������ ���� string: </b>";   
$Concat=$str1.$str2;
echo "\$Concat=\$str1.\$str2 = $Concat <br><br>";

//Task 8
echo "<b>��������� ������� ����� ������� �21: </b><br>";
echo '<table class="purpletable" border="3" bordercolor="#996666">';
$i=0;
$j=0;
for( $i;$i<15;$i++ )
{
echo "<tr>";
	do {
		$j++;
        echo"<td><p></td>";
        } while($j<8);
	echo"</tr>";
	$j=0;
}
echo "</table><br>";
    
//Task 9
$kino=array(
			"�������"=>	array("̳���� ������","���������","�����","���������","������ ����"),
			"����"=>array("�����","�������� �� �������","������������� �����","��������","������","������","���������","����� ���","�����"),
			"������"=>array("Kingsman: �������� ������","̳���� ���","���������� � �����","���","����� ������"),
			"�����"=>array("��������","����������","����� ��������","���������������� ��������","���������� ���� ��������","����������� �� �����","������"),
			"����������"=>array("�������","����� ����","������������","����")
				);
				
//Task 10
echo'<table><td><b>����� �� ����������:</b><br>';
foreach ($kino as $k=>$tmp) {
print "<b><i> $k:</b></i><br>"; 
foreach ($tmp as $key_1=>$value_1) 
{ 
print " - $value_1 <br>"; 
}echo "<br>";
}
    
//Task 11
echo '</td><td><b>����� ���� 1-� ���������� (arsort):</b><br>'; //�� ��������� ���� (�� ���������)
foreach ($kino as $k=>$tmp) {
arsort($kino[$k]);}
foreach ($kino as $k=>$tmp) {
print "<b><i> $k:</b></i><br>"; 
foreach ($tmp as $key_1=>$value_1) 
{ 
print " - $value_1 <br>"; 
} echo "<br>";
}

//Task 12
echo '</td><td><b>����� ���� 2-� ���������� (ksort):</b><br>'; //�� ������� ���� (�� ����������)
ksort($kino);
foreach ($kino as $k=>$tmp) {
print "<b><i> $k</b></i><br>"; 
foreach ($tmp as $key_1=>$value_1) 
{ 
print " - $value_1 <br>"; 
} echo "<br>"; }
echo'</td></table><br>';

//Task 13
function build_table($Sort_kino){
$namekey=array_keys($Sort_kino);//�������� ����� ����� (�����)
$i=0;
$lengheight=0;//������� ������ ������������ �����, ������ �������
foreach($Sort_kino as $value){
		foreach($value as $temp){
		$i++;
		}
	if ($i>$lengheight){$lengheight=$i;}
	$i=0;};	
$lengwidth = count($namekey);//������� ���������� ��������
$i=0;
$j=0;
echo'<table>';
echo"<tr>";
     echo'<td class="green-box" id="films_td" >���� ������</td>';
	foreach($namekey as $value)
	{
	 echo"<td class ='violet-box' id='films_td'> $value </td>";
	}
	echo"</tr>";	
	echo"<tr>";
	echo"<td rowspan = $lengheight class='blue-box' id='films_td'> ����� ������</td>";
for($i;$i<$lengheight;$i++)
{	
	for($j;$j<$lengwidth;$j++){
		echo"<td class='red-box'>";
		echo $Sort_kino[$namekey[$j]][$i];
		echo "$key[$i]";
		if($key[$i] == NULL){echo "&nbsp;";};
		echo "</td>";
		};
	echo"</tr>";
	$j=0;
}
echo"</table>";
}
build_table($kino);

?>
</body>