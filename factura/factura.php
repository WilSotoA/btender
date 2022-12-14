<?php 
// error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Hoja de Costos B●TENDER</title>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/BTENDER/css/style.min.css">
	<link rel="shortcut icon" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/BTENDER/src/favicon.png" type="image/x-icon">
</head>
<body>
	<div class="pdf" id="page_pdf">
		<!-- variables total -->
		<?php
			$totaltela = 0;
			$totalcuero = 0;
			$totalinsumo = 0;
			$totalcortemanual = 0;
			$totalsublimacion = 0;
			$totalconfeccion = 0;
			$totalterminacion = 0;
			$totalentretelado = 0;
			$totalcortedigital = 0;
			$totallaser = 0;
			$totalbordado = 0;
		?>
		<!-- descripcion y logo -->
		<table id="costos_head">
			<tr>
				<td class="logo_factura">
					<div>
						<img src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/BTENDER/src/logo.jpg" alt="Icono">
					</div>
				</td>
				<td class="info_factura">
					<div class="round">
						<span class="h3">Hoja de Costos</span>
						<p class="text_info">No. Hoja Costos: <span class="bolder"><?php echo $arreglocostos['Id_costos']; ?></span></p>
						<p class="text_info">Descripcion: <?php echo $arreglocostos['Descripcion_costos']; ?></p>
						<p class="text_info">Fecha: <?php echo $arreglocostos['Fecha']; ?></p>
						<p class="text_info">Cliente: <?php echo $arreglocostos['Cliente']; ?></p>
						<p class="text_info">Cotización: <?php echo $arreglocostos['Cotizacion']; ?></p>
					</div>
				</td>
			</tr>
			<tr class="parrafo">
				<td colspan="2"><p>&lt;/ &quot;Somos la marca que viste a los mejores&quot; /&gt;</p></td>
			</tr>
		</table>
		<!-- materia prima -->
		<?php
		if ($resultela > 0) {
		?>
			<table class="detalle__factura" id="detalle_tela">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="4">TELA</th>
				</tr>
				<thead>
					<tr class="row__head">
						<th class="items__detalle">Nombre</th>
						<th class="items__detalle">Precio</th>
						<th class="items__detalle">Cant.</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querytela)) {
						$totaltela = $totaltela + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['TELA']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__total">
						<td class="items__detalle item__detalle--totales" colspan="3">TOTAL TELA:</td>
						<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totaltela) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultcuero > 0) {
		?>
			<table class="detalle__factura" id="detalle_cuero">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="6">CUERO</th>
				</tr>
				<thead>
					<tr class="row__head">
						<th class="items__detalle">Nombre</th>
						<th class="items__detalle">Precio</th>
						<th class="items__detalle">Troquel</th>
						<th class="items__detalle">DCM</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querycuero)) {
						$totalcuero = $totalcuero + $arreglodeta['Costo'];
					?>
						<tr class="row__detalle prueba">
							<td class="items__detalle"><?php echo $arreglodeta['CUERO']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['TROQUEL']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['DCM']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__total">
						<td class="items__detalle item__detalle--totales" colspan="5">TOTAL CUERO:</td>
						<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalcuero) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultinsumo > 0) {
		?>
			<table class="detalle__factura" id="detalle_insumos">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="5">INSUMOS</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle">Descripción</th>
						<th class="items__detalle">Proveedor</th>
						<th class="items__detalle">Precio</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">
					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryinsumo)) {
						$totalinsumo = $totalinsumo + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['INSUMO']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Proveedor']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>

					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL INSUMO:</td>					
						<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalinsumo) ?></td>

					</tr>
				</tfoot>
			</table>
			<!-- procesos -->
		<?php
		}
		if ($resultcortemanual > 0) {
		?>
			<table class="detalle__factura" id="detalle_cortemanual">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="6">CORTE MANUAL</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle">Codigo</th>
						<th class="items__detalle">Ancho</th>
						<th class="items__detalle">Largo</th>
						<th class="items__detalle">Precio</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querycortemanual)) {
						$totalcortemanual = $totalcortemanual + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['CORTEMANUAL']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Ancho']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Largo']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
					<td class="items__detalle item__detalle--totales" colspan="5">TOTAL CORTE MANUAL:</td>
					<td class="items__detalle item__detalle--totales">$ <?php echo number_format($totalcortemanual) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultsublimacion > 0) {
		?>
			<table class="detalle__factura" id="detalle_sublimacion">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="5">SUBLIMACIÓN</th>
				</tr>
				<thead>
					<tr class="row__thead">
						<th class="items__detalle">Proveedor</th>
						<th class="items__detalle">Metro</th>
						<th class="items__detalle">Precio</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querysublimacion)) {
						$totalsublimacion = $totalsublimacion + $arreglodeta['Costo'];
					?>
						<tr class="row__detalle">
							<td class="items__detalle"><?php echo $arreglodeta['SUBLIMACION']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Metro']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__total">
					<td class="items__detalle item__detalle--totales" colspan="4">TOTAL SUBLIMACIÓN:</td>
					<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalsublimacion) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultconfeccion > 0) {
		?>
			<table class="detalle__factura" id="detalle_confeccion">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="4">CONFECCIÓN</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle">Descripción</th>
						<th class="items__detalle">Precio</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryconfeccion)) {
						$totalconfeccion = $totalconfeccion + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['CONFECCION']; ?></td>
							<td class="items__detalle"><?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
					<td class="items__detalle item__detalle--totales" colspan="3">TOTAL CONFECCIÓN:</td>
					<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalconfeccion) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resulterminacion > 0) {
		?>
			<table class="detalle__factura" id="detalle_terminacion">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="4">TERMINACIÓN</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle head">Descripción</th>
						<th class="items__detalle ">Precio</th>
						<th class="items__detalle ">Cantidad</th>
						<th class="items__detalle ">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryterminacion)) {
						$totalterminacion =  $totalterminacion + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['TERMINACION']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
					<td class="items__detalle item__detalle--totales" colspan="3">TOTAL TERMINACIÓN:</td>
					<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalterminacion) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultentretelado > 0) {
		?>
			<table class="detalle__factura" id="detalle_entretelado">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="4">ENTRETELADO</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle">Descripción</th>
						<th class="items__detalle">Valor Pieza</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryentretelado)) {
						$totalentretelado =  $totalentretelado + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['ENTRETELADO']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
					<td class="items__detalle item__detalle--totales" colspan="3">TOTAL ENTRETELADO:</td>
					<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalentretelado) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultcortedigital > 0) {
		?>
			<table class="detalle__factura" id="detalle_cortedigital">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="4">CORTE DIGITAL</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle head">Pieza</th>
						<th class="items__detalle ">Valor</th>
						<th class="items__detalle ">Cantidad</th>
						<th class="items__detalle ">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querycortedigital)) {
						$totalcortedigital =  $totalcortedigital + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['CORTEDIGITAL']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="3">TOTAL CORTE DIGITAL:</td>
						<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalcortedigital) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultlaser > 0) {
		?>
			<table class="detalle__factura" id="detalle_laser">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="5">LASER</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle head">Descripción</th>
						<th class="items__detalle">Nombre</th>
						<th class="items__detalle">Precio Uni.</th>
						<th class="items__detalle">Cantidad</th>
						<th class="items__detalle">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querylaser)) {
						$totallaser =  $totallaser + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle head"><?php echo $arreglodeta['LASER']; ?></td>
							<td class="items__detalle "><?php echo $arreglodeta['Descripcion']; ?></td>
							<td class="items__detalle ">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle "><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle ">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL LASER:</td>
						<td class="items__detalle item__detalle--totales">$ <?php echo number_format($totallaser) ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		if ($resultbordado > 0) {
		?>
			<table class="detalle__factura" id="detalle_bordado">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="5">BORDADO</th>
				</tr>
				<thead>
					<tr class="row__detalle">
						<th class="items__detalle head">Descripción</th>
						<th class="items__detalle ">Nombre</th>
						<th class="items__detalle ">Precio Uni.</th>
						<th class="items__detalle ">Cantidad</th>
						<th class="items__detalle ">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querybordado)) {
						$totalbordado =  $totalbordado + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['BORDADO']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Descripcion']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Precio']); ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle">$ <?php echo number_format($arreglodeta['Costo']); ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL BORDADO:</td>
						<td class="items__detalle item__detalle--totales center">$ <?php echo number_format($totalbordado) ?></td>
					</tr>
				</tfoot>
			</table>
			<!-- totales -->
		<?php
		}
		// subtotal
			$subtotal = round($totaltela + $totalcuero + $totalinsumo + $totalcortemanual + $totalsublimacion + $totalconfeccion + $totalterminacion + $totalentretelado + $totalcortedigital + $totallaser + $totalbordado);
			$sumautilidad = round($subtotal * $utilidad);
			$cif = $arreglocostos['CIF'];
			$totalbruto = $subtotal + $sumautilidad + $cif;
			//rete
			$calcrete = $totalbruto * $rete;
			$calcica = $totalbruto * $ica;
			$calciva = $totalbruto * $iva;
			$totalimpuestos = $totalbruto + $calciva;
		//total costos
			$Total = $totalbruto;
			//verificar que los campos no esten vaciós		
			$queryverify = mysqli_query($conex, "SELECT * FROM costos WHERE Id_costos = '$noCosto' AND Total_bruto = 0 OR Subtotal = 0 OR Total_impuesto = 0");
			$resultverify = mysqli_num_rows($queryverify);
			if ($resultverify > 0) {
				//insertar datos totales
				$queryinsert = mysqli_query($conex, "UPDATE costos SET Total_bruto = '$totalbruto',Subtotal='$subtotal',Total_impuesto= '$totalimpuestos' WHERE ID_COSTOS = '$noCosto'");
				if ($queryinsert == true) {
					$queryselect = mysqli_query($conex, "SELECT Total_bruto,Subtotal,Total_impuesto FROM costos WHERE ID_COSTOS = '$noCosto'");
					$arrayselect = mysqli_fetch_assoc($queryselect);
					$totalBruto = $arrayselect['Total_bruto'];
					$subTotal = $arrayselect['Subtotal'];
					$Totalimpuesto = $arrayselect['Total_impuesto'];
				}
			} else {
				$queryselect = mysqli_query($conex, "SELECT Total_bruto,Subtotal,Total_impuesto FROM costos WHERE ID_COSTOS = '$noCosto'");
				$arrayselect = mysqli_fetch_assoc($queryselect);
				$totalBruto = $arrayselect['Total_bruto'];
				$subTotal = $arrayselect['Subtotal'];
				$Totalimpuesto = $arrayselect['Total_impuesto'];
			}
		?>
		<table class="total__factura">
			<tr class="row__theadtotal">
				<th class="items__total">SUBTOTAL</th>
				<th class="items__total items__total--totales">$ <?php echo  number_format($subTotal) ?></th>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">CIF</td>
				<td class="items__total items__total--totales">$ <?php echo number_format($cif) ?></td>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">% Utilidad</td>
				<td class="items__total items__total--totales">$ <?php echo  number_format($sumautilidad) ?></td>
			</tr>
			<tr class="row__theadtotal">
				<th class="items__total">TOTAL BRUTO FACTURA (+)</th>
				<th class="items__total items__total--totales">$ <?php echo  number_format($totalBruto) ?></th>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">RETE</td>
				<td class="items__total items__total--totales">$ <?php echo  number_format($calcrete) ?></td>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">ICA</td>
				<td class="items__total items__total--totales">$ <?php echo  number_format($calcica) ?></td>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">IVA</td>
				<td class="items__total items__total--totales">$ <?php echo  number_format($calciva) ?></td>
			</tr>
			<tr class="row__theadtotal">
				<th class="items__total">TOTAL(=)</th>
				<th class="items__total items__total--totales">$ <?php echo  number_format($Totalimpuesto) ?></th>
			</tr>
		</table>
	</div>
</body>
</html>