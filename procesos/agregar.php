<?php

    require_once "../clases/conexion.php";
    require_once "../clases/crud.php";
    $obj=new crud();

    
    $datos=array(
            $_POST['colab'],
            $_POST['ropa'],
            $_POST['talle'],
            $_POST['cant']
                    );

 $cant=$_POST['cant'];
 $art=$_POST['ropa'];

    if($art == 12 and $cant < 4){
    
echo $obj->agregar($datos);
    
        
    }else if($art <> 12 and $cant < 3){
        
echo $obj->agregar($datos);
    
    }else{

return 0;

        
    }
?>