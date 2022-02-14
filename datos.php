<?php 
$conexion=mysqli_connect('127.0.0.1:3306','root','Asof2020','ehs_indumentaria');
$id_talle=$_POST['id_talle'];

	$sql="SELECT a.id_talle, a.tipo_talle, a.talle
		from talles as a
        left join articulos as b on a.tipo_talle = b.tipo_talle
		where b.id_articulo='$id_talle'";

	$result=mysqli_query($conexion,$sql);

	$cadena="<label>Talle:</label> 
			<select id='talle' name='talle' class='custom-select' style='width: 85px; margin-left: 66px; margin-top: 5px;'>";

	while ($ver=mysqli_fetch_row($result)) {
		$cadena=$cadena.'<option value='.$ver[0].'>'.utf8_encode($ver[2]).'</option>';
	}

	echo  $cadena."</select>";
	

?>