

<?php 

	class conectar{
		public function conexion(){
			$conexion=mysqli_connect('127.0.0.1','root','Asof2020','ehs_indumentaria',3306);
			return $conexion;
		}
	}
 ?>