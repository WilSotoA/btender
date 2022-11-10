<?php
	include "../include/conexion.php";
	require_once '../dompdf/vendor/autoload.php';
	session_start();
	error_reporting(0);
	if ($_SESSION['Id'] == '' || $_SESSION['Id'] == null) {
		header('location:login.php');
		die();
	}
	use Dompdf\Dompdf;
	$noCosto = $_REQUEST['f'];
	 if(empty($noCosto))
	{
		echo "No es posible generar la factura.";
	}else{

		//datos hoja de costos
		$querycostos = mysqli_query($conex, "SELECT * FROM costos WHERE Id_costos = '$noCosto'");
		$result = mysqli_num_rows($querycostos);
		if( $result > 0){
			$arreglocostos = mysqli_fetch_assoc($querycostos);
		}	
		// datos utilidad
		$queryimpuestos = mysqli_query($conex, "SELECT * FROM impuestoscostos WHERE ID_COSTOS = '$noCosto' AND Impuestos LIKE 'UTILIDAD' ");
		$resultimpuestos = mysqli_num_rows($queryimpuestos);
		if( $resultimpuestos > 0){
			$arregloimpuestos = mysqli_fetch_assoc($queryimpuestos);
			$utilidad = $arregloimpuestos['Valor_impuesto'];
		} else {
			$utilidad = 0.00;
		}		
		//datos RETE
		$queryimpuestos = mysqli_query($conex, "SELECT * FROM impuestoscostos WHERE ID_COSTOS = '$noCosto' AND Impuestos LIKE 'RETE' ");
		$resultimpuestos = mysqli_num_rows($queryimpuestos);
		if( $resultimpuestos > 0){
			$arregloimpuestos = mysqli_fetch_assoc($queryimpuestos);
			$rete = $arregloimpuestos['Valor_impuesto'];
		} else {
			$rete = 0.00;
		}
		//datos ICA
		$queryimpuestos = mysqli_query($conex, "SELECT * FROM impuestoscostos WHERE ID_COSTOS = '$noCosto' AND Impuestos LIKE 'ICA' ");
		$resultimpuestos = mysqli_num_rows($queryimpuestos);
		if( $resultimpuestos > 0){
			$arregloimpuestos = mysqli_fetch_assoc($queryimpuestos);
			$ica = $arregloimpuestos['Valor_impuesto'];
		} else {
			$ica = 0.00;
		}		
		// datos IVA
		$queryimpuestos = mysqli_query($conex, "SELECT * FROM impuestoscostos WHERE ID_COSTOS = '$noCosto' AND Impuestos LIKE 'IVA' ");
		$resultimpuestos = mysqli_num_rows($queryimpuestos);
		if( $resultimpuestos > 0){
			$arregloimpuestos = mysqli_fetch_assoc($queryimpuestos);
			$iva = $arregloimpuestos['Valor_impuesto'];
		} else {
			$iva = 0.00;
		}

		// datos telas
		$querytela = mysqli_query($conex, "SELECT * FROM detallestela WHERE ID_COSTOS = '$noCosto'");
		$resultela = mysqli_num_rows($querytela);

		// datos cuero
		$querycuero = mysqli_query($conex, "SELECT * FROM detallescuero WHERE ID_COSTOS = '$noCosto'");
		$resultcuero = mysqli_num_rows($querycuero);

		// datos insumos
		$queryinsumo = mysqli_query($conex, "SELECT * FROM detallesinsumos WHERE ID_COSTOS = '$noCosto'");
		$resultinsumo = mysqli_num_rows($queryinsumo);	
		
		// datos corte manual
		$querycortemanual = mysqli_query($conex, "SELECT * FROM detallescortemanual WHERE ID_COSTOS = '$noCosto'");
		$resultcortemanual = mysqli_num_rows($querycortemanual);	

		// datos sublimación
		$querysublimacion = mysqli_query($conex, "SELECT * FROM detallessublimacion WHERE ID_COSTOS = '$noCosto'");
		$resultsublimacion = mysqli_num_rows($querysublimacion);	
		
		// datos confección
		$queryconfeccion = mysqli_query($conex, "SELECT * FROM detallesconfeccion WHERE ID_COSTOS = '$noCosto'");
		$resultconfeccion = mysqli_num_rows($queryconfeccion);	
		
		// datos terminación
		$queryterminacion = mysqli_query($conex, "SELECT * FROM detallesterminacion WHERE ID_COSTOS = '$noCosto'");
		$resulterminacion = mysqli_num_rows($queryterminacion);	

		// datos entretelado
		$queryentretelado = mysqli_query($conex, "SELECT * FROM detallesentretelado WHERE ID_COSTOS = '$noCosto'");
		$resultentretelado = mysqli_num_rows($queryentretelado);	

		// datos corte digital
		$querycortedigital = mysqli_query($conex, "SELECT * FROM detallescortedigital WHERE ID_COSTOS = '$noCosto'");
		$resultcortedigital = mysqli_num_rows($querycortedigital);		
		
		// datos laser
		$querylaser = mysqli_query($conex, "SELECT * FROM detalleslaser WHERE ID_COSTOS = '$noCosto'");
		$resultlaser = mysqli_num_rows($querylaser);	

		// datos bordado
		$querybordado = mysqli_query($conex, "SELECT * FROM detallesbordado WHERE ID_COSTOS = '$noCosto'");
		$resultbordado = mysqli_num_rows($querybordado);	

			ob_start();
		    include(dirname(__FILE__).'/factura.php');
		    $html = ob_get_clean();
			// instantiate and use the dompdf class
			$dompdf = new Dompdf();

			$options = $dompdf->getOptions();
			$options ->set(array('isRemoteEnabled' => true));
			$dompdf->setOptions($options);
			$dompdf->loadHtml($html);
			// (Optional) Setup the paper size and orientation
			$dompdf->setPaper('letter', 'portrait');
			// Render the HTML as PDF
			$dompdf->render();
			// Output the generated PDF to Browser
			$dompdf->stream('HojadeCosto_'.$noCosto.'.pdf',array('Attachment'=> false));
			exit;
		}
