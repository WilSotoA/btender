<?php
include "include/conexion.php";
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="author" content="Wilmer Soto">
    <meta name="keywords" content="btender, BTENDER, Btender, Facturación">
    <meta name="copyright" content="© Derechos reservados B●TENDER">
    <meta name="description" content="Sistema de información B●TENDER">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoja de Costos B●TENDER</title>
    <link rel="stylesheet" href="css/costos.css">
    
</head>

<body>
    <div class="container__back">
        <a href="#" class="back">Regresar</a>
    </div>
    <!-- modales -->
    <section class="modal modal--telas">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione la Tela</h1>
            <a href="#" class="modal__btn">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchtela" id="searchtela" placeholder="Ingrese el nombre de la tela">
            </div>
            <div id="modal__telas" class="modal__telas">
            </div>
        </div>
    </section>
    <section class="modal modal--cueros">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione el Cuero</h1>
            <a href="#" class="modal__btn modal__btn--cueros">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchcuero" id="searchcuero" placeholder="Ingrese el nombre del cuero">
            </div>
            <div id="modal__cueros" class="modal__cueros">
            </div>
        </div>
    </section>
    <section class="modal modal--troquel">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione el Troquel</h1>
            <a href="#" class="modal__btn modal__btn--troquel">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchtroquel" id="searchtroquel" placeholder="Ingrese el nombre del troquel">
            </div>
            <div id="modal__troquel" class="modal__troquel">
            </div>
        </div>
    </section>
    <section class="modal modal--insumos">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione el Insumo</h1>
            <a href="#" class="modal__btn modal__btn--insumos">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchinsumo" id="searchinsumo" placeholder="Ingrese descripción del insumo">
            </div>
            <div id="modal__insumos" class="modal__insumos">
            </div>
        </div>
    </section>
    <section class="modal modal--sublimacion">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Sublimación</h1>
            <a href="#" class="modal__btn modal__btn--sublimacion">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchsublimacion" id="searchsublimacion" placeholder="Ingrese el proveedor de sublimación">
            </div>
            <div id="modal__sublimacion" class="modal__sublimacion">
            </div>
        </div>
    </section>
    <section class="modal modal--cortemanual">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Corte Manual</h1>
            <a href="#" class="modal__btn modal__btn--cortemanual">X</a>
            <div class="container__ipt">
                <input type="number" class="modal__ipt" name="searchcortemanual" id="searchcortemanual" placeholder="Ingrese el codigo del corte manual">
            </div>
            <div id="modal__cortemanual" class="modal__cortemanual">
            </div>
        </div>
    </section>
    <section class="modal modal--confeccion">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Confección</h1>
            <a href="#" class="modal__btn modal__btn--confeccion">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchconfeccion" id="searchconfeccion" placeholder="Ingrese descripción de la confección">
            </div>
            <div id="modal__confeccion" class="modal__confeccion">
            </div>
        </div>
    </section>
    <section class="modal modal--terminacion">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Terminación</h1>
            <a href="#" class="modal__btn modal__btn--terminacion">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchterminacion" id="searchterminacion" placeholder="Ingrese descripción de la terminación">
            </div>
            <div id="modal__terminacion" class="modal__terminacion">
            </div>
        </div>
    </section>
    <section class="modal modal--entretelado">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Entretelado</h1>
            <a href="#" class="modal__btn modal__btn--entretelado">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchentretelado" id="searchentretelado" placeholder="Ingrese descripción de entretelado">
            </div>
            <div id="modal__entretelado" class="modal__entretelado">
            </div>
        </div>
    </section>
    <section class="modal modal--cortedigital">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Corte Digital</h1>
            <a href="#" class="modal__btn modal__btn--cortedigital">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchcortedigital" id="searchcortedigital" placeholder="Ingrese la pieza del corte digital">
            </div>
            <div id="modal__cortedigital" class="modal__cortedigital">
            </div>
        </div>
    </section>
    <section class="modal modal--laser">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Laser</h1>
            <a href="#" class="modal__btn modal__btn--laser">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchlaser" id="searchlaser" placeholder="Ingrese el nombre del laser">
            </div>
            <div id="modal__laser" class="modal__laser">
            </div>
        </div>
    </section>
    <section class="modal modal--bordado">
        <div class="modal__container">
            <h1 class="modal__title">Seleccione Bordado</h1>
            <a href="#" class="modal__btn modal__btn--bordado">X</a>
            <div class="container__ipt">
                <input type="text" class="modal__ipt" name="searchbordado" id="searchbordado" placeholder="Ingrese el nombre del bordado">
            </div>
            <div id="modal__bordado" class="modal__bordado">
            </div>
        </div>
    </section>
    <!-- costos-->
    <h1 class="title">Hoja de Costos</h1>
    <form class="form" id="form" method="post">
        <section class="factura">
            <div class="item__factura">
                <label for="descripfactura">Descripción <span class="required"> *</span></label>
                <input class="ipt__factura" type="text" name="descripfactura" id="descripfactura" placeholder="Ingrese Descripción" required>
            </div>
            <div class="item__factura">
                <label for="fecha">Fecha <span class="required"> *</span></label>
                <input class="ipt__factura" type="date" name="fecha" id="fecha" placeholder="Ingrese la fecha" required>
            </div>
            <div class="item__factura">
                <label for="cliente">Cliente <span class="required"> *</span></label>
                <input class="ipt__factura" type="text" name="cliente" id="cliente" placeholder="Ingrese Cliente" required>
            </div>
            <div class="item__factura">
                <label for="cotizacion">Cotización <span class="required"> *</span></label>
                <input class="ipt__factura" type="number" name="cotizacion" id="cotizacion" placeholder="Ingrese Cotización" required>
            </div>
            <h1 class="title">Impuestos</h1>
            <div class="item__factura">
                <label for="cif">CIF</label>
                    <input type="number" name="cif" id="cif" class="ipt__factura" placeholder="$0">
            </div>
            <div class="item__factura">
                <label for="utilidad">UTILIDAD</label>
                    <input type="number" name="utilidad" id="utilidad" class="ipt__factura" placeholder="0%">
            </div>
            <div class="item__factura">
                <label for="iva">IVA</label>
                <select name="iva" id="iva" class="list__factura">
                <option value="0" class="option__procesos">0%</option>
                    <?php
                    $sql = mysqli_query($conex, "SELECT * FROM impuestos where Impuesto = 'IVA'");
                    $result = mysqli_num_rows($sql);
                    if ($result > 0) {
                        while ($proceso = mysqli_fetch_assoc($sql)) {
                            echo '<option value="' . $proceso['Valor_impuesto'] . '">' .$proceso['Valor_impuesto'].'%</option>';
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="item__factura">
                <label for="ica">ICA</label>
                <select name="ica" id="ica" class="list__factura">
                <option value="0" class="option__procesos">0%</option>
                    <?php
                    $sql = mysqli_query($conex, "SELECT * FROM impuestos where Impuesto = 'ICA'");
                    $result = mysqli_num_rows($sql);
                    if ($result > 0) {
                        while ($proceso = mysqli_fetch_assoc($sql)) {
                            echo '<option value="' . $proceso['Valor_impuesto'] . '">' .$proceso['Valor_impuesto'].'%</option>';
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="item__factura">
                <label for="rete">RETE</label>
                <select name="rete" id="rete" class="list__factura">
                    <option value="0" class="option__procesos">0%</option>
                    <?php
                    $sql = mysqli_query($conex, "SELECT * FROM impuestos where Impuesto = 'RETE'");
                    $result = mysqli_num_rows($sql);
                    if ($result > 0) {
                        while ($proceso = mysqli_fetch_assoc($sql)) {
                            echo '<option value="' . $proceso['Valor_impuesto'] . '">' .$proceso['Valor_impuesto']. '%</option>';
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="container__btn">
                <input type="button" value="Facturar" id="facturar" class="btn__factura btn__factura--facturar">
                <a href="#" id="cancelar" class="btn__factura btn__factura--cancelar">Cancelar</a>
            </div>
        </section>
        <!-- detalles costos -->
        <h1 class="title">Materia Prima</h1>
        <section class="materiaprima">
            <!-- telas -->
            <table class="tb tbtela">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">TELAS</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Consumo</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="nomtela" id="nomtela"><a href="#" id="buscar--telas" class="buscar buscar--telas"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="preciotela" class="item__items">0</td>
                        <td class="item__items"><input type="text" class="ipt__item" name="cantela" id="cantela" value="0" min="1" disabled></td>
                        <td id="costo" class="item__items">0</td>
                        <td class="prods"><a href="#" id="aggtela" class="agg aggtela"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Consumo</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detatela" class="tbody">
                    <!-- contenido ajax -->
                </tbody>
                <tfoot id="telatotal" class="tfoot">
                    <!-- contenido ajax -->
                </tfoot>
            </table>
            <!-- cueros -->
            <table class="tb tbcuero">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">CUEROS</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Troquel</th>
                        <th>Consumo</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="nomcuero" id="nomcuero"><a href="#" id="buscar--cueros" class="buscar buscar--cueros"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="preciocuero" class="item__items">0</td>
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="nomtroquel" id="nomtroquel"><a href="#" id="buscar--troquel" class="buscar buscar--troquel"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="consumotroquel" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantcuero" id="cantcuero" value="0" min="1" disabled></td>
                        <td id="costo--cuero" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggcuero" class="agg aggcuero"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Troquel</th>
                        <th>Consumo</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detacuero" class="tbody">
                    <!-- contenido ajax tela-->
                </tbody>
                <tfoot id="cuerototal" class="tfoot">
                    <!-- contenido ajax cuero -->

                </tfoot>
            </table>
            <!-- insumos -->
            <table class="tb tbinsumos">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">INSUMOS</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Proveedor</th>
                        <th>Valor Uni.</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="nominsumo" id="nominsumo"><a href="#" id="buscar--insumo" class="buscar buscar--insumo"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="proveedorinsumo" class="item__items">--</td>
                        <td id="precioinsumo" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantinsumo" id="cantinsumo" value="0" min="1" disabled></td>
                        <td id="costo--insumo" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="agginsumo" class="agg agginsumo"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Proveedor</th>
                        <th>Valor Uni.</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detainsumo" class="tbody">
                    <!-- contenido ajax insumo-->
                </tbody>
                <tfoot id="insumototal" class="tfoot">
                    <!-- contenido ajax cuero -->

                </tfoot>
            </table>

            <!-- procesos -->
            <div class="procesos">
                <h3 class="procesos__title">Selecccione el Proceso</h3>
                <select name="procesos" id="procesos" class="list__procesos">
                    <option value="0" class="option__procesos">Seleccione</option>
                    <?php
                    $sql = mysqli_query($conex, "SELECT * FROM procesos");
                    $result = mysqli_num_rows($sql);
                    if ($result > 0) {
                        while ($proceso = mysqli_fetch_assoc($sql)) {
                            echo '<option value="' . $proceso['Id_proceso'] . '">' . $proceso['Nombre_proceso'] . '</option>';
                        }
                    }
                    ?>
                </select>
            </div>

            <!-- sublimación -->
            <table class="tb tbprocesos tbsublimacion">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">Sublimación</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Proveedor</th>
                        <th>Precio/Metro</th>
                        <th>Valor Uni.</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="provsublimacion" id="provsublimacion"><a href="#" id="buscar--sublimacion" class="buscar buscar--sublimacion"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="metrosublimacion" class="item__items">0</td>
                        <td id="preciosublimacion" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantsublimacion" id="cantsublimacion" value="0" min="1" disabled></td>
                        <td id="costo--sublimacion" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggsublimacion" class="agg aggsublimacion"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>
            <table class="tb tbprocesos tbdetasublimacion" id="tbdetasublimacion">
                <thead>
                    <tr class="tr__title">
                        <th colspan="6">Sublimación</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Proveedor</th>
                        <th>Valor Uni.</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detasublimacion" class="tbody">
                    <!-- contenido ajax sublimacion-->
                </tbody>
                <tfoot id="sublimaciontotal" class="tfoot">
                    <!-- contenido ajax sublimacion -->

                </tfoot>
            </table>

            <!-- Corte Manual -->
            <table class="tb tbprocesos tbcortemanual">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="7">Corte Manual</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Codigo</th>
                        <th>Medida Ancho</th>
                        <th>Medida Largo</th>
                        <th>Valor Uni.</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="codigocortemanual" id="codigocortemanual"><a href="#" id="buscar--cortemanual" class="buscar buscar--cortemanual"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="anchocortemanual" class="item__items">0</td>
                        <td id="largocortemanual" class="item__items">0</td>
                        <td id="preciocortemanual" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantcortemanual" id="cantcortemanual" value="0" min="1" disabled></td>
                        <td id="costo--cortemanual" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggcortemanual" class="agg aggcortemanual"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>
            <table class="tb tbprocesos tbdetacortemanual" id="tbdetacortemanual">
                <thead>
                    <tr class="tr__title">
                        <th colspan="7">Corte Manual</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Codigo</th>
                        <th>Medida Ancho</th>
                        <th>Medida Largo</th>
                        <th>Valor Uni.</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detacortemanual" class="tbody">
                    <!-- contenido ajax cortemanual-->
                </tbody>
                <tfoot id="cortemanualtotal" class="tfoot">
                    <!-- contenido ajax cortemanual -->

                </tfoot>
            </table>

            <!-- Confección -->
            <table class="tb tbprocesos tbconfeccion">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Confección</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="descripcionconfeccion" id="descripcionconfeccion"><a href="#" id="buscar--confeccion" class="buscar buscar--confeccion"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="precioconfeccion" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantconfeccion" id="cantconfeccion" value="0" min="1" disabled></td>
                        <td id="costo--confeccion" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggconfeccion" class="agg aggconfeccion"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>
            <table class="tb tbprocesos tbdetaconfeccion" id="tbdetaconfeccion">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Confección</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detaconfeccion" class="tbody">
                    <!-- contenido ajax confección-->
                </tbody>
                <tfoot id="confecciontotal" class="tfoot">
                    <!-- contenido ajax confección -->

                </tfoot>
            </table>

            <!-- terminación -->
            <table class="tb tbprocesos tbterminacion">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Terminación</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="descripcionterminacion" id="descripcionterminacion"><a href="#" id="buscar--terminacion" class="buscar buscar--terminacion"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="precioterminacion" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="canterminacion" id="canterminacion" value="0" min="1" disabled></td>
                        <td id="costo--terminacion" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggterminacion" class="agg aggterminacion"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>
            <table class="tb tbprocesos tbdetaterminacion" id="tbdetaterminacion">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Terminación</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detaterminacion" class="tbody">
                    <!-- contenido ajax terminación-->
                </tbody>
                <tfoot id="terminaciontotal" class="tfoot">
                    <!-- contenido ajax terminación -->

                </tfoot>
            </table>

            <!-- entretelado -->
            <table class="tb tbprocesos tbentretelado">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Entretelado</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="descripcionentretelado" id="descripcionentretelado"><a href="#" id="buscar--entretelado" class="buscar buscar--entretelado"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="precioentretelado" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantentretelado" id="cantentretelado" value="0" min="1" disabled></td>
                        <td id="costo--entretelado" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggentretelado" class="agg aggentretelado"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>
            <table class="tb tbprocesos tbdetaentretelado" id="tbdetaentretelado">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Entretelado</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detaentretelado" class="tbody">
                    <!-- contenido ajax entretelado -->
                </tbody>
                <tfoot id="entreteladototal" class="tfoot">
                    <!-- contenido ajax entretelado -->

                </tfoot>
            </table>

            <!-- Corte Digital -->
            <table class="tb tbprocesos tbcortedigital">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Corte Digital</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Pieza</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="descripcioncortedigital" id="descripcioncortedigital"><a href="#" id="buscar--cortedigital" class="buscar buscar--cortedigital"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="preciocortedigital" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantcortedigital" id="cantcortedigital" value="0" min="1" disabled></td>
                        <td id="costo--cortedigital" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggcortedigital" class="agg aggcortedigital"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>

            <table class="tb tbprocesos tbdetacortedigital" id="tbdetacortedigital">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="5">Corte Digital</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Pieza</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detacortedigital" class="tbody">
                    <!-- contenido ajax corte digital -->
                </tbody>
                <tfoot id="cortedigitaltotal" class="tfoot">
                    <!-- contenido ajax corte digital -->

                </tfoot>
            </table>

            <!-- Laser -->
            <table class="tb tbprocesos tblaser">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">Laser</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="nombrelaser" id="nombrelaser"><a href="#" id="buscar--laser" class="buscar buscar--laser"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="descripcionlaser" class="item__items">--</td>
                        <td id="preciolaser" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantlaser" id="cantlaser" value="0" min="1" disabled></td>
                        <td id="costo--laser" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="agglaser" class="agg agglaser"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>

            <table class="tb tbprocesos tbdetalaser" id="tbdetalaser">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">Laser</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detalaser" class="tbody">
                    <!-- contenido ajax laser -->
                </tbody>
                <tfoot id="lasertotal" class="tfoot">
                    <!-- contenido ajax laser -->

                </tfoot>
            </table>
            <!-- Bordado -->
            <table class="tb tbprocesos tbbordado">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">Bordado</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                    <tr class="item">
                        <td class="item__items item__items--search"><input type="text" class="ipt__item" name="nombrebordado" id="nombrebordado"><a href="#" id="buscar--bordado" class="buscar buscar--bordado"><img src="src/svg/search.svg" alt="Buscar" class="svg svg--search"></a></td>
                        <td id="descripcionbordado" class="item__items">--</td>
                        <td id="preciobordado" class="item__items">0</td>
                        <td><input type="text" class="ipt__item" name="cantbordado" id="cantbordado" value="0" min="1" disabled></td>
                        <td id="costo--bordado" class="item__items">0</td>
                        <td class="item__items"><a href="#" id="aggbordado" class="agg aggbordado"><img src="src/svg/add.svg" alt="Agregar" class="svg svg--add"></a></td>
                    </tr>
                </thead>
            </table>

            <table class="tb tbprocesos tbdetabordado" id="tbdetabordado">
                <thead class="thead">
                    <tr class="tr__title">
                        <th colspan="6">Bordado</th>
                    </tr>
                    <tr class="tcabeza">
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Cantidad</th>
                        <th>Costo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody id="detabordado" class="tbody">
                    <!-- contenido ajax bordado -->
                </tbody>
                <tfoot id="bordadototal" class="tfoot">
                    <!-- contenido ajax bordado -->

                </tfoot>
            </table>

        </section>
        <footer class="copy">
            <small class="textcopy">&copy; 2022 <b>B&bull;TENDER</b> - Todos los Derechos Reservados. ---- DISEÑADO POR: WILMER S.</small>
        </footer>

        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="js/factura.js"></script>
        <script>
            function confirmacion(e) {
                if (confirm("¿Está seguro que desea eliminar este registro?")) {
                    return true;
                } else {
                    event.preventDefault();
                }
            }
        </script>
        <script>
            $(document).ready(function() {
                serchForDetalle();
                serchForDetalleCuero();
                serchForDetalleInsumo();
                serchForDetalleSublimacion();
                serchForDetalleCorteManual();
                serchForDetalleConfeccion();
                serchForDetalleTerminacion();
                serchForDetalleEntretelado();
                serchForDetalleCorteDigital();
                serchForDetalleLaser();
                serchForDetalleBordado();
                });
        </script>
    </form>
</body>

</html>