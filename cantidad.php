<?php 


$conexion=mysqli_connect('127.0.0.1:3306','root','Asof2020','ehs_indumentaria');
$id_talle=$_POST['id_talle'];


$sql="select * from articulos where id_articulo = '$id_talle'";


	$result=mysqli_query($conexion,$sql);
            

            $cadena="<label>Cantidad:</label>";
            
        while ($ver=mysqli_fetch_row($result)) {
                
                if($ver[3] < 2){

                    $cadena1=$cadena."<input type='number' id='cant' name='cant' min='1' max='1' 
                                 style='width: 75px; margin-left: 36px' class='form-control' readonly value=1>";


                   echo  $cadena1;
                    
                }else if($ver[3] == 2){
                    $cadena2=$cadena."<input type='number' id='cant' name='cant' min='1' max='2' 
                                 style='width: 75px; margin-left: 36px' class='form-control'>";

                    echo  $cadena2;
                }
            
                else{

                    $cadena3=$cadena."<input type='number' id='cant' name='cant' min='1' max='3' 
                                 style='width: 75px; margin-left: 36px' class='form-control'>";


                    echo  $cadena3;

                }
        }
?>