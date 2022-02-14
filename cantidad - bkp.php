<?php 


$conexion=mysqli_connect('127.0.0.1:3306','root','Asof2020','ehs_indumentaria');
$id_talle=$_POST['id_talle'];


	$sql="SELECT a.id_talle, a.tipo_talle, a.talle
		from talles as a
        left join articulos as b on a.tipo_talle = b.tipo_talle
		where b.id_articulo='$id_talle'
        LIMIT 1";

	$result=mysqli_query($conexion,$sql);
            

            $cadena="<label>Cantidad:</label>";
            
        while ($ver=mysqli_fetch_row($result)) {
                
                if($ver[1] <> 3){

                    $cadena1=$cadena."<input type='number' id='cant' name='cant' min='1' max='2' 
                                 style='width: 75px; margin-left: 36px' class='form-control'>";


                   echo  $cadena1;
                }else{

                    $cadena2=$cadena."<input type='number' id='cant' name='cant' min='1' max='3' 
                                 style='width: 75px; margin-left: 36px' class='form-control'>";


                    echo  $cadena2;

                }
        }

?>