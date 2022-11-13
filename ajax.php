<?php
<<<<<<< HEAD
error_reporting(0);
=======
session_start();
error_reporting(0);
$Iduser = $_SESSION['Id'];
>>>>>>> d8061539ea4d572e23af219058a5d9a8daf63d94
include "include/conexion.php";

//TELAS//

//agg datos a modal telas
if ($_POST['action'] == 'buscarTelas') {

    $consultar = mysqli_query($conex, "SELECT * FROM telas ORDER BY Descripcion_tela ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();



    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre Tela</th>
                <th>Proveedor</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectTela(' . $data['Id_tela'] . ');recargar(event);" class="select--tela"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_tela'] . '</td>
                        <td class="item__items">' . $data['Proveedor'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td><a href="actualizar/tela.php?id=' . $data['Id_tela'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/tela.php?id=' . $data['Id_tela'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar tela
if ($_POST['action'] == 'infoTela') {
    if (!empty($_POST['tela']) || !empty($_POST['telaSeleccionada'])) {
        if (!empty($_POST['tela'])) {
            $nomtela =  $_POST['tela'];
            $query = mysqli_query($conex, "SELECT * FROM telas WHERE Descripcion_tela LIKE '$nomtela'");
        } else {
            $nomtela = $_POST['telaSeleccionada'];
            $query = mysqli_query($conex, "SELECT * FROM telas WHERE Id_tela LIKE '$nomtela'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
//buscar tela en el modal
if ($_POST['action'] == 'searchTela') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM telas ORDER By Descripcion_tela ASC";

    if (isset($_POST['searchtela'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchtela']);
        $query = "SELECT * FROM telas WHERE Descripcion_tela LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '<table class="tb">
            <tr>
            <th>Seleccionar</th>
            <th>Nombre Tela</th>
            <th>Proveedor</th>
            <th>Valor</th>
            <th>Acciones</th>   
        </tr>';

        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
         <tr class="item">
            <td class="item__items"><a href="#" onclick="selectTela(' . $data['Id_tela'] . ');recargar(event);" class="select--tela"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
            <td class="item__items">' . $data['Descripcion_tela'] . '</td>
            <td class="item__items">' . $data['Proveedor'] . '</td>
            <td class="item__items">' . $data['Valor_uni'] . '</td>
            <td><a href="actualizar/tela.php?id=' . $data['Id_tela'] . '" class="update"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
            <a href="eliminar/tela.php?id=' . $data['Id_tela'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
         </tr>
         ';
        }
        $detalleTabla .= "</table>";
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de telas</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar tela
if ($_POST['action'] == 'crearTela') {
    $nomtela = $_POST['nomtela'];
    $proveedortela = $_POST['proveedortela'];
    $valortela = $_POST['valortela'];

    $insert = mysqli_query($conex, "INSERT INTO telas(Descripcion_tela, Proveedor, Valor_uni) VALUES ('$nomtela','$proveedortela','$valortela')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg tela a detatemp
if ($_POST['action'] == 'aggTelatemp') {
    if (!empty($_POST['nomtela'])) {

        $nomtela = $_POST['nomtela'];
        $preciotela = $_POST['preciotela'];
        $cantela = $_POST['cantela'];
        $costo = $_POST['costo'];

        $query = mysqli_query($conex, "INSERT INTO detatemptelas(Nombre_tela, Precio_tela, Consumo, Costo, ID_USER) VALUES ('$nomtela','$preciotela','$cantela','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatemptelas WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtemptela = $data['Id_temptela'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Nombre_tela'] . '</td>
                        <td class="item__items">' . $data['Precio_tela'] . '</td>
                        <td class="item__items">' . $data['Consumo'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetalles.php?id=' . $Idtemptela . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totaltela">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de tela del detalle temp
if ($_POST['action'] == 'serchForDetalle') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatemptelas WHERE ID_USER = '$Iduser'");

    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtemptela = $data['Id_temptela'];
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Nombre_tela'] . '</td>
                        <td class="item__items">' . $data['Precio_tela'] . '</td>
                        <td class="item__items">' . $data['Consumo'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetalles.php?id=' . $Idtemptela . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totaltela">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}
//CUEROS//

//agg datos a modal cuero
if ($_POST['action'] == 'buscarCueros') {

    $consultar = mysqli_query($conex, "SELECT * FROM cueros ORDER BY Descripcion_cuero ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();


    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre Cuero</th>
                <th>Proveedor</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" id="' . $data['Id_cuero'] . '" onclick="selectCuero(' . $data['Id_cuero'] . ');recargar(event);" class="select--cuero"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_cuero'] . '</td>
                        <td class="item__items">' . $data['Proveedor'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td><a href="actualizar/cuero.php?id=' . $data['Id_cuero'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/cuero.php?id=' . $data['Id_cuero'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
        $arrayData['detalle'] = $detalleTabla;
        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//busar cueros
if ($_POST['action'] == 'infoCuero') {
    if (!empty($_POST['cuero']) || !empty($_POST['cueroSeleccionado'])) {
        if (!empty($_POST['cuero'])) {
            $nomcuero =  $_POST['cuero'];
            $query = mysqli_query($conex, "SELECT * FROM cueros WHERE Descripcion_cuero LIKE '$nomcuero'");
        } else {
            $nomcuero = $_POST['cueroSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM cueros WHERE Id_cuero LIKE '$nomcuero'");
        }
        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// guardar cuero
if ($_POST['action'] == 'crearCuero') {
    $nomcuero = $_POST['nomcuero'];
    $proveedorcuero = $_POST['proveedorcuero'];
    $valorcuero = $_POST['valorcuero'];

    $insert = mysqli_query($conex, "INSERT INTO cueros(Descripcion_cuero, Proveedor, Valor_uni) VALUES ('$nomcuero','$proveedorcuero','$valorcuero')");
    if ($insert) {
        echo "exitoso";
    }
}
// buscar cueros en el modal
if ($_POST['action'] == 'searchCuero') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM cueros ORDER By Descripcion_cuero ASC";

    if (isset($_POST['searchcuero'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchcuero']);
        $query = "SELECT * FROM cueros WHERE Descripcion_cuero LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre Cuero</th>
                <th>Proveedor</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" id="' . $data['Id_cuero'] . '" onclick="selectCuero(' . $data['Id_cuero'] . ');recargar(event);" class="select--cuero"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_cuero'] . '</td>
                        <td class="item__items">' . $data['Proveedor'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td><a href="actualizar/cuero.php?id=' . $data['Id_cuero'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/cuero.php?id=' . $data['Id_cuero'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de cueros</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//TROQUEL//

//agg datos a modal troquel
if ($_POST['action'] == 'buscarTroquel') {

    $consultar = mysqli_query($conex, "SELECT * FROM troquel ORDER BY Id_troquel");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();


    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre Troquel</th>
                <th>Decimetros</th>
                <th>Imagen</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $src = mysqli_real_escape_string($conex, $data['Img_troquel']);
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectTroquel(' . $data['Id_troquel'] . ');recargar(event);" class="select--troquel"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Nombre_troquel'] . '</td>
                        <td class="item__items">' . $data['DCM'] . '</td>
                        <td class="item__items"><img class="img__modal" src="data:image/jpeg;base64,' . base64_encode($data['Img_troquel']) . '"></td>
                        <td><a href="actualizar/troquel.php?id=' . $data['Id_troquel'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/troquel.php?id=' . $data['Id_troquel'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//Buscar troquel
if ($_POST['action'] == 'infoTroquel') {
    if (!empty($_POST['troquel']) || !empty($_POST['troquelSeleccionado'])) {
        if (!empty($_POST['troquel'])) {
            $nomtroquel =  $_POST['troquel'];
            $query = mysqli_query($conex, "SELECT Id_troquel,Nombre_troquel,DCM FROM troquel WHERE Nombre_troquel lIKE '$nomtroquel'");
        } else {
            $nomtroquel = $_POST['troquelSeleccionado'];
            $query = mysqli_query($conex, "SELECT Id_troquel,Nombre_troquel,DCM FROM troquel WHERE Id_troquel LIKE '$nomtroquel'");
        }
        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar troquel en el modal
if ($_POST['action'] == 'searchTroquel') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM troquel ORDER By Id_troquel ASC";

    if (isset($_POST['searchtroquel'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchtroquel']);
        $query = "SELECT * FROM troquel WHERE Nombre_troquel LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
        <tr>
        <th>Seleccionar</th>
        <th>Nombre Troquel</th>
        <th>Decimetros</th>
        <th>Imagen</th>
        <th>Acciones</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $src = mysqli_real_escape_string($conex, $data['Img_troquel']);
            $detalleTabla .= '
                <tr class="item">
                    <td class="item__items"><a href="#" onclick="selectTroquel(' . $data['Id_troquel'] . ');recargar(event);" class="select--troquel"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                    <td class="item__items">' . $data['Nombre_troquel'] . '</td>
                    <td class="item__items">' . $data['DCM'] . '</td>
                    <td class="item__items"><img class="img__modal" src="data:image/jpeg;base64,' . base64_encode($data['Img_troquel']) . '"></td>
                    <td><a href="actualizar/troquel.php?id=' . $data['Id_troquel'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                    <a href="eliminar/troquel.php?id=' . $data['Id_troquel'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>    
                </tr>

                ';
        }
        $detalleTabla .= '
            </table>
            ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de troquel</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}

//agg cuero a detatemp
if ($_POST['action'] == 'aggCuerotemp') {
    if (!empty($_POST['nomcuero'])) {

        $nomcuero = $_POST['nomcuero'];
        $preciocuero = $_POST['preciocuero'];
        $nomtroquel = $_POST['nomtroquel'];
        $dcmtroquel = $_POST['consumotroquel'];
        $cantidadcuero = $_POST['cantcuero'];
        $costocuero = $_POST['costocuero'];

        $query = mysqli_query($conex, "INSERT INTO detatempcuero(Descripcion_cuero, Precio_cuero, Troquel, dcm, Cantidad, Costo, ID_USER) VALUES ('$nomcuero','$preciocuero','$nomtroquel','$dcmtroquel','$cantidadcuero','$costocuero','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempcuero WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempcuero = $data['Id_tempcuero'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion_cuero'] . '</td>
                        <td class="item__items">' . $data['Precio_cuero'] . '</td>
                        <td class="item__items">' . $data['Troquel'] . '</td>
                        <td class="item__items">' . $data['dcm'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallecuero.php?id=' . $Idtempcuero . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalcuero">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
//extraer cuero del detalle temp
if ($_POST['action'] == 'serchForDetalleCuero') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempcuero WHERE ID_USER = '$Iduser'");

    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempcuero = $data['Id_tempcuero'];
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion_cuero'] . '</td>
                        <td class="item__items">' . $data['Precio_cuero'] . '</td>
                        <td class="item__items">' . $data['Troquel'] . '</td>
                        <td class="item__items">' . $data['dcm'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallecuero.php?id=' . $Idtempcuero . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalcuero">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

//Insumos 

//agg datos a modal insumos
if ($_POST['action'] == 'buscarInsumos') {

    $consultar = mysqli_query($conex, "SELECT * FROM insumos ORDER BY Descripcion_insumo ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();



    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Descripcion insumo</th>
                <th>Proveedor</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectInsumo(' . $data['Id_insumo'] . ');recargar(event);" class="select--insumo"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_insumo'] . '</td>
                        <td class="item__items">' . $data['Proveedor_insumo'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td><a href="actualizar/insumo.php?id=' . $data['Id_insumo'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/insumo.php?id=' . $data['Id_insumo'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>    
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar insumo
if ($_POST['action'] == 'infoInsumo') {
    if (!empty($_POST['insumo']) || !empty($_POST['insumoSeleccionado'])) {
        if (!empty($_POST['insumo'])) {
            $nominsumo =  $_POST['insumo'];
            $query = mysqli_query($conex, "SELECT * FROM insumos WHERE Descripcion_insumo LIKE '$nominsumo'");
        } else {
            $nominsumo = $_POST['insumoSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM insumos WHERE Id_insumo LIKE '$nominsumo'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar insumo en el modal
if ($_POST['action'] == 'searchInsumo') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM insumos ORDER By Descripcion_insumo ASC";

    if (isset($_POST['searchinsumo'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchinsumo']);
        $query = "SELECT * FROM insumos WHERE Descripcion_insumo LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
        <tr>
        <th>Seleccionar</th>
        <th>Descripcion insumo</th>
        <th>Proveedor</th>
        <th>Valor</th>
        <th>Acciones</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                <tr class="item">
                    <td class="item__items"><a href="#" onclick="selectInsumo(' . $data['Id_insumo'] . ');recargar(event);" class="select--insumo"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                    <td class="item__items">' . $data['Descripcion_insumo'] . '</td>
                    <td class="item__items">' . $data['Proveedor_insumo'] . '</td>
                    <td class="item__items">' . $data['Valor_uni'] . '</td>
                    <td><a href="actualizar/insumo.php?id=' . $data['Id_insumo'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                    <a href="eliminar/insumo.php?id=' . $data['Id_insumo'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>    
                </tr>
                ';
        }
        $detalleTabla .= '
            </table>
            ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de insumos</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
// guardar insumo
if ($_POST['action'] == 'crearInsumo') {
    $nominsumo = $_POST['nominsumo'];
    $proveedorinsumo = $_POST['proveedorinsumo'];
    $valorinsumo = $_POST['valorinsumo'];

    $insert = mysqli_query($conex, "INSERT INTO insumos(Descripcion_insumo, Proveedor_insumo, Valor_uni) VALUES ('$nominsumo','$proveedorinsumo','$valorinsumo')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg insumo a detatemp
if ($_POST['action'] == 'aggInsumotemp') {
    if (!empty($_POST['nominsumo'])) {

        $nominsumo = $_POST['nominsumo'];
        $proveedorinsumo = $_POST['proveedorinsumo'];
        $precioinsumo = $_POST['precioinsumo'];
        $cantinsumo = $_POST['cantinsumo'];
        $costoinsumo = $_POST['costoinsumo'];

        $query = mysqli_query($conex, "INSERT INTO detatempinsumos(Descripcion_insumo, proveedor, Valor_uni, Cantidad, Costo, ID_USER) VALUES ('$nominsumo','$proveedorinsumo','$precioinsumo','$cantinsumo','$costoinsumo', '$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempinsumos WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempinsumo = $data['Id_tempinsumo'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion_insumo'] . '</td>
                        <td class="item__items">' . $data['proveedor'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetalleinsumo.php?id=' . $Idtempinsumo . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalinsumo">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
//extraer insumos del detalle temp
if ($_POST['action'] == 'serchForDetalleInsumo') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempinsumos WHERE ID_USER = '$Iduser'");

    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempinsumo = $data['Id_tempinsumo'];
            $detalleTabla .= '
                    <<tr class="item">
                    <td class="item__items">' . $data['Descripcion_insumo'] . '</td>
                    <td class="item__items">' . $data['proveedor'] . '</td>
                    <td class="item__items">' . $data['Valor_uni'] . '</td>
                    <td class="item__items">' . $data['Cantidad'] . '</td>
                    <td class="item__items">' . $data['Costo'] . '</td>
                    <td class="item__items">
                        <a href="eliminar/elimdetalleinsumo.php?id=' . $Idtempinsumo . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                    </td>
                </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalinsumo">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

//Procesos

//SUBLIMACION//

//agg datos a modal sublimacion
if ($_POST['action'] == 'buscarSublimacion') {

    $consultar = mysqli_query($conex, "SELECT * FROM sublimacion ORDER BY Id_sublimacion ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();



    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Proveedor</th>
                <th>Metro</th>
                <th>Valor Uni.</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectSublimacion(' . $data['Id_sublimacion'] . ');recargar(event);" class="select--sublimacion"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Proveedores'] . '</td>
                        <td class="item__items">' . $data['Metro'] . '</td>
                        <td class="item__items">' . $data['Precio'] . '</td>
                        <td><a href="actualizar/sublimacion.php?id=' . $data['Id_sublimacion'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/sublimacion.php?id=' . $data['Id_sublimacion'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar sublimacion
if ($_POST['action'] == 'infoSublimacion') {
    if (!empty($_POST['sublimacion']) || !empty($_POST['sublimacionSeleccionado'])) {
        if (!empty($_POST['sublimacion'])) {
            $provsublimacion =  $_POST['sublimacion'];
            $query = mysqli_query($conex, "SELECT * FROM sublimacion WHERE Proveedores LIKE '$provsublimacion'");
        } else {
            $provsublimacion =  $_POST['sublimacionSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM sublimacion WHERE Id_sublimacion LIKE '$provsublimacion'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar sublimacion en el modal
if ($_POST['action'] == 'searchSublimacion') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM sublimacion ORDER By Id_sublimacion ASC";

    if (isset($_POST['searchsublimacion'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchsublimacion']);
        $query = "SELECT * FROM sublimacion WHERE Proveedores LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
        <tr>
        <th>Seleccionar</th>
        <th>Proveedor</th>
        <th>Metro</th>
        <th>Valor Uni.</th>
        <th>Acciones</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                <tr class="item">
                    <td class="item__items"><a href="#" onclick="selectSublimacion(' . $data['Id_sublimacion'] . ');recargar(event);" class="select--sublimacion"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                    <td class="item__items">' . $data['Proveedores'] . '</td>
                    <td class="item__items">' . $data['Metro'] . '</td>
                    <td class="item__items">' . $data['Precio'] . '</td>
                    <td><a href="actualizar/sublimacion.php?id=' . $data['Id_sublimacion'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                    <a href="eliminar/sublimacion.php?id=' . $data['Id_sublimacion'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                </tr>
                ';
        }
        $detalleTabla .= '
            </table>
            ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de sublimación</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar sublimacion
if ($_POST['action'] == 'crearSublimacion') {
    $proveedorsublimacion = $_POST['proveedorsublimacion'];
    $valorsublimacion = $_POST['valorsublimacion'];
    $metrosublimacion = $_POST['metrosublimacion'];

    $insert = mysqli_query($conex, "INSERT INTO sublimacion(Proveedores, Metro, Precio) VALUES ('$proveedorsublimacion', '$metrosublimacion', '$valorsublimacion')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg sublimacion a detatemp
if ($_POST['action'] == 'aggSublimaciontemp') {
    if (!empty($_POST['provSublimacion'])) {

        $proveedor = $_POST['provSublimacion'];
        $precio = $_POST['precioSublimacion'];
        $metro = $_POST['metroSublimacion'];
        $cantidad = $_POST['cantSublimacion'];
        $costo = $_POST['costoSublimacion'];

        $query = mysqli_query($conex, "INSERT INTO detatempsublimacion(Proveedor_sublimacion, Precio_metro, Valor_uni, Cantidad, Costo, ID_USER) VALUES ('$proveedor','$metro','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempsublimacion WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempsublimacion = $data['Id_tempsublimacion'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Proveedor_sublimacion'] . '</td>
                        <td class="item__items">' . $data['Precio_metro'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallessublimacion.php?id=' . $Idtempsublimacion . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalsublimacion">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}

// extraer datos de sublimacion del detalle temp
if ($_POST['action'] == 'serchForDetalleSublimacion') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempsublimacion WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempsublimacion = $data['Id_tempsublimacion'];
            $detalleTabla .= '
            <tr class="item">
                <td class="item__items">' . $data['Proveedor_sublimacion'] . '</td>
                <td class="item__items">' . $data['Precio_metro'] . '</td>
                <td class="item__items">' . $data['Valor_uni'] . '</td>
                <td class="item__items">' . $data['Cantidad'] . '</td>
                <td class="item__items">' . $data['Costo'] . '</td>
                <td class="item__items">
                    <a href="eliminar/elimdetallessublimacion.php?id=' . $Idtempsublimacion . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                </td>
            </tr>
            ';
        }
        $total = $total;

        $detalleTotales = '
        <tr class="trfoot">
            <td class="totales">TOTAL</td>
        </tr>
        <tr class="trfoot">
            <td class="totales" id="totalsublimacion">' . $total . '</td>
        </tr>
        ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

//CORTE MANUAL
//agg corte manual a modal
if ($_POST['action'] == 'buscarCorteManual') {

    $consultar = mysqli_query($conex, "SELECT * FROM cortemanual ORDER BY Codigo ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Codigo</th>
                <th>Media Ancho</th>
                <th>Media Largo</th>
                <th>Valor Uni.</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectCorteManual(' . $data['Codigo'] . ');recargar(event);" class="select--cortemanual"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Codigo'] . '</td>
                        <td class="item__items">' . $data['Media_ancho'] . '</td>
                        <td class="item__items">' . $data['Media_largo'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td><a href="actualizar/cortemanual.php?id=' . $data['Codigo'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/cortemanual.php?id=' . $data['Codigo'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar corte manual
if ($_POST['action'] == 'infoCorteManual') {
    if (!empty($_POST['corteManual']) || !empty($_POST['corteManualSeleccionado'])) {
        if (!empty($_POST['corteManual'])) {
            $codigo =  $_POST['corteManual'];
            $query = mysqli_query($conex, "SELECT * FROM cortemanual WHERE Codigo LIKE '$codigo'");
        } else {
            $codigo =  $_POST['corteManualSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM cortemanual WHERE Codigo LIKE '$codigo'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar corte manual en el modal
if ($_POST['action'] == 'searchCorteManual') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM cortemanual ORDER By Codigo ASC";

    if (isset($_POST['searchcortemanual'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchcortemanual']);
        $query = "SELECT * FROM cortemanual WHERE Codigo LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Codigo</th>
                <th>Media Ancho</th>
                <th>Media Largo</th>
                <th>Valor Uni.</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectCorteManual(' . $data['Codigo'] . ');recargar(event);" class="select--cortemanual"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Codigo'] . '</td>
                        <td class="item__items">' . $data['Media_ancho'] . '</td>
                        <td class="item__items">' . $data['Media_largo'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td><a href="actualizar/cortemanual.php?id=' . $data['Codigo'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/cortemanual.php?id=' . $data['Codigo'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de Corte Manual</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar corte manual
if ($_POST['action'] == 'crearCorteManual') {
    $codigo = $_POST['codigo'];
    $ancho = $_POST['ancho'];
    $largo = $_POST['largo'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO cortemanual(Codigo, Media_ancho, Media_largo, Valor_uni) VALUES ('$codigo', '$ancho','$largo' ,'$valor')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg corte manual a detatemp
if ($_POST['action'] == 'aggCorteManualtemp') {
    if (!empty($_POST['codigocortemanual'])) {

        $codigo = $_POST['codigocortemanual'];
        $ancho = $_POST['anchocortemanual'];
        $largo = $_POST['largocortemanual'];
        $precio = $_POST['preciocortemanual'];
        $cantidad = $_POST['cantcortemanual'];
        $costo = $_POST['costocortemanual'];

        $query = mysqli_query($conex, "INSERT INTO detatempcortemanual(Codigo, Media_ancho, Media_largo, Valor_uni, Cantidad, Costo, ID_USER) VALUES ('$codigo','$ancho','$largo','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempcortemanual WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempcortemanual = $data['Id_tempcortemanual'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Codigo'] . '</td>
                        <td class="item__items">' . $data['Media_ancho'] . '</td>
                        <td class="item__items">' . $data['Media_largo'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallescortemanual.php?id=' . $Idtempcortemanual . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalcortemanual">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de corte manual del detalle temp
if ($_POST['action'] == 'serchForDetalleCorteManual') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempcortemanual WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempcortemanual = $data['Id_tempcortemanual'];
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Codigo'] . '</td>
                        <td class="item__items">' . $data['Media_ancho'] . '</td>
                        <td class="item__items">' . $data['Media_largo'] . '</td>
                        <td class="item__items">' . $data['Valor_uni'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallescortemanual.php?id=' . $Idtempcortemanual . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalcortemanual">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

// CONFECCIÓN
//agg confección a modal
if ($_POST['action'] == 'buscarConfeccion') {

    $consultar = mysqli_query($conex, "SELECT * FROM confeccion ORDER BY Descripcion_confeccion ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Descripcion</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectConfeccion(' . $data['Id_confeccion'] . ');recargar(event);" class="select--confeccion"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_confeccion'] . '</td>
                        <td class="item__items">' . $data['Valor_confeccion'] . '</td>
                        <td><a href="actualizar/confeccion.php?id=' . $data['Id_confeccion'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/confeccion.php?id=' . $data['Id_confeccion'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar confección
if ($_POST['action'] == 'infoConfeccion') {
    if (!empty($_POST['confeccion']) || !empty($_POST['confeccionSeleccionado'])) {
        if (!empty($_POST['confeccion'])) {
            $confeccion =  $_POST['confeccion'];
            $query = mysqli_query($conex, "SELECT * FROM confeccion WHERE Descripcion_confeccion LIKE '$confeccion'");
        } else {
            $confeccion =  $_POST['confeccionSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM confeccion WHERE Id_confeccion LIKE '$confeccion'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar confección en el modal
if ($_POST['action'] == 'searchConfeccion') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM confeccion ORDER By Descripcion_confeccion ASC";

    if (isset($_POST['searchconfeccion'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchconfeccion']);
        $query = "SELECT * FROM confeccion WHERE Descripcion_confeccion LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
            <tr>
            <th>Seleccionar</th>
            <th>Descripcion</th>
            <th>Valor</th>
            <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectConfeccion(' . $data['Id_confeccion'] . ');recargar(event);" class="select--confeccion"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_confeccion'] . '</td>
                        <td class="item__items">' . $data['Valor_confeccion'] . '</td>
                        <td><a href="actualizar/confeccion.php?id=' . $data['Id_confeccion'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/confeccion.php?id=' . $data['Id_confeccion'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de Confección</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar confección
if ($_POST['action'] == 'crearConfeccion') {
    $descrip = $_POST['descrip'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO confeccion(Descripcion_confeccion, Valor_confeccion) VALUES ('$descrip','$valor')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg confección a detatemp
if ($_POST['action'] == 'aggConfecciontemp') {
    if (!empty($_POST['descripcionconfeccion'])) {

        $descripcion = $_POST['descripcionconfeccion'];
        $precio = $_POST['precioconfeccion'];
        $cantidad = $_POST['cantconfeccion'];
        $costo = $_POST['costoconfeccion'];

        $query = mysqli_query($conex, "INSERT INTO detatempconfeccion(Descripcion, Valor, Cantidad, Costo, ID_USER) VALUES ('$descripcion','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempconfeccion");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempconfeccion = $data['Id_tempconfeccion'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallesconfeccion.php?id=' . $Idtempconfeccion . '" class="btnborrar" onclick="confirmacion(event);"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalconfeccion">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}

// extraer datos de confección del detalle temp
if ($_POST['action'] == 'serchForDetalleConfeccion') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempconfeccion WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempconfeccion = $data['Id_tempconfeccion'];
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallesconfeccion.php?id=' . $Idtempconfeccion . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalconfeccion">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

// TERMINACIÓN
//agg terminación a modal
if ($_POST['action'] == 'buscarTerminacion') {

    $consultar = mysqli_query($conex, "SELECT * FROM terminacion ORDER BY Descripcion_terminacion ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Descripcion</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectTerminacion(' . $data['Id_terminacion'] . ');recargar(event);" class="select--terminacion"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_terminacion'] . '</td>
                        <td class="item__items">' . $data['Valor_terminacion'] . '</td>
                        <td><a href="actualizar/terminacion.php?id=' . $data['Id_terminacion'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/terminacion.php?id=' . $data['Id_terminacion'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar terminación
if ($_POST['action'] == 'infoTerminacion') {
    if (!empty($_POST['terminacion']) || !empty($_POST['terminacionSeleccionado'])) {
        if (!empty($_POST['terminacion'])) {
            $terminacion =  $_POST['terminacion'];
            $query = mysqli_query($conex, "SELECT * FROM terminacion WHERE Descripcion_terminacion LIKE '$terminacion'");
        } else {
            $terminacion =  $_POST['terminacionSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM terminacion WHERE Id_terminacion LIKE '$terminacion'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar terminación en el modal
if ($_POST['action'] == 'searchTerminacion') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM terminacion ORDER By Descripcion_terminacion ASC";

    if (isset($_POST['searchterminacion'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchterminacion']);
        $query = "SELECT * FROM terminacion WHERE Descripcion_terminacion LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Descripcion</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectTerminacion(' . $data['Id_terminacion'] . ');recargar(event);" class="select--terminacion"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_terminacion'] . '</td>
                        <td class="item__items">' . $data['Valor_terminacion'] . '</td>
                        <td><a href="actualizar/terminacion.php?id=' . $data['Id_terminacion'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/terminacion.php?id=' . $data['Id_terminacion'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de terminación</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar confección
if ($_POST['action'] == 'crearTerminacion') {
    $descrip = $_POST['descrip'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO terminacion(Descripcion_terminacion, Valor_terminacion) VALUES ('$descrip','$valor')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg terminación a detatemp
if ($_POST['action'] == 'aggTerminaciontemp') {
    if (!empty($_POST['descripcionterminacion'])) {

        $descripcion = $_POST['descripcionterminacion'];
        $precio = $_POST['precioterminacion'];
        $cantidad = $_POST['canterminacion'];
        $costo = $_POST['costoterminacion'];

        $query = mysqli_query($conex, "INSERT INTO detatempterminacion(Descripcion, Valor, Cantidad, Costo, ID_USER) VALUES ('$descripcion','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempterminacion WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempterminacion = $data['Id_tempterminacion'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallesterminacion.php?id=' . $Idtempterminacion . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalterminacion">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de terminación del detalle temp
if ($_POST['action'] == 'serchForDetalleTerminacion') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempterminacion WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempterminacion = $data['Id_tempterminacion'];
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallesterminacion.php?id=' . $Idtempterminacion . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalterminacion">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

// ENTRETELADO
//agg entretelado a modal
if ($_POST['action'] == 'buscarEntretelado') {

    $consultar = mysqli_query($conex, "SELECT * FROM entretelado ORDER BY Descripcion_entretelado ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Descripcion</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectEntretelado(' . $data['Id_entretelado'] . ');recargar(event);" class="select--entretelado"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_entretelado'] . '</td>
                        <td class="item__items">' . $data['Valor_entretelado'] . '</td>
                        <td><a href="actualizar/entretelado.php?id=' . $data['Id_entretelado'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/entretelado.php?id=' . $data['Id_entretelado'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar entretelado
if ($_POST['action'] == 'infoEntretelado') {
    if (!empty($_POST['entretelado']) || !empty($_POST['entreteladoSeleccionado'])) {
        if (!empty($_POST['entretelado'])) {
            $entretelado =  $_POST['entretelado'];
            $query = mysqli_query($conex, "SELECT * FROM entretelado WHERE Descripcion_entretelado LIKE '$entretelado'");
        } else {
            $entretelado =  $_POST['entreteladoSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM entretelado WHERE Id_entretelado LIKE '$entretelado'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar entretelado en el modal
if ($_POST['action'] == 'searchEntretelado') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM entretelado ORDER By Descripcion_entretelado ASC";

    if (isset($_POST['searchentretelado'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchentretelado']);
        $query = "SELECT * FROM entretelado WHERE Descripcion_entretelado LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
        <tr>
            <th>Seleccionar</th>
            <th>Descripcion</th>
            <th>Valor</th>
            <th>Acciones</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                <tr class="item">
                    <td class="item__items"><a href="#" onclick="selectEntretelado(' . $data['Id_entretelado'] . ');recargar(event);" class="select--entretelado"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                    <td class="item__items">' . $data['Descripcion_entretelado'] . '</td>
                    <td class="item__items">' . $data['Valor_entretelado'] . '</td>
                    <td><a href="actualizar/entretelado.php?id=' . $data['Id_entretelado'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                    <a href="eliminar/entretelado.php?id=' . $data['Id_entretelado'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                </tr>
                ';
        }
        $detalleTabla .= '
            </table>
            ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de Entretelado</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar entretelado
if ($_POST['action'] == 'crearEntretelado') {
    $descrip = $_POST['descrip'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO entretelado(Descripcion_entretelado, Valor_entretelado) VALUES ('$descrip','$valor')");
    if ($insert) {
        echo "exitoso";
    }
}
//agg entretelado a detatemp
if ($_POST['action'] == 'aggEntreteladotemp') {
    if (!empty($_POST['descripcionentretelado'])) {

        $descripcion = $_POST['descripcionentretelado'];
        $precio = $_POST['precioentretelado'];
        $cantidad = $_POST['cantentretelado'];
        $costo = $_POST['costoentretelado'];

        $query = mysqli_query($conex, "INSERT INTO detatempentretelado(Descripcion, Valor, Cantidad, Costo, ID_USER) VALUES ('$descripcion','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempentretelado WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempentretelado = $data['Id_tempentretelado'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallesentretelado.php?id=' . $Idtempentretelado . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalentretelado">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de entretelado del detalle temp
if ($_POST['action'] == 'serchForDetalleEntretelado') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempentretelado WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempentretelado = $data['Id_tempentretelado'];
            $detalleTabla .= '
            <tr class="item">
                <td class="item__items">' . $data['Descripcion'] . '</td>
                <td class="item__items">' . $data['Valor'] . '</td>
                <td class="item__items">' . $data['Cantidad'] . '</td>
                <td class="item__items">' . $data['Costo'] . '</td>
                <td class="item__items">
                    <a href="eliminar/elimdetallesentretelado.php?id=' . $Idtempentretelado . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                </td>
            </tr>
            ';
        }
        $total = $total;

        $detalleTotales = '
        <tr class="trfoot">
            <td class="totales">TOTAL</td>
        </tr>
        <tr class="trfoot">
            <td class="totales" id="totalentretelado">' . $total . '</td>
        </tr>
        ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

// CORTE DIGITAL
//agg corte digital a modal
if ($_POST['action'] == 'buscarCorteDigital') {

    $consultar = mysqli_query($conex, "SELECT * FROM cortedigital ORDER BY Descripcion_cortedigital ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
            <th>Seleccionar</th>
            <th>Pieza</th>
            <th>Valor</th>
            <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectCorteDigital(' . $data['Id_cortedigital'] . ');recargar(event);" class="select--cortedigital"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_cortedigital'] . '</td>
                        <td class="item__items">' . $data['Valor_cortedigital'] . '</td>
                        <td><a href="actualizar/cortedigital.php?id=' . $data['Id_cortedigital'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/cortedigital.php?id=' . $data['Id_cortedigital'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar corte digital
if ($_POST['action'] == 'infoCorteDigital') {
    if (!empty($_POST['cortedigital']) || !empty($_POST['corteDigitalSeleccionado'])) {
        if (!empty($_POST['cortedigital'])) {
            $cortedigital =  $_POST['cortedigital'];
            $query = mysqli_query($conex, "SELECT * FROM cortedigital WHERE Descripcion_cortedigital LIKE '$cortedigital'");
        } else {
            $cortedigital =  $_POST['corteDigitalSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM cortedigital WHERE Id_cortedigital LIKE '$cortedigital'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar corte digital en el modal
if ($_POST['action'] == 'searchCorteDigital') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM cortedigital ORDER By Descripcion_cortedigital ASC";

    if (isset($_POST['searchcortedigital'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchcortedigital']);
        $query = "SELECT * FROM cortedigital WHERE Descripcion_cortedigital LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
            <tr>
            <th>Seleccionar</th>
            <th>Pieza</th>
            <th>Valor</th>
            <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectCorteDigital(' . $data['Id_cortedigital'] . ');recargar(event);" class="select--cortedigital"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Descripcion_cortedigital'] . '</td>
                        <td class="item__items">' . $data['Valor_cortedigital'] . '</td>
                        <td><a href="actualizar/cortedigital.php?id=' . $data['Id_cortedigital'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/cortedigital.php?id=' . $data['Id_cortedigital'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de Corte Digital</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar corte digital
if ($_POST['action'] == 'crearCorteDigital') {
    $descrip = $_POST['descrip'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO cortedigital(Descripcion_cortedigital, Valor_cortedigital) VALUES ('$descrip','$valor')");
    if ($insert) {

        echo "exitoso";
    }
}
//agg corte digital a detatemp
if ($_POST['action'] == 'aggCorteDigitaltemp') {
    if (!empty($_POST['descripcioncortedigital'])) {

        $descripcion = $_POST['descripcioncortedigital'];
        $precio = $_POST['preciocortedigital'];
        $cantidad = $_POST['cantcortedigital'];
        $costo = $_POST['costocortedigital'];

        $query = mysqli_query($conex, "INSERT INTO detatempcortedigital(Descripcion, Valor, Cantidad, Costo, ID_USER) VALUES ('$descripcion','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempcortedigital WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempcortedigital = $data['Id_tempcortedigital'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallescortedigital.php?id=' . $Idtempcortedigital . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalcortedigital">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de corte digital del detalle temp
if ($_POST['action'] == 'serchForDetalleCorteDigital') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempcortedigital WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempcortedigital = $data['Id_tempcortedigital'];
            $detalleTabla .= '
            <tr class="item">
                <td class="item__items">' . $data['Descripcion'] . '</td>
                <td class="item__items">' . $data['Valor'] . '</td>
                <td class="item__items">' . $data['Cantidad'] . '</td>
                <td class="item__items">' . $data['Costo'] . '</td>
                <td class="item__items">
                    <a href="eliminar/elimdetallescortedigital.php?id=' . $Idtempcortedigital . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                </td>
            </tr>
            ';
        }
        $total = $total;

        $detalleTotales = '
        <tr class="trfoot">
            <td class="totales">TOTAL</td>
        </tr>
        <tr class="trfoot">
            <td class="totales" id="totalcortedigital">' . $total . '</td>
        </tr>
        ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}

// LASER
//agg laser a modal
if ($_POST['action'] == 'buscarLaser') {

    $consultar = mysqli_query($conex, "SELECT * FROM laser ORDER BY Nombre_laser ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectLaser(' . $data['Id_laser'] . ');recargar(event);" class="select--laser"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Nombre_laser'] . '</td>
                        <td class="item__items">' . $data['Descripcion_laser'] . '</td>
                        <td class="item__items">' . $data['Valor_laser'] . '</td>
                        <td><a href="actualizar/laser.php?id=' . $data['Id_laser'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/laser.php?id=' . $data['Id_laser'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar laser
if ($_POST['action'] == 'infoLaser') {
    if (!empty($_POST['laser']) || !empty($_POST['laserSeleccionado'])) {
        if (!empty($_POST['laser'])) {
            $laser =  $_POST['laser'];
            $query = mysqli_query($conex, "SELECT * FROM laser WHERE Nombre_laser LIKE '$laser'");
        } else {
            $laser =  $_POST['laserSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM laser WHERE Id_laser LIKE '$laser'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar laser en el modal
if ($_POST['action'] == 'searchLaser') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM laser ORDER By Nombre_laser ASC";

    if (isset($_POST['searchlaser'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchlaser']);
        $query = "SELECT * FROM laser WHERE Descripcion_laser LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
        <tr>
            <th>Seleccionar</th>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Valor</th>
            <th>Acciones</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                <tr class="item">
                    <td class="item__items"><a href="#" onclick="selectLaser(' . $data['Id_laser'] . ');recargar(event);" class="select--laser"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                    <td class="item__items">' . $data['Nombre_laser'] . '</td>
                    <td class="item__items">' . $data['Descripcion_laser'] . '</td>
                    <td class="item__items">' . $data['Valor_laser'] . '</td>
                    <td><a href="actualizar/laser.php?id=' . $data['Id_laser'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                    <a href="eliminar/laser.php?id=' . $data['Id_laser'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                </tr>
                ';
        }
        $detalleTabla .= '
            </table>
            ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de Laser</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar laser
if ($_POST['action'] == 'crearLaser') {
    $descrip = $_POST['descrip'];
    $nombre = $_POST['nombre'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO laser(Descripcion_laser, Nombre_laser, Valor_laser) VALUES ('$descrip','$nombre','$valor')");
    if ($insert) {

        echo "exitoso";
    }
}
//agg laser a detatemp
if ($_POST['action'] == 'aggLasertemp') {
    if (!empty($_POST['nombrelaser'])) {
        $nombre = $_POST['nombrelaser'];
        $descripcion = $_POST['descripcionlaser'];
        $precio = $_POST['preciolaser'];
        $cantidad = $_POST['cantlaser'];
        $costo = $_POST['costolaser'];

        $query = mysqli_query($conex, "INSERT INTO detatemplaser(Nombre, Descripcion, Valor, Cantidad, Costo, ID_USER) VALUES ('$nombre','$descripcion','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatemplaser WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtemplaser = $data['Id_templaser'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Nombre'] . '</td>
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetalleslaser.php?id=' . $Idtemplaser . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totallaser">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de laser del detalle temp
if ($_POST['action'] == 'serchForDetalleLaser') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatemplaser WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtemplaser = $data['Id_templaser'];
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Nombre'] . '</td>
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetalleslaser.php?id=' . $Idtemplaser . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
        }
        $total = $total;

        $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totallaser">' . $total . '</td>
                </tr>
                ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}
// BORDADO
//agg bordado a modal
if ($_POST['action'] == 'buscarBordado') {

    $consultar = mysqli_query($conex, "SELECT * FROM bordado ORDER BY Nombre_bordado ASC");
    $result = mysqli_num_rows($consultar);
    $detalleTabla = '';
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .= '
            <table class="tb">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Estado</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items"><a href="#" onclick="selectBordado(' . $data['Id_bordado'] . ');recargar(event);" class="select--bordado"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                        <td class="item__items">' . $data['Nombre_bordado'] . '</td>
                        <td class="item__items">' . $data['Descripcion_bordado'] . '</td>
                        <td class="item__items">' . $data['Estado_bordado'] . '</td>
                        <td class="item__items">' . $data['Precio_bordado'] . '</td>
                        <td><a href="actualizar/bordado.php?id=' . $data['Id_bordado'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                        <a href="eliminar/bordado.php?id=' . $data['Id_bordado'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                    </tr>
                    ';
        }
        $detalleTabla .= '
                </table>
                ';

        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}
//buscar bordado
if ($_POST['action'] == 'infoBordado') {
    if (!empty($_POST['bordado']) || !empty($_POST['bordadoSeleccionado'])) {
        if (!empty($_POST['bordado'])) {
            $bordado =  $_POST['bordado'];
            $query = mysqli_query($conex, "SELECT * FROM bordado WHERE Nombre_bordado LIKE '$bordado'");
        } else {
            $bordado =  $_POST['bordadoSeleccionado'];
            $query = mysqli_query($conex, "SELECT * FROM bordado WHERE Id_bordado LIKE '$bordado'");
        }

        mysqli_close($conex);
        $result = mysqli_num_rows($query);

        $data = '';
        if ($result > 0) {
            $data = mysqli_fetch_assoc($query);
        } else {
            $data = 0;
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
    exit;
}
// buscar bordado en el modal
if ($_POST['action'] == 'searchBordado') {
    $detalleTabla = "";
    $arrayData = array();
    $query = "SELECT * FROM bordado ORDER By Nombre_bordado ASC";

    if (isset($_POST['searchbordado'])) {
        $q = mysqli_real_escape_string($conex, $_POST['searchbordado']);
        $query = "SELECT * FROM bordado WHERE Descripcion_bordado LIKE '%" . $q . "%'";
    }

    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {

        $detalleTabla .= '
        <table class="tb">
        <tr>
        <th>Seleccionar</th>
        <th>Nombre</th>
        <th>Descripción</th>
        <th>Estado</th>
        <th>Valor</th>
        <th>Acciones</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $detalleTabla .= '
                <tr class="item">
                    <td class="item__items"><a href="#" onclick="selectBordado(' . $data['Id_bordado'] . ');recargar(event);" class="select--bordado"><img src="src/svg/select.svg" alt="Seleccionar" class="svg svg--select"></a></td>
                    <td class="item__items">' . $data['Nombre_bordado'] . '</td>
                    <td class="item__items">' . $data['Descripcion_bordado'] . '</td>
                    <td class="item__items">' . $data['Estado_bordado'] . '</td>
                    <td class="item__items">' . $data['Precio_bordado'] . '</td>
                    <td><a href="actualizar/bordado.php?id=' . $data['Id_bordado'] . '" class="btnupdate"><img src="src/svg/update.svg" alt="actualizar" class="svg svg--select"></a>
                    <a href="eliminar/bordado.php?id=' . $data['Id_bordado'] . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a></td>
                </tr>
                ';
        }
        $detalleTabla .= '
            </table>
            ';
    } else {

        $detalleTabla .= "<h1 class='modal__message'>No se encontro registro de Bordado</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}
//guardar bordado
if ($_POST['action'] == 'crearBordado') {
    $descrip = $_POST['descrip'];
    $nombre = $_POST['nombre'];
    $estado = $_POST['estado'];
    $valor = $_POST['valor'];

    $insert = mysqli_query($conex, "INSERT INTO bordado(Descripcion_bordado, Nombre_bordado, Estado_bordado, Precio_bordado) VALUES ('$descrip','$nombre','$estado','$valor')");
    if ($insert) {

        echo "exitoso";
    }
}
//agg bordado a detatemp
if ($_POST['action'] == 'aggBordadotemp') {
    if (!empty($_POST['nombrebordado'])) {
        $nombre = $_POST['nombrebordado'];
        $descripcion = $_POST['descripcionbordado'];
        $precio = $_POST['preciobordado'];
        $cantidad = $_POST['cantbordado'];
        $costo = $_POST['costobordado'];

        $query = mysqli_query($conex, "INSERT INTO detatempbordado(Nombre, Descripcion, Valor, Cantidad, Costo, ID_USER) VALUES ('$nombre','$descripcion','$precio','$cantidad','$costo','$Iduser')");
        $consultar = mysqli_query($conex, "SELECT * FROM detatempbordado WHERE ID_USER = '$Iduser'");
        $result = mysqli_num_rows($consultar);

        $detalleTabla = '';
        $total = 0;
        $arrayData = array();

        if ($result > 0) {
            while ($data = mysqli_fetch_assoc($consultar)) {
                $total = $total + $data['Costo'];
                $Idtempbordado = $data['Id_tempbordado'];
                $detalleTabla .= '
                    <tr class="item">
                        <td class="item__items">' . $data['Nombre'] . '</td>
                        <td class="item__items">' . $data['Descripcion'] . '</td>
                        <td class="item__items">' . $data['Valor'] . '</td>
                        <td class="item__items">' . $data['Cantidad'] . '</td>
                        <td class="item__items">' . $data['Costo'] . '</td>
                        <td class="item__items">
                            <a href="eliminar/elimdetallesbordado.php?id=' . $Idtempbordado . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                        </td>
                    </tr>
                    ';
            }
            $total = $total;

            $detalleTotales = '
                <tr class="trfoot">
                    <td class="totales">TOTAL</td>
                </tr>
                <tr class="trfoot">
                    <td class="totales" id="totalbordado">' . $total . '</td>
                </tr>
                ';
            $arrayData['detalle'] = $detalleTabla;
            $arrayData['totales'] = $detalleTotales;

            echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
        } else {
            echo 'error';
        }
        mysqli_close($conex);
    } else {
        echo 'error';
    }
    exit;
}
// extraer datos de bordado del detalle temp
if ($_POST['action'] == 'serchForDetalleBordado') {
    $consultar = mysqli_query($conex, "SELECT * FROM detatempbordado WHERE ID_USER = '$Iduser'");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        while ($data = mysqli_fetch_assoc($consultar)) {
            $total = $total + $data['Costo'];
            $Idtempbordado = $data['Id_tempbordado'];
            $detalleTabla .= '
            <tr class="item">
                <td class="item__items">' . $data['Nombre'] . '</td>
                <td class="item__items">' . $data['Descripcion'] . '</td>
                <td class="item__items">' . $data['Valor'] . '</td>
                <td class="item__items">' . $data['Cantidad'] . '</td>
                <td class="item__items">' . $data['Costo'] . '</td>
                <td class="item__items">
                    <a href="eliminar/elimdetallesbordado.php?id=' . $Idtempbordado . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                </td>
            </tr>
            ';
        }
        $total = $total;

        $detalleTotales = '
        <tr class="trfoot">
            <td class="totales">TOTAL</td>
        </tr>
        <tr class="trfoot">
            <td class="totales" id="totalbordado">' . $total . '</td>
        </tr>
        ';
        $arrayData['detalle'] = $detalleTabla;
        $arrayData['totales'] = $detalleTotales;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}
//cancelar factura

if ($_POST['action'] == 'cancelarVenta') {

    $querytela = mysqli_query($conex, "DELETE FROM detatemptelas WHERE ID_USER = '$Iduser'");
    $querycuero = mysqli_query($conex, "DELETE FROM detatempcuero WHERE ID_USER = '$Iduser'");
    $queryinsumo = mysqli_query($conex, "DELETE FROM detatempinsumos WHERE ID_USER = '$Iduser'");
    $querysublimacion = mysqli_query($conex, "DELETE FROM detatempsublimacion WHERE ID_USER = '$Iduser'");
    $querycortemanual = mysqli_query($conex, "DELETE FROM detatempcortemanual WHERE ID_USER = '$Iduser'");
    $queryconfeccion = mysqli_query($conex, "DELETE FROM detatempconfeccion WHERE ID_USER = '$Iduser'");
    $queryterminacion = mysqli_query($conex, "DELETE FROM detatempterminacion WHERE ID_USER = '$Iduser'");
    $queryentretelado = mysqli_query($conex, "DELETE FROM detatempentretelado WHERE ID_USER = '$Iduser'");
    $querycortedigital = mysqli_query($conex, "DELETE FROM detatempcortedigital WHERE ID_USER = '$Iduser'");
    $querylaser = mysqli_query($conex, "DELETE FROM detatemplaser WHERE ID_USER = '$Iduser'");
    $querybordado = mysqli_query($conex, "DELETE FROM detatempbordado WHERE ID_USER = '$Iduser'");


    if ($querytela && $querycuero && $queryinsumo && $querysublimacion && $querycortemanual && $queryconfeccion && $queryterminacion && $queryentretelado && $querycortedigital && $querylaser && $querybordado) {
        echo 'cancelada exitosamente';
    } else {
        echo 'error';
    }
    mysqli_close($conex);
    exit;
}

// // facturar
if ($_POST['action'] == 'facturar') {
    $descripcion = $_POST['descripcion'];
    $fecha = $_POST['fecha'];
    $cliente = $_POST['cliente'];
    $cotizacion = $_POST['cotizacion'];
    $ica = $_POST['ica'];
    $iva = $_POST['iva'];
    $rete = $_POST['rete'];
    $cif = $_POST['cif'];
    $utilidad = $_POST['utilidad'];
    $sql = mysqli_query($conex, "INSERT INTO costos(Descripcion_costos, Fecha, Cliente, Cotizacion, CIF) VALUES ('$descripcion','$fecha','$cliente','$cotizacion',$cif)");
    echo $idcostos = mysqli_insert_id($conex);

    //guardar impuestos
    if ($iva != 0) {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','IVA','$iva')");
    } else {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','IVA', 0)");
    }
    if ($ica !== 0) {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','ICA','$ica')");
    } else {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','ICA', 0)");
    }
    if ($rete !== 0) {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','RETE','$rete')");
    } else {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','RETE', 0)");
    }
    if ($utilidad !== 0) {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','UTILIDAD','$utilidad')");
    } else {
        $queryimpuesto = mysqli_query($conex, "INSERT INTO impuestoscostos(ID_COSTOS, Impuestos, Valor_impuesto) VALUES ('$idcostos','UTILIDAD', 0)");
    }
    // guardar tela
    $querytela = mysqli_query($conex, "SELECT * FROM detatemptelas");
    $resultela = mysqli_num_rows($querytela);
    if ($resultela > 0) {
        while ($arreglo = mysqli_fetch_assoc($querytela)) {
            $nomtela = $arreglo['Nombre_tela'];
            $precio = $arreglo['Precio_tela'];
            $cantidad = $arreglo['Consumo'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallestela(ID_COSTOS, TELA, Precio, Cantidad, Costo) VALUES ('$idcostos','$nomtela','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatemptelas");
    };
    // guardar cuero
    $querycuero = mysqli_query($conex, "SELECT * FROM detatempcuero");
    $resultcuero = mysqli_num_rows($querycuero);
    if ($resultcuero > 0) {

        while ($arreglo = mysqli_fetch_assoc($querycuero)) {
            $nomcuero = $arreglo['Descripcion_cuero'];
            $preciocuero = $arreglo['Precio_cuero'];
            $nomtroquel = $arreglo['Troquel'];
            $dcm = $arreglo['dcm'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallescuero(ID_COSTOS, CUERO, Precio, TROQUEL, DCM, Cantidad, Costo) VALUES ('$idcostos','$nomcuero','$preciocuero','$nomtroquel','$dcm','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempcuero");
    };
    //guardar insumo
    $queryinsumo = mysqli_query($conex, "SELECT * FROM detatempinsumos");
    $resultinsumo = mysqli_num_rows($queryinsumo);
    if ($resultinsumo > 0) {

        while ($arreglo = mysqli_fetch_assoc($queryinsumo)) {
            $nominsumo = $arreglo['Descripcion_insumo'];
            $proveedor = $arreglo['proveedor'];
            $precio = $arreglo['Valor_uni'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallesinsumos(ID_COSTOS, INSUMO, Proveedor, Precio, Cantidad, Costo) VALUES ('$idcostos','$nominsumo','$proveedor','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempinsumos");
    };
    // guardar sublimación
    $querysublimacion = mysqli_query($conex, "SELECT * FROM detatempsublimacion");
    $resultsublimacion = mysqli_num_rows($querysublimacion);
    if ($resultsublimacion > 0) {

        while ($arreglo = mysqli_fetch_assoc($querysublimacion)) {
            $nomsublimacion = $arreglo['Proveedor_sublimacion'];
            $metro = $arreglo['Precio_metro'];
            $precio = $arreglo['Valor_uni'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallessublimacion(ID_COSTOS, SUBLIMACION, Metro, Precio, Cantidad, Costo) VALUES ('$idcostos','$nomsublimacion',$metro,'$precio',$cantidad,'$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempsublimacion");
    };
    // guardar corte manual
    $querycortemanual = mysqli_query($conex, "SELECT * FROM detatempcortemanual");
    $resultcortemanual = mysqli_num_rows($querycortemanual);
    if ($resultcortemanual > 0) {

        while ($arreglo = mysqli_fetch_assoc($querycortemanual)) {
            $codigo = $arreglo['Codigo'];
            $ancho = $arreglo['Media_ancho'];
            $largo = $arreglo['Media_largo'];
            $precio = $arreglo['Valor_uni'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallescortemanual(ID_COSTOS, CORTEMANUAL, Ancho, Largo, Precio, Cantidad, Costo) VALUES ('$idcostos','$codigo','$ancho','$largo','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempcortemanual");
    };
    //guardar confección
    $queryconfeccion = mysqli_query($conex, "SELECT * FROM detatempconfeccion");
    $resultconfeccion = mysqli_num_rows($queryconfeccion);
    if ($resultconfeccion > 0) {

        while ($arreglo = mysqli_fetch_assoc($queryconfeccion)) {
            $confeccion = $arreglo['Descripcion'];
            $precio = $arreglo['Valor'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallesconfeccion(ID_COSTOS, CONFECCION, Precio, Cantidad, Costo) VALUES ('$idcostos','$confeccion','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempconfeccion");
    };
    //guardar terminación
    $queryterminacion = mysqli_query($conex, "SELECT * FROM detatempterminacion");
    $resultterminacion = mysqli_num_rows($queryterminacion);
    if ($resultterminacion > 0) {

        while ($arreglo = mysqli_fetch_assoc($queryterminacion)) {
            $terminacion = $arreglo['Descripcion'];
            $precio = $arreglo['Valor'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallesterminacion(ID_COSTOS, TERMINACION, Precio, Cantidad, Costo) VALUES ('$idcostos','$terminacion','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempterminacion");
    };
    // guardar entretelado
    $queryentretelado = mysqli_query($conex, "SELECT * FROM detatempentretelado");
    $resultentretelado = mysqli_num_rows($queryentretelado);
    if ($resultentretelado > 0) {

        while ($arreglo = mysqli_fetch_assoc($queryentretelado)) {
            $entretelado = $arreglo['Descripcion'];
            $precio = $arreglo['Valor'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallesentretelado(ID_COSTOS, ENTRETELADO, Precio, Cantidad, Costo) VALUES ('$idcostos','$entretelado','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempentretelado");
    };
    // guardar corte digital
    $querycortedigital = mysqli_query($conex, "SELECT * FROM detatempcortedigital");
    $resultcortedigital = mysqli_num_rows($querycortedigital);
    if ($resultcortedigital > 0) {
        while ($arreglo = mysqli_fetch_assoc($querycortedigital)) {
            $cortedigital = $arreglo['Descripcion'];
            $precio = $arreglo['Valor'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallescortedigital(ID_COSTOS, CORTEDIGITAL, Precio, Cantidad, Costo) VALUES ('$idcostos','$cortedigital','$precio','$cantidad','$costo')");
        }
        $query = mysqli_query($conex, "DELETE FROM detatempcortedigital");
    };
    // guardar laser
    $querylaser = mysqli_query($conex, "SELECT * FROM detatemplaser");
    $resultlaser = mysqli_num_rows($querylaser);
    if ($resultlaser > 0) {
        while ($arreglo = mysqli_fetch_assoc($querylaser)) {
            $laser = $arreglo['Nombre'];
            $descripcion = $arreglo['Descripcion'];
            $precio = $arreglo['Valor'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detalleslaser(ID_COSTOS, LASER, Descripcion, Precio, Cantidad, Costo) VALUES ('$idcostos','$laser','$descripcion','$precio','$cantidad','$costo')");
            $query = mysqli_query($conex, "DELETE FROM detatemplaser");
        };
    };
    // guardar bordado
    $querybordado  = mysqli_query($conex, "SELECT * FROM detatempbordado");
    $resultbordado = mysqli_num_rows($querybordado);
    if ($resultbordado > 0) {
        while ($arreglo = mysqli_fetch_assoc($querybordado)) {
            $bordado = $arreglo['Nombre'];
            $descripcion = $arreglo['Descripcion'];
            $precio = $arreglo['Valor'];
            $cantidad = $arreglo['Cantidad'];
            $costo = $arreglo['Costo'];
            $queryde = mysqli_query($conex, "INSERT INTO detallesbordado(ID_COSTOS, BORDADO, Descripcion, Precio, Cantidad, Costo) VALUES ('$idcostos','$bordado','$descripcion','$precio','$cantidad','$costo')");
            $query = mysqli_query($conex, "DELETE FROM detatempbordado");
        };
    };
}


//REGISTROS COSTOS
// extraer datos de hojas de costos
if ($_POST['action'] == 'serchForDetalleCostos') {
    $consultar = mysqli_query($conex, "SELECT * FROM costos");
    $result = mysqli_num_rows($consultar);

    $detalleTabla = '';
    $total = 0;
    $arrayData = array();

    if ($result > 0) {
        $detalleTabla .='
        <table class="tb">
        <tr>
        <th>Descripcion</th>
        <th>Fecha</th>
        <th>Cliente</th>
        <th>Cotización</th>
        <th>TOTAL</th>
        <th>ACCIONES</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($consultar)) {
            $idcostos = $data['Id_costos'];
            $detalleTabla .= '
            <tr class="item">
                <td class="item__items">' . $data['Descripcion_costos'] . '</td>
                <td class="item__items">' . $data['Fecha'] . '</td>
                <td class="item__items">' . $data['Cliente'] . '</td>
                <td class="item__items">' . $data['Cotizacion'] . '</td>
                <td class="item__items">' . $data['Total_impuesto'] . '</td>
                <td class="item__items">
                <a href="factura/generaFactura.php?f=' . $idcostos . '" class="btndownload"><img src="src/download.png" alt="descargar" class="svg svg--download"></a>
                <a href="eliminar/elimcostos.php?id=' . $idcostos . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                </td>
            </tr>
            ';
        }
        $detalleTabla .='
        </table>
        ';
        $arrayData['detalle'] = $detalleTabla;

        echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);
    } else {
        echo 'error';
    }
    mysqli_close($conex);

    exit;
}
// buscar costos por fecha
if ($_POST['action'] == 'searchCostos') {
    $detalleTabla = "";
    $arrayData = array();
    if (isset($_POST['date'])) {
        $q = mysqli_real_escape_string($conex, $_POST['date']);
        $query = "SELECT * FROM costos WHERE Fecha LIKE '$q' ";
    }
    if($_POST['date'] == ''){
        $query = "SELECT * FROM costos";
        }
    $resultado = mysqli_query($conex, $query);

    if ($resultado->num_rows > 0) {
        $detalleTabla .='
        <table class="tb">
        <tr>
        <th>Descripcion</th>
        <th>Fecha</th>
        <th>Cliente</th>
        <th>Cotización</th>
        <th>TOTAL</th>
        <th>ACCIONES</th>
        </tr>
        ';
        while ($data = mysqli_fetch_assoc($resultado)) {
            $idcostos = $data['Id_costos'];
            $detalleTabla .= '
            <tr class="item">
                <td class="item__items">' . $data['Descripcion_costos'] . '</td>
                <td class="item__items">' . $data['Fecha'] . '</td>
                <td class="item__items">' . $data['Cliente'] . '</td>
                <td class="item__items">' . $data['Cotizacion'] . '</td>
                <td class="item__items">' . $data['Total_impuesto'] . '</td>
                <td class="item__items">
                <a href="factura/generaFactura.php?f=' . $idcostos . '" class="btndownload"><img src="src/download.png" alt="descargar" class="svg svg--download"></a>
                <a href="eliminar/elimcostos.php?id=' . $idcostos . '" class="btnborrar" onclick="confirmacion();"><img src="src/svg/delete.svg" alt="borrar" class="svg svg--delete"></a>
                </td>
            </tr>
            ';
        }
        $detalleTabla .='
        </table>
        ';
    } else {

        $detalleTabla .= "<h1 class='title'>No se encontro Hoja de Costos</h1>";
    }

    $arrayData['detalle'] = $detalleTabla;

    echo json_encode($arrayData, JSON_UNESCAPED_UNICODE);

    mysqli_close($conex);
}