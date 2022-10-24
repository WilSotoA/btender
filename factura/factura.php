<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Hoja de Costos B●TENDER</title>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/BTENDER/css/style.css">
	<link rel="shortcut icon" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/BTENDER/src/favicon.png" type="image/x-icon">
</head>

<body>
	<div class="pdf" id="page_pdf">
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
		</table>
		<?php
		if ($resultela > 0) {
		?>
			<table class="detalle__factura" id="detalle_tela">
				<tr class="head_detalle">
					<th class="items_detalle" colspan="4">TELA</th>
				</tr>
				<thead>
					<tr class="row__head">
						<th class="items__detalle head">Nombre</th>
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Cant.</th>
						<th class="items__detalle color">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querytela)) {
						$totaltela = $totaltela + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['TELA']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__total">
						<td class="items__detalle item__detalle--totales" colspan="6">TOTAL TELA: <?php echo $totaltela ?></td>
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
						<th class="items__detalle head">Nombre</th>
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Troquel</th>
						<th class="items__detalle color">DCM</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querycuero)) {
						$totalcuero = $totalcuero + $arreglodeta['Costo'];
					?>
						<tr class="row__detalle prueba">
							<td class="items__detalle"><?php echo $arreglodeta['CUERO']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['TROQUEL']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['DCM']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__total">
						<td class="items__detalle item__detalle--totales" colspan="6">TOTAL CUERO: <?php echo $totalcuero ?></td>
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
						<th class="items__detalle head">Descripción</th>
						<th class="items__detalle color">Proveedor</th>
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
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
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="6">TOTAL INSUMO: <?php echo $totalinsumo ?></td>
					</tr>
				</tfoot>
			</table>
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
						<th class="items__detalle head">Codigo</th>
						<th class="items__detalle color">Ancho</th>
						<th class="items__detalle color">Largo</th>
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
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
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="6">TOTAL CORTE MANUAL: <?php echo $totalcortemanual ?></td>
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
						<th class="items__detalle head">Proveedor</th>
						<th class="items__detalle color">Metro</th>
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
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
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__total">
						<td class="items__detalle item__detalle--totales" colspan="5">TOTAL SUBLIMACIÓN: <?php echo $totalsublimacion ?></td>
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
						<th class="items__detalle head">Descripción</th>
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryconfeccion)) {
						$totalconfeccion = $totalconfeccion + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['CONFECCION']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL CONFECCIÓN: <?php echo $totalconfeccion ?></td>
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
						<th class="items__detalle color">Precio</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryterminacion)) {
						$totalterminacion =  $totalterminacion + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['TERMINACION']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL TERMINACIÓN: <?php echo $totalterminacion ?></td>
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
						<th class="items__detalle head">Descripción</th>
						<th class="items__detalle color">Valor Pieza</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($queryentretelado)) {
						$totalentretelado =  $totalentretelado + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['ENTRETELADO']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL ENTRETELADO: <?php echo $totalentretelado ?></td>
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
						<th class="items__detalle color">Valor</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
					</tr>
				</thead>
				<tbody id="detalle_productos">

					<?php
					while ($arreglodeta = mysqli_fetch_assoc($querycortedigital)) {
						$totalcortedigital =  $totalcortedigital + $arreglodeta['Costo'];
					?>
						<tr>
							<td class="items__detalle"><?php echo $arreglodeta['CORTEDIGITAL']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="4">TOTAL CORTE DIGITAL: <?php echo $totalcortedigital ?></td>
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
							<td class="items__detalle color"><?php echo $arreglodeta['Descripcion']; ?></td>
							<td class="items__detalle color"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle color"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle color"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="5">TOTAL LASER: <?php echo $totallaser ?></td>
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
						<th class="items__detalle color">Nombre</th>
						<th class="items__detalle color">Precio Uni.</th>
						<th class="items__detalle color">Cantidad</th>
						<th class="items__detalle color">Costos</th>
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
							<td class="items__detalle"><?php echo $arreglodeta['Precio']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Cantidad']; ?></td>
							<td class="items__detalle"><?php echo $arreglodeta['Costo']; ?></td>
						</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr class="row__detalle">
						<td class="items__detalle item__detalle--totales" colspan="5">TOTAL BORDADO: <?php echo $totalbordado ?></td>
					</tr>
				</tfoot>
			</table>
		<?php
		}
		// subtotal
		$subtotal = round($totaltela + $totalcuero + $totalinsumo + $totalcortemanual + $totalsublimacion + $totalconfeccion + $totalterminacion + $totalentretelado + $totalcortedigital + $totallaser + $totalbordado, 2);
		$sumautilidad = round($subtotal * $utilidad, 2);
		$cif = $arreglocostos['CIF'];
		$totalbruto = $subtotal + $sumautilidad + $cif;
		//rete
		$calcrete = $totalbruto * $rete;
		$sumarete = round($totalbruto + $calcrete, 2);
		$calcica = $totalbruto * $ica;
		$sumaica = round($totalbruto + $calcica, 2);
		$sumaimp = $totalbruto + $calcica + $calcrete;
		$calciva = $sumaimp * $iva;
		$sumaiva = round($sumaimp + $calciva, 2);
		$totalimpuestos = $totalbruto + $calcrete + $calcica + $calciva;
		//total costos
		$Total = $totalbruto;
		//verificar que los campos no esten vaciós		
		$queryverify = mysqli_query($conex, "SELECT * FROM costos WHERE Id_costos = '$noCosto' AND Total_bruto = 0 OR Subtotal = 0 OR Total_impuesto = 0 OR Total = 0");
		$resultverify = mysqli_num_rows($queryverify);
		if ($resultverify > 0) {
			//insertar datos totales
			$queryinsert = mysqli_query($conex, "UPDATE costos SET Total_bruto = '$totalbruto',Subtotal='$subtotal',Total_impuesto= '$totalimpuestos',Total='$Total' WHERE ID_COSTOS = '$noCosto'");
			if ($queryinsert == true) {
				$queryselect = mysqli_query($conex, "SELECT Total_bruto,Subtotal,Total_impuesto,Total FROM costos WHERE ID_COSTOS = '$noCosto'");
				$arrayselect = mysqli_fetch_assoc($queryselect);
				$totalBruto = $arrayselect['Total_bruto'];
				$subTotal = $arrayselect['Subtotal'];
				$Totalimpuesto = $arrayselect['Total_impuesto'];
				$TotalCosto = $arrayselect['Total'];
			}
		} else {
			$queryselect = mysqli_query($conex, "SELECT Total_bruto,Subtotal,Total_impuesto,Total FROM costos WHERE ID_COSTOS = '$noCosto'");
			$arrayselect = mysqli_fetch_assoc($queryselect);
			$totalBruto = $arrayselect['Total_bruto'];
			$subTotal = $arrayselect['Subtotal'];
			$Totalimpuesto = $arrayselect['Total_impuesto'];
			$TotalCosto = $arrayselect['Total'];
		}
		?>
		<table class="total__factura">
			<tr class="row__theadtotal">
				<th class="items__total">SUBTOTAL</th>
				<th class="items__total items__total--totales">$ <?php echo  $subTotal ?></th>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">CIF</td>
				<td class="items__total items__total--totales">$ <?php echo $cif ?></td>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">% Utilidad</td>
				<td class="items__total items__total--totales">$ <?php echo  $sumautilidad ?></td>
			</tr>
			<tr class="row__theadtotal">
				<th class="items__total">TOTAL BRUTO FACTURA (+)</th>
				<th class="items__total items__total--totales">$ <?php echo  $totalBruto ?></th>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">RETE</td>
				<td class="items__total items__total--totales"><?php echo  $sumarete ?></td>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">ICA</td>
				<td class="items__total items__total--totales"><?php echo  $sumaica ?></td>
			</tr>
			<tr class="row_tbodytotal">
				<td class="items__total">IVA</td>
				<td class="items__total items__total--totales"><?php echo  $sumaiva ?></td>
			</tr>
			<tr class="row__theadtotal">
				<th class="items__total">TOTAL IMPUESTOS (=)</th>
				<th class="items__total items__total--totales"><?php echo  $Totalimpuesto ?></th>
			</tr>
			<tr class="row__theadtotal row__theadtotal--total">
				<th class="items__total items__total--total">TOTAL DE COSTOS ( $ ) </th>
				<th class="items__total items__total--totales items__total--total"> $ <?php echo  $TotalCosto ?></th>
			</tr>
		</table>
	</div>
	</div>
</body>

</html>