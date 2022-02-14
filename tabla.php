
<?php
session_start();

require_once "clases/conexion.php";
$obj=new conectar();
$conexion=$obj->conexion();

$username = $_SESSION['user'];

$sql="  select a.id_pedido, concat(d.nombre, ' ',d.apellido) as Colaborador, 
        b.articulo, c.talle, a.cantidad from pedidos as a
        left join articulos as b on a.id_articulo = b.id_articulo
        left join talles as c on a.id_talle = c.id_talle
        left join usuarios as d on a.id_usuario = d.id_usuario
        where d.id_sector = (select d.id_sector from usuarios as d
                             where d.user = '$username')"; //colocar el sector que viene del login

$result=mysqli_query($conexion,$sql);

?>

   
   <div>
    <table class="table table-hover table-condensed" id="iddatatable">
        <thead style="background-color: #dc3545; color: white; font-weight: bold;">
            <tr>
                <td>Colaborador</td>
                <td>Artículo</td>
                <td>Talle</td>
                <td>Cantidad</td>
  
                <td style="text-align:center;">Eliminar</td>
            </tr>
        </thead>
        <tbody>
          <?php
            
            while ($mostrar=mysqli_fetch_row($result)){
                    
            ?>
           <tr>
                <td><?php echo $mostrar[1]?></td>
                <td><?php echo $mostrar[2]?></td>
                <td><?php echo $mostrar[3]?></td>
                <td><?php echo $mostrar[4]?></td>

<!--              <td style="text-align:center;">
                   <span class="btn btn-warning btn-sm" onclick="eliminarDatos('<?php echo $mostrar[0]?>')">
                       <span class="fas fa-trash-alt"></span>
                   </span> 
-->

              <td style="text-align:center;">
                   <button type="button" class="btn btn-warning btn-sm" onclick="eliminarDatos('<?php echo $mostrar[0]?>')">
                       <span class="fas fa-trash-alt"></span>
                   </button> 
              </td>
            </tr>
            <?php
            
            }
            
            ?>
        </tbody>
    </table>
</div>

        <script>
            $(document).ready( function () {
                $('#iddatatable').DataTable();
            } );
        </script>
