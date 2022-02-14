<?php


    class crud{
        
        public function agregar($datos){
            $obj=new conectar();
            $conexion=$obj->conexion();

            
            $sql="INSERT INTO pedidos (id_usuario,id_articulo, id_talle, cantidad) 
                        VALUES         ('$datos[0]',
                                        '$datos[1]',
                                        '$datos[2]',
                                        '$datos[3]')";
        
            return mysqli_query($conexion,$sql);
        }
       
     
            
        
        public function eliminar($idpedido){
			$obj= new conectar();
			$conexion=$obj->conexion();

			$sql="DELETE from pedidos where id_pedido='$idpedido'";
			return mysqli_query($conexion,$sql);
		}
            
 }
        
        

?>