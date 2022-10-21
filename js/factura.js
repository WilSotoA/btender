    //abrir ready
  $(document).ready(function () {

    //TELAS
    //buscar telas
    $("#nomtela").keyup (function (e) {
         e.preventDefault();
        var tela = $("#nomtela").val();
        var action = "infoTela";

        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, tela: tela},
          success: function (response) {
            if (response == 0) {
              $("#preciotela").html("0");
              $("#cantela").val("0");
              $("#costo").html("0");
              //bloquear cantidad
              $("#cantela").attr("disabled", "disabled");
              //ocultar boton agregar
              $("#aggtela").slideUp();
            } else {
              var data = $.parseJSON(response);
              $("#nomtela").val(data.Descripcion_tela);
              $("#cantela").val("0");
              $("#preciotela").html(data.Valor_uni);
              $("#costo").html("0");
              //Activar cantidad
              $("#cantela").removeAttr("disabled");
            }
          },
          error: function (error) {},
        });
      });
      //agg telas al modal
    $("#buscar--telas").click(function (e) {
      var action = "buscarTelas";
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action },
        success: function (response) {
          if (response != "error") {
            var info = JSON.parse(response);
                $("#modal__telas").html(info.detalle);

          } else {
            console.log("no data");
          }
        },
        error: function (error) {},
    });
          });
      //buscar registros de tela en modal
      $("#searchtela").keyup(function (e) { 
        var searchtela = $("#searchtela").val();
        var action = "searchTela";
    
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, searchtela: searchtela },
          success: function (response) {
            var info = JSON.parse(response);
            $("#modal__telas").html(info.detalle);
          }
        });
      });

      //validar cantidad de tela antes de agg
      $("#cantela").keyup(function (e) {
        e.preventDefault();

        var preciototal = $(this).val() * $("#preciotela").html();
        $("#costo").html(preciototal);

        //oculta el boton agregar si cantidad menor que 1
        if ($(this).val() < 0 || isNaN($(this).val())) {
          $("#aggtela").slideUp();
        } else {
          $("#aggtela").slideDown();
        }
      });

      //agg tela a detatemp
      $("#aggtela").click(function (e) {
        e.preventDefault();

        if ($("#cantela").val() > 0) {
          var nomtela = $("#nomtela").val();
          var preciotela = $("#preciotela").html();
          var cantela = $("#cantela").val();
          var costo = $("#costo").html();
          var action = "aggTelatemp";

          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
            nomtela: nomtela,
            preciotela: preciotela,
            cantela: cantela,
            costo: costo,
            },
            success: function (response) {
              if (response != "error") {
                var info = JSON.parse(response);
                $("#detatela").html(info.detalle);
                $("#telatotal").html(info.totales);
                $("#nomtela").val("");
                $("#preciotela").html("-");
                $("#cantela").val("0");
                $("#costo").html("0.00");

                //bloquear cantidad
                $("#cantela").attr("disabled", "disabled");

                //ocultar boton agregar
                $("#aggtela").slideUp();
              } else {
                console.log("no data");
              }
            },
            error: function (error) {},
          });
        }
      });
      //insertar tela desde el mdal
      $("#creartela").click(function (e) {  
        e.preventDefault();
        var nomtela = $("#descriptela").val();
        var proveedortela = $("#proveedortela").val();
        var valortela = $("#valortela").val();
        var action = "crearTela";

        if (nomtela.trim() !== '' && proveedortela.trim() !== '' && valortela.trim() !== '') {      
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              nomtela: nomtela,
              proveedortela: proveedortela,
              valortela: valortela
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descriptela").val("");
                $("#proveedortela").val("");
                $("#valortela").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });

      //CUEROS
    //buscar cuero
    $("#nomcuero").keyup(function (e) {
        e.preventDefault();

        var cuero = $(this).val();
        var action = "infoCuero";

        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, cuero: cuero },
          success: function (response) {
            if (response == 0 || response == 'error') {
              $("#preciocuero").html("0");
              //ocultar boton agregar
              $("#aggcuero").slideUp();
            } else {
              var data = $.parseJSON(response);
              $("#nomcuero").val(data.Descripcion_cuero);
              $("#preciocuero").html(data.Valor_uni);
            }
          },
        error: function (error) {},
        });
      });

      //agg datos al modal cuero
      $("#buscar--cueros").click(function (e) {
        var action = "buscarCueros";
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action },
          success: function (response) {
            if (response != "error") {
                  var infoCuero = JSON.parse(response);
                  $("#modal__cueros").html(infoCuero.detalle);
            } else {
              console.log("no data");
            }
          },
          error: function (error) {},
      });
            });
      //buscar registros de cuero en modal
      $("#searchcuero").keyup(function (e) { 
        var searchcuero = $("#searchcuero").val();
        var action = "searchCuero";
    
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, searchcuero: searchcuero },
          success: function (response) {
            var infoCuero = JSON.parse(response);
            $("#modal__cueros").html(infoCuero.detalle);
          }
        });
      });
      //insertar cuero desde el modal
      $("#crearcuero").click(function (e) {  
        e.preventDefault();
        var nomcuero = $("#descripcuero").val();
        var proveedorcuero = $("#proveedorcuero").val();
        var valorcuero = $("#valorcuero").val();
        var action = "crearCuero";

        if (nomcuero.trim() !== '' && proveedorcuero.trim() !== '' && valorcuero.trim() !== '') {      
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              nomcuero: nomcuero,
              proveedorcuero: proveedorcuero,
              valorcuero: valorcuero
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descripcuero").val("");
                $("#proveedorcuero").val("");
                $("#valorcuero").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });      

        //TROQUEL
          //buscar troquel
    $("#nomtroquel").keyup(function (e) {
        e.preventDefault();

        var troquel = $(this).val();
        var action = "infoTroquel";

        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, troquel: troquel },
          success: function (response) {
            if (response == 0 || response == 'error') {
              $("#consumotroquel").html("0");
              //ocultar boton agregar
              $("#aggcuero").slideUp();
            } else {
              var data = $.parseJSON(response);
              $("#nomtroquel").val(data.Nombre_troquel);
              $("#consumotroquel").html(data.DCM);
              $("#costocuero").val("0");
              //Activar cantidad
              $("#cantcuero").removeAttr("disabled");     
            }
          },
        error: function (error) {},
        });
      });
      //agg datos al modal troquel
      $("#buscar--troquel").click(function (e) {
        var action = "buscarTroquel";
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action },
          success: function (response) {
            if (response != "error") {
                  var infoTroquel= JSON.parse(response);
                  $("#modal__troquel").html(infoTroquel.detalle);
            } else {
              console.log("no data");
            }
          },
          error: function (error) {},
      });
            });
      //buscar registros de troquel en modal
      $("#searchtroquel").keyup(function (e) { 
        var searchtroquel = $("#searchtroquel").val();
        var action = "searchTroquel";
    
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, searchtroquel: searchtroquel },
          success: function (response) {
            var infoTroquel= JSON.parse(response);
            $("#modal__troquel").html(infoTroquel.detalle);
          }
        });
      });
         //validar cantidad de cuero antes de agg
      $("#cantcuero").keyup(function (e) {
        e.preventDefault();
        var preciototal = ($("#consumotroquel").html() * $("#preciocuero").html())*$(this).val();
        $("#costo--cuero").html(preciototal);

        //oculta el boton agregar si cantidad menor que 1
        if ($(this).val() < 0 || isNaN($(this).val())) {
          $("#aggcuero").slideUp();
        } else {
          $("#aggcuero").slideDown();
        }
      });
      //agg cuero y troquel a detatemp
      $("#aggcuero").click(function (e) {
        e.preventDefault();

        if ($("#costo--cuero").html() > 0) {
          var nomcuero = $("#nomcuero").val();
          var preciocuero= $("#preciocuero").html();
          var nomtroquel = $("#nomtroquel").val();
          var consumotroquel= $("#consumotroquel").html();
          var cantcuero= $("#cantcuero").val();
          var costocuero= $("#costo--cuero").html();
          var action = "aggCuerotemp";

          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
            nomcuero: nomcuero,
            preciocuero: preciocuero,
            nomtroquel: nomtroquel,
            consumotroquel: consumotroquel,
            cantcuero: cantcuero,
            costocuero: costocuero,
            },
            success: function (response) {
              if (response != "error") {
                var info = JSON.parse(response);
                $("#detacuero").html(info.detalle);
                $("#cuerototal").html(info.totales);
                $("#nomcuero").val("");
                $("#preciocuero").html("-");
                $("#nomtroquel").val("");
                $("#consumotroquel").html("0.00");
                $("#cantcuero").val("0");
                $("#costo--cuero").html("0.00");
                //desactivar cantidad
                $("#cantcuero").attr("disabled", "disabled");
                //ocultar boton agregar
                $("#aggcuero").slideUp();
              } else {
                console.log("no data");
              }
            },
            error: function (error) {},
          });
        }
      });

          //INSUMOS
    //buscar insumos
    $("#nominsumo").keyup (function (e) {
      e.preventDefault();
     var insumo = $("#nominsumo").val();
     var action = "infoInsumo";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, insumo: insumo},
       success: function (response) {
         if (response == 0) {
           $("#proveedorinsumo").html("--");
           $("#cantinsumo").val("0");
           $("#precioinsumo").html("0");
           $("#costo--insumo").html("0");
           //bloquear cantidad
           $("#cantinsumo").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#agginsumo").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#nominsumo").val(data.Descripcion_insumo);
           $("#proveedorinsumo").html(data.Proveedor_insumo);
           $("#cantinsumo").val("0");
           $("#precioinsumo").html(data.Valor_uni);
           $("#costo--insumo").html("0");
           //Activar cantidad
           $("#cantinsumo").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
   //agg insumos al modal
 $("#buscar--insumo").click(function (e) {
   var action = "buscarInsumos";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
          var info = JSON.parse(response);
          $("#modal__insumos").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
      //buscar registros de insumo en modal
      $("#searchinsumo").keyup(function (e) { 
        var searchinsumo = $("#searchinsumo").val();
        var action = "searchInsumo";
    
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, searchinsumo: searchinsumo },
          success: function (response) {
            var info = JSON.parse(response);
            $("#modal__insumos").html(info.detalle);
          }
        });
      });
      //insertar insumo desde el modal
      $("#crearinsumo").click(function (e) {  
        e.preventDefault();
        var proveedorinsumo = $("#proveedorinsumo").val();
        var nominsumo = $("#nominsumo").val();
        var valorinsumo = $("#valorinsumo").val();
        var action = "crearInsumo";

        if (nominsumo.trim() !== '' && proveedorinsumo.trim() !== '' && valorinsumo.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              nominsumo: nominsumo,
              proveedorinsumo: proveedorinsumo,
              valorinsumo: valorinsumo
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descripinsumo").val("");
                $("#proveedorinsumo").val("");
                $("#valorinsumo").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });       
   //validar cantidad de insumos antes de agg
   $("#cantinsumo").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#precioinsumo").html();
     $("#costo--insumo").html(preciototal);

     //oculta el boton agregar si cantidad menor que 1
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#agginsumo").slideUp();
     } else {
       $("#agginsumo").slideDown();
     }
   });
   //agg insumo a detatemp
   $("#agginsumo").click(function (e) {
    e.preventDefault();

    if ($("#cantinsumo").val() > 0) {
      var nominsumo = $("#nominsumo").val();
      var proveedorinsumo = $("#proveedorinsumo").html();
      var precioinsumo = $("#precioinsumo").html();
      var cantinsumo = $("#cantinsumo").val();
      var costoinsumo = $("#costo--insumo").html();
      var action = "aggInsumotemp";

      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: {
          action: action,
        nominsumo: nominsumo,
        proveedorinsumo: proveedorinsumo,
        precioinsumo: precioinsumo,
        cantinsumo: cantinsumo,
        costoinsumo: costoinsumo
        },
        success: function (response) {
          if (response != "error") {
            var info = JSON.parse(response);
            $("#detainsumo").html(info.detalle);
            $("#insumototal").html(info.totales);
            $("#nominsumo").val("");
            $("#proveedorinsumo").html("--");
            $("#precioinsumo").html("0.00");
            $("#cantinsumo").val("0");
            $("#costo--insumo").html("0.00");

            //bloquear cantidad
            $("#cantinsumo").attr("disabled", "disabled");

            //ocultar boton agregar
            $("#agginsumo").slideUp();
          } else {
            console.log("no data");
          }
        },
        error: function (error) {},
      });
    }
  });

  //PROCESOS
  //sublimacion
    //buscar sublimacion
    $("#provsublimacion").keyup (function (e) {
      e.preventDefault();
     var sublimacion = $("#provsublimacion").val();
     var action = "infoSublimacion";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, sublimacion: sublimacion},
       success: function (response) {
         if (response == 0) {
           $("#metrosublimacion").html("1");
           $("#preciosublimacion").html("0");
           $("#cantsublimacion").val("0");
           $("#costo--sublimacion").html("0");
           //bloquear cantidad
           $("#cantsublimacion").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#aggsublimacion").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#provsublimacion").val(data.Proveedores);
           $("#metrosublimacion").html(data.Metro);
           $("#cantsublimacion").val("0");
           $("#preciosublimacion").html(data.Precio);
           $("#costo--sublimacion").html("0");
           //Activar cantidad
           $("#cantsublimacion").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
   //agg sublimacion al modal
 $("#buscar--sublimacion").click(function (e) {
   var action = "buscarSublimacion";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
         var info = JSON.parse(response);
             $("#modal__sublimacion").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar sublimacion en modal
       $("#searchsublimacion").keyup(function (e) { 
        var searchsublimacion = $("#searchsublimacion").val();
        var action = "searchSublimacion";
    
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, searchsublimacion: searchsublimacion },
          success: function (response) {
            var info = JSON.parse(response);
            $("#modal__sublimacion").html(info.detalle);
          }
        });
      });
      //insertar sublimacion desde el modal
      $("#crearsublimacion").click(function (e) {  
        e.preventDefault();
        var proveedorsublimacion = $("#proveedorsublimacion").val();
        var metrosublimacion = $("#metrosublimacion").val();
        var valorsublimacion = $("#valorsublimacion").val();
        var action = "crearSublimacion";

        if (metrosublimacion.trim() !== '' && proveedorsublimacion.trim() !== '' && valorsublimacion.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              proveedorsublimacion: proveedorsublimacion,
              metrosublimacion: metrosublimacion,
              valorsublimacion: valorsublimacion
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#proveedorsublimacion").val("");
                $("#valorsublimacion").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });       
   //validar cantidad de sublimacion antes de agg
   $("#cantsublimacion").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#preciosublimacion").html();
     $("#costo--sublimacion").html(preciototal);

     //oculta el boton agregar si cantidad menor que 1
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#aggsublimacion").slideUp();
     } else {
       $("#aggsublimacion").slideDown();
     }
   });

   //agg sublimacion a detatemp
   $("#aggsublimacion").click(function (e) {
     e.preventDefault();

     if ($("#cantsublimacion").val() > 0) {
       var provSublimacion = $("#provsublimacion").val();
       var metroSublimacion = $("#metrosublimacion").html();
       var precioSublimacion = $("#preciosublimacion").html();
       var cantSublimacion = $("#cantsublimacion").val();
       var costoSublimacion = $("#costo--sublimacion").html();
       var action = "aggSublimaciontemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
         provSublimacion: provSublimacion,
         metroSublimacion: metroSublimacion,
         precioSublimacion: precioSublimacion,
         cantSublimacion: precioSublimacion,
         cantSublimacion: cantSublimacion,
         costoSublimacion: costoSublimacion
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detasublimacion").html(info.detalle);
             $("#sublimaciontotal").html(info.totales);
             $("#provsublimacion").val("");
             $("#metrosublimacion").html("-");
             $("#preciosublimacion").html("-");
             $("#cantsublimacion").val("0");
             $("#costo--sublimacion").html("0.00");

             //bloquear cantidad
             $("#cantsublimacion").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#aggsublimacion").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

   //Corte Manual
   //agg corte maual al modal
   $("#buscar--cortemanual").click(function (e) {
    var action = "buscarCorteManual";
    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != "error") {
          var info = JSON.parse(response);
              $("#modal__cortemanual").html(info.detalle);

        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
  });
});
    // buscar corte manual
    $("#codigocortemanual").keyup (function (e) {
      e.preventDefault();
     var corteManual = $("#codigocortemanual").val();
     var action = "infoCorteManual";
     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, corteManual: corteManual},
       success: function (response) {
         if (response == 0) {
           $("#anchocortemanual").html("0");
           $("#largocortemanual").html("0");
           $("#preciocortemanual").html("0");
           $("#cantcortemanual").val("0");
           $("#costo--cortemanual").html("0");
           //bloquear cantidad
           $("#cantcortemanual").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#aggcortemanual").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#codigocortemanual").val(data.Codigo);
           $("#anchocortemanual").html(data.Media_ancho);
           $("#largocortemanual").html(data.Media_largo);
           $("#preciocortemanual").html(data.Valor_uni);
           $("#cantcortemanual").val("0");
           $("#costo--cortemanual").html("0");
           //Activar cantidad
           $("#cantcortemanual").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
    //buscar corte manual en modal
    $("#searchcortemanual").keyup(function (e) { 
      var searchcortemanual = $("#searchcortemanual").val();
      var action = "searchCorteManual";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchcortemanual: searchcortemanual },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__cortemanual").html(info.detalle);
        }
      });
    });
      //insertar cortemanual desde el modal
      $("#crearcortemanual").click(function (e) {  
        e.preventDefault();
        var codigo = $("#codigocortemanual").val();
        var ancho = $("#anchocortemanual").val();
        var largo = $("#largocortemanual").val();
        var valor = $("#valorcortemanual").val();
        var action = "crearCorteManual";

        if (codigo.trim() !== '' && ancho.trim() !== '' && largo.trim() !== '' && valor.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              codigo: codigo,
              ancho: ancho,
              largo: largo,
              valor: valor,
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#codigocortemanual").val("");
                $("#anchocortemanual").val("");
                $("#largocortemanual").val("");
                $("#valorcortemanual").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });   
   //validar cantidad de cortemanual antes de agg
   $("#cantcortemanual").keyup(function (e) {
    e.preventDefault();

    var preciototal = $(this).val() * $("#preciocortemanual").html();
    $("#costo--cortemanual").html(preciototal);

    //oculta el boton agregar si cantidad menor que 1
    if ($(this).val() < 0 || isNaN($(this).val())) {
      $("#aggcortemanual").slideUp();
    } else {
      $("#aggcortemanual").slideDown();
    }
  });
  //agg insumo a detatemp
  $("#aggcortemanual").click(function (e) {
   e.preventDefault();

   if ($("#cantcortemanual").val() > 0) {
     var codigocortemanual = $("#codigocortemanual").val();
     var anchocortemanual = $("#anchocortemanual").html();
     var largocortemanual = $("#largocortemanual").html();
     var preciocortemanual = $("#preciocortemanual").html(); 
     var cantcortemanual = $("#cantcortemanual").val();
     var costocortemanual = $("#costo--cortemanual").html();
     var action = "aggCorteManualtemp";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: {
         action: action,
       codigocortemanual: codigocortemanual,
       anchocortemanual: anchocortemanual,
       largocortemanual: largocortemanual,
       preciocortemanual: preciocortemanual,
       cantcortemanual: cantcortemanual,
       costocortemanual: costocortemanual
       },
       success: function (response) {
         if (response != "error") {
           var info = JSON.parse(response);
           $("#detacortemanual").html(info.detalle);
           $("#cortemanualtotal").html(info.totales);
           $("#codigocortemanual").val("");
           $("#anchocortemanual").html("0");
           $("#largocortemanual").html("0");
           $("#cantcortemanual").val("0");
           $("#costo--cortemanual").html("0.00");

           //bloquear cantidad
           $("#cantcortemanual").attr("disabled", "disabled");

           //ocultar boton agregar
           $("#aggcortemanual").slideUp();
         } else {
           console.log("no data");
         }
       },
       error: function (error) {},
     });
   }
 });
// CONFECCIÓN
    //buscar confección
    $("#descripcionconfeccion").keyup (function (e) {
      e.preventDefault();
     var confeccion = $("#descripcionconfeccion").val();
     var action = "infoConfeccion";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, confeccion: confeccion},
       success: function (response) {
         if (response == 0) {
           $("#precioconfeccion").html("0");
           $("#cantconfeccion").val("0");
           $("#costo--confeccion").html("0");
           //bloquear cantidad
           $("#cantconfeccion").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#aggconfeccion").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#descripcionconfeccion").val(data.Descripcion_confeccion);
           $("#precioconfeccion").html(data.Valor_confeccion);
           $("#cantconfeccion").val("0");
           $("#costo--confeccion").html("0");
           //Activar cantidad
           $("#cantconfeccion").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
   //agg confección al modal
 $("#buscar--confeccion").click(function (e) {
   var action = "buscarConfeccion";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
        var info = JSON.parse(response);
        $("#modal__confeccion").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar confección en modal
    $("#searchconfeccion").keyup(function (e) { 
      var searchconfeccion = $("#searchconfeccion").val();
      var action = "searchConfeccion";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchconfeccion: searchconfeccion },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__confeccion").html(info.detalle);
        }
      });
    });      
      //insertar confección desde el modal
      $("#crearconfeccion").click(function (e) {  
        e.preventDefault();
        var descrip = $("#descripconfeccion").val();
        var valor = $("#valorconfeccion").val();
        var action = "crearConfeccion";

        if (descrip.trim() !== '' && valor.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              descrip: descrip,
              valor: valor,
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descripconfeccion").val("");
                $("#valorconfeccion").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });    
   //validar cantidad de confección antes de agg
   $("#cantconfeccion").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#precioconfeccion").html();
     $("#costo--confeccion").html(preciototal);

     //oculta el boton agregar si cantidad menor que 1
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#aggconfeccion").slideUp();
     } else {
       $("#aggconfeccion").slideDown();
     }
   });

   //agg confección a detatemp
   $("#aggconfeccion").click(function (e) {
     e.preventDefault();

     if ($("#cantconfeccion").val() > 0) {
       var descripcionconfeccion = $("#descripcionconfeccion").val();
       var precioconfeccion = $("#precioconfeccion").html();
       var cantconfeccion = $("#cantconfeccion").val();
       var costoconfeccion = $("#costo--confeccion").html();
       var action = "aggConfecciontemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
         descripcionconfeccion: descripcionconfeccion,
         precioconfeccion: precioconfeccion,
         cantconfeccion: cantconfeccion,
         costoconfeccion: costoconfeccion
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detaconfeccion").html(info.detalle);
             $("#confecciontotal").html(info.totales);
             $("#descripcionconfeccion").val("");
             $("#precioconfeccion").html("0");
             $("#cantconfeccion").val("0");
             $("#costo--confeccion").html("0");

             //bloquear cantidad
             $("#cantconfeccion").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#aggconfeccion").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

   // TERMINACIÓN
    //buscar terminación
    $("#descripcionterminacion").keyup (function (e) {
      e.preventDefault();
     var terminacion = $("#descripcionterminacion").val();
     var action = "infoTerminacion";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, terminacion: terminacion},
       success: function (response) {
         if (response == 0) {
           $("#precioterminacion").html("0");
           $("#canterminacion").val("0");
           $("#costo--terminacion").html("0");
           //bloquear cantidad
           $("#canterminacion").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#aggterminacion").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#descripcionterminacion").val(data.Descripcion_terminacion);
           $("#precioterminacion").html(data.Valor_terminacion);
           $("#canterminacion").val("0");
           $("#costo--terminacion").html("0");
           //Activar cantidad
           $("#canterminacion").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
   //agg terminación al modal
 $("#buscar--terminacion").click(function (e) {
   var action = "buscarTerminacion";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
          var info = JSON.parse(response);
          $("#modal__terminacion").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar terminación en modal
    $("#searchterminacion").keyup(function (e) { 
      var searchterminacion = $("#searchterminacion").val();
      var action = "searchTerminacion";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchterminacion: searchterminacion },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__terminacion").html(info.detalle);
        }
      });
    }); 
      //insertar terminación desde el modal
      $("#crearterminacion").click(function (e) {  
        e.preventDefault();
        var descrip = $("#descripterminacion").val();
        var valor = $("#valorterminacion").val();
        var action = "crearTerminacion";

        if (descrip.trim() !== '' && valor.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              descrip: descrip,
              valor: valor,
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descripterminacion").val("");
                $("#valorterminacion").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      });    
   //validar cantidad de terminación antes de agg
   $("#canterminacion").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#precioterminacion").html();
     $("#costo--terminacion").html(preciototal);

     //oculta el boton agregar si cantidad menor que 0
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#aggterminacion").slideUp();
     } else {
       $("#aggterminacion").slideDown();
     }
   });

   //agg terminación a detatemp
   $("#aggterminacion").click(function (e) {
     e.preventDefault();

     if ($("#canterminacion").val() > 0) {
       var descripcionterminacion = $("#descripcionterminacion").val();
       var precioterminacion = $("#precioterminacion").html();
       var canterminacion = $("#canterminacion").val();
       var costoterminacion = $("#costo--terminacion").html();
       var action = "aggTerminaciontemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
         descripcionterminacion: descripcionterminacion,
         precioterminacion: precioterminacion,
         canterminacion: canterminacion,
         costoterminacion: costoterminacion,
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detaterminacion").html(info.detalle);
             $("#terminaciontotal").html(info.totales);
             $("#descripcionterminacion").val("");
             $("#precioterminacion").html("0");
             $("#canterminacion").val("0");
             $("#costo--terminacion").html("0");

             //bloquear cantidad
             $("#canterminacion").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#aggterminacion").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

   // ENTRETELADO
    //buscar entretelado
    $("#descripcionentretelado").keyup (function (e) {
      e.preventDefault();
     var entretelado = $("#descripcionentretelado").val();
     var action = "infoEntretelado";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, entretelado: entretelado},
       success: function (response) {
         if (response == 0) {
           $("#precioentretelado").html("0");
           $("#cantentretelado").val("0");
           $("#costo--entretelado").html("0");
           //bloquear cantidad
           $("#cantentretelado").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#aggentretelado").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#descripcionentretelado").val(data.Descripcion_entretelado);
           $("#precioentretelado").html(data.Valor_entretelado);
           $("#cantentretelado").val("0");
           $("#costo--entretelado").html("0");
           //Activar cantidad
           $("#cantentretelado").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
   //agg entretelado al modal
 $("#buscar--entretelado").click(function (e) {
   var action = "buscarEntretelado";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
          var info = JSON.parse(response);
          $("#modal__entretelado").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar entretelado en modal
    $("#searchentretelado").keyup(function (e) { 
      var searchentretelado = $("#searchentretelado").val();
      var action = "searchEntretelado";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchentretelado: searchentretelado },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__entretelado").html(info.detalle);
        }
      });
    }); 
      //insertar entretelado desde el modal
      $("#crearentretelado").click(function (e) {  
        e.preventDefault();
        var descrip = $("#descripentretelado").val();
        var valor = $("#valorentretelado").val();
        var action = "crearEntretelado";

        if (descrip.trim() !== '' && valor.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              descrip: descrip,
              valor: valor,
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descripentretelado").val("");
                $("#valorentretelado").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      }); 
   //validar cantidad de entretelado antes de agg
   $("#cantentretelado").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#precioentretelado").html();
     $("#costo--entretelado").html(preciototal);

     //oculta el boton agregar si cantidad menor que 1
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#aggentretelado").slideUp();
     } else {
       $("#aggentretelado").slideDown();
     }
   });

   //agg entretelado a detatemp
   $("#aggentretelado").click(function (e) {
     e.preventDefault();

     if ($("#cantentretelado").val() > 0) {
       var descripcionentretelado = $("#descripcionentretelado").val();
       var precioentretelado = $("#precioentretelado").html();
       var cantentretelado = $("#cantentretelado").val();
       var costoentretelado = $("#costo--entretelado").html();
       var action = "aggEntreteladotemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
         descripcionentretelado: descripcionentretelado,
         precioentretelado: precioentretelado,
         cantentretelado: cantentretelado,
         costoentretelado: costoentretelado
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detaentretelado").html(info.detalle);
             $("#entreteladototal").html(info.totales);
             $("#descripcionentretelado").val("");
             $("#precioentretelado").html("0");
             $("#cantentretelado").val("0");
             $("#costo--entretelado").html("0");

             //bloquear cantidad
             $("#cantentretelado").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#aggentretelado").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

      // CORTE DIGITAL
    //buscar corte digital
    $("#descripcioncortedigital").keyup (function (e) {
      e.preventDefault();
     var cortedigital = $("#descripcioncortedigital").val();
     var action = "infoCorteDigital";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, cortedigital: cortedigital},
       success: function (response) {
         if (response == 0) {
           $("#preciocortedigital").html("0");
           $("#cantcortedigital").val("0");
           $("#costo--cortedigital").html("0");
           //bloquear cantidad
           $("#cantcortedigital").attr("disabled", "disabled");
           //ocultar boton agregar
           $("#aggcortedigital").slideUp();
         } else {
           var data = $.parseJSON(response);
           $("#descripcioncortedigital").val(data.Descripcion_cortedigital);
           $("#preciocortedigital").html(data.Valor_cortedigital);
           $("#cantcortedigital").val("0");
           $("#costo--cortedigital").html("0");
           //Activar cantidad
           $("#cantcortedigital").removeAttr("disabled");
         }
       },
       error: function (error) {},
     });
   });
   //agg corte digital al modal
 $("#buscar--cortedigital").click(function (e) {
   var action = "buscarCorteDigital";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
          var info = JSON.parse(response);
          $("#modal__cortedigital").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar corte digitaL en modal
    $("#searchcortedigital").keyup(function (e) { 
      var searchcortedigital = $("#searchcortedigital").val();
      var action = "searchCorteDigital";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchcortedigital: searchcortedigital },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__cortedigital").html(info.detalle);
        }
      });
    }); 
      //insertar corte digital desde el modal
      $("#crearcortedigital").click(function (e) {  
        e.preventDefault();
        var descrip = $("#descripcortedigital").val();
        var valor = $("#valorcortedigital").val();
        var action = "crearCorteDigital";

        if (descrip.trim() !== '' && valor.trim() !== '') {  
          $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
              action: action,
              descrip: descrip,
              valor: valor,
            },
            success: function (response) {
              if (response == 'exitoso'){
                $("#descripcortedigital").val("");
                $("#valorcortedigital").val("");
                alert("Se ha guardado exitosamente!");
              }
            }
          });
        } else {
          alert("por favor complete los campos");
        }
      }); 
    //validar cantidad de corte digital antes de agg
    $("#cantcortedigital").keyup(function (e) {
      e.preventDefault();

      var preciototal = $(this).val() * $("#preciocortedigital").html();
      $("#costo--cortedigital").html(preciototal);

      //oculta el boton agregar si cantidad menor que 1
      if ($(this).val() < 0 || isNaN($(this).val())) {
        $("#aggcortedigital").slideUp();
      } else {
        $("#aggcortedigital").slideDown();
      }
    });

   //agg corte digital a detatemp
   $("#aggcortedigital").click(function (e) {
     e.preventDefault();

     if ($("#cantcortedigital").val() > 0) {
       var descripcioncortedigital = $("#descripcioncortedigital").val();
       var preciocortedigital = $("#preciocortedigital").html();
       var cantcortedigital = $("#cantcortedigital").val();
       var costocortedigital = $("#costo--cortedigital").html();
       var action = "aggCorteDigitaltemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
           descripcioncortedigital: descripcioncortedigital,
           preciocortedigital: preciocortedigital,
           cantcortedigital: cantcortedigital,
           costocortedigital: costocortedigital
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detacortedigital").html(info.detalle);
             $("#cortedigitaltotal").html(info.totales);
             $("#descripcioncortedigital").val("");
             $("#preciocortedigital").html("0");
             $("#cantcortedigital").val("0");
             $("#costo--cortedigital").html("0");

             //bloquear cantidad
             $("#cantcortedigital").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#aggcortedigital").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

         // LASER
    //buscar laser
    $("#nombrelaser").keyup (function (e) {
      e.preventDefault();
     var laser = $("#nombrelaser").val();
     var action = "infoLaser";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, laser: laser},
       success: function (response) {
        if (response == 0) {
          $("#descripcionlaser").html("--");
          $("#preciolaser").html("0");
          $("#cantlaser").val("0");
          $("#costo--laser").html("0");
          //bloquear cantidad
          $("#cantlaser").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#agglaser").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#nombrelaser").val(data.Nombre_laser);
          $("#descripcionlaser").html(data.Descripcion_laser);
          $("#preciolaser").html(data.Valor_laser);
          $("#cantlaser").val("0");
          $("#costo--laser").html("0");
          //Activar cantidad
          $("#cantlaser").removeAttr("disabled");
        }
       },
       error: function (error) {},
     });
   });
   //agg laser al modal
 $("#buscar--laser").click(function (e) {
   var action = "buscarLaser";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
          var info = JSON.parse(response);
          $("#modal__laser").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar laser en modal
    $("#searchlaser").keyup(function (e) { 
      var searchlaser = $("#searchlaser").val();
      var action = "searchLaser";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchlaser: searchlaser },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__laser").html(info.detalle);
        }
      });
    });  
    //insertar laser desde el modal
    $("#crearlaser").click(function (e) {  
      e.preventDefault();
      var descrip = $("#descriplaser").val();
      var nombre = $("#nomlaser").val();
      var valor = $("#valorlaser").val();
      var action = "crearLaser";

      if (descrip.trim() !== '' && valor.trim() !== '' && nombre.trim() !== '') {  
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: {
            action: action,
            descrip: descrip,
            nombre: nombre,
            valor: valor,
          },
          success: function (response) {
            console.log(response);
            if (response == 'exitoso'){
              $("#descriplaser").val("");
              $("#nomlaser").val("");
              $("#valorlaser").val("");
              alert("Se ha guardado exitosamente!");
            } else {
              alert("NO Se ha guardado exitosamente");
            }
          }
        });
      } else {
        alert("por favor complete los campos");
      }
    }); 
   //validar cantidad de laser antes de agg
   $("#cantlaser").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#preciolaser").html();
     $("#costo--laser").html(preciototal);

     //oculta el boton agregar si cantidad menor que 1
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#agglaser").slideUp();
     } else {
       $("#agglaser").slideDown();
     }
   });
   //agg laser a detatemp
   $("#agglaser").click(function (e) {
     e.preventDefault();

     if ($("#cantlaser").val() > 0) {
       var nombrelaser = $("#nombrelaser").val();
       var descripcionlaser = $("#descripcionlaser").html();
       var preciolaser = $("#preciolaser").html();
       var cantlaser = $("#cantlaser").val();
       var costolaser = $("#costo--laser").html();
       var action = "aggLasertemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
           nombrelaser: nombrelaser,
           descripcionlaser: descripcionlaser,
           preciolaser: preciolaser,
           cantlaser: cantlaser,
           costolaser: costolaser
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detalaser").html(info.detalle);
             $("#lasertotal").html(info.totales);
             $("#nombrelaser").val("");
             $("#descripcionlaser").html("--");
             $("#preciolaser").html("0");
             $("#cantlaser").val("0");
             $("#costo--laser").html("0");

             //bloquear cantidad
             $("#cantlaser").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#agglaser").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

            // BORDADO
    //buscar bordado
    $("#nombrebordado").keyup (function (e) {
      e.preventDefault();
     var bordado = $("#nombrebordado").val();
     var action = "infoBordado";

     $.ajax({
       type: "POST",
       url: "ajax.php",
       async: true,
       data: { action: action, bordado: bordado},
       success: function (response) {
        if (response == 0) {
          $("#descripcionbordado").html("--");
          $("#preciobordado").html("0");
          $("#cantbordado").val("0");
          $("#costo--bordado").html("0");
          //bloquear cantidad
          $("#cantbordado").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggbordado").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#nombrebordado").val(data.Nombre_bordado);
          $("#descripcionbordado").html(data.Descripcion_bordado);
          $("#preciobordado").html(data.Precio_bordado);
          $("#cantbordado").val("0");
          $("#costo--bordado").html("0");
          //Activar cantidad
          $("#cantbordado").removeAttr("disabled");
        }
       },
       error: function (error) {},
     });
   });
   //agg bordado al modal
 $("#buscar--bordado").click(function (e) {
   var action = "buscarBordado";
   $.ajax({
     type: "POST",
     url: "ajax.php",
     async: true,
     data: { action: action },
     success: function (response) {
       if (response != "error") {
          var info = JSON.parse(response);
          $("#modal__bordado").html(info.detalle);

       } else {
         console.log("no data");
       }
     },
     error: function (error) {},
 });
       });
    //buscar bordado en modal
    $("#searchbordado").keyup(function (e) { 
      var searchbordado = $("#searchbordado").val();
      var action = "searchBordado";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action, searchbordado: searchbordado },
        success: function (response) {
          var info = JSON.parse(response);
          $("#modal__bordado").html(info.detalle);
        }
      });
    });  
    //insertar bordado desde el modal
    $("#crearbordado").click(function (e) {  
      e.preventDefault();
      var descrip = $("#descripbordado").val();
      var nombre = $("#nombordado").val();
      var estado = $("#estadobordado").val();
      var valor = $("#valorbordado").val();
      console.log(nombre, estado, valor, descrip);
      var action = "crearBordado";

      if (descrip.trim() !== '' && valor.trim() !== '' && nombre.trim() !== '') {  
        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: {
            action: action,
            descrip: descrip,
            nombre: nombre,
            estado: estado,
            valor: valor,
          },
          success: function (response) {
            console.log(response);
            if (response == 'exitoso'){
              $("#descripbordado").val("");
              $("#nombordado").val("");
              $("#estado").val("");
              $("#valorbordado").val("");
              alert("Se ha guardado exitosamente!");
            } else {
              alert("NO Se ha guardado exitosamente");
          }
          }
        });
      } else {
        alert("por favor complete los campos");
      }
    }); 
   //validar cantidad de bordado antes de agg
   $("#cantbordado").keyup(function (e) {
     e.preventDefault();

     var preciototal = $(this).val() * $("#preciobordado").html();
     $("#costo--bordado").html(preciototal);

     //oculta el boton agregar si cantidad menor que 1
     if ($(this).val() < 0 || isNaN($(this).val())) {
       $("#aggbordado").slideUp();
     } else {
       $("#aggbordado").slideDown();
     }
   });
   //agg bordado a detatemp
   $("#aggbordado").click(function (e) {
     e.preventDefault();

     if ($("#cantbordado").val() > 0) {
       var nombrebordado = $("#nombrebordado").val();
       var descripcionbordado = $("#descripcionbordado").html();
       var preciobordado = $("#preciobordado").html();
       var cantbordado = $("#cantbordado").val();
       var costobordado = $("#costo--bordado").html();
       var action = "aggBordadotemp";

       $.ajax({
         type: "POST",
         url: "ajax.php",
         async: true,
         data: {
           action: action,
           nombrebordado: nombrebordado,
           descripcionbordado: descripcionbordado,
           preciobordado: preciobordado,
           cantbordado: cantbordado,
           costobordado: costobordado
         },
         success: function (response) {
           if (response != "error") {
             var info = JSON.parse(response);
             $("#detabordado").html(info.detalle);
             $("#bordadototal").html(info.totales);
             $("#nombrebordado").val("");
             $("#descripcionbordado").html("--");
             $("#preciobordado").html("0");
             $("#cantbordado").val("0");
             $("#costo--bordado").html("0");

             //bloquear cantidad
             $("#cantbordado").attr("disabled", "disabled");

             //ocultar boton agregar
             $("#aggbordado").slideUp();
           } else {
             console.log("no data");
           }
         },
         error: function (error) {},
       });
     }
   });

  //seleccionar proceso
  $("#procesos").change(function (e) {
    let value = $(this).val();
    if (value > 0) {
      if(value == 1){
        const tbCorteManual = document.querySelector(".tbcortemanual");
        const tbDetaCorteManual = document.querySelector(".tbdetacortemanual");
        tbCorteManual.classList.add("tbprocesos--show");
        tbDetaCorteManual.classList.add("tbprocesos--show");
      }
      if(value == 2){
        const tbConfeccion = document.querySelector(".tbconfeccion");
        const tbDetaConfeccion = document.querySelector(".tbdetaconfeccion");
        tbConfeccion.classList.add("tbprocesos--show");
        tbDetaConfeccion.classList.add("tbprocesos--show");
      }
      if(value == 3){
        const tbSubli = document.querySelector(".tbsublimacion");
        const tbDetaSubli = document.querySelector(".tbdetasublimacion");
        tbSubli.classList.add("tbprocesos--show");
        tbDetaSubli.classList.add("tbprocesos--show");
      }
      if(value == 4){
        const tbEntre = document.querySelector(".tbentretelado");
        const tbDetaEntre = document.querySelector(".tbdetaentretelado");
        tbEntre.classList.add("tbprocesos--show");
        tbDetaEntre.classList.add("tbprocesos--show");
      }
      if(value == 5){
        const tbCorte = document.querySelector(".tbcortedigital");
        const tbDetaCorte = document.querySelector(".tbdetacortedigital");
        tbCorte.classList.add("tbprocesos--show");
        tbDetaCorte.classList.add("tbprocesos--show");
      }
      if(value == 6){
        const tbLaser = document.querySelector(".tblaser");
        const tbDetaLaser = document.querySelector(".tbdetalaser");
        tbLaser.classList.add("tbprocesos--show");
        tbDetaLaser.classList.add("tbprocesos--show");
      }
      if(value == 7){
        const tbBordado = document.querySelector(".tbbordado");
        const tbDetaBordado = document.querySelector(".tbdetabordado");
        tbBordado.classList.add("tbprocesos--show");
        tbDetaBordado.classList.add("tbprocesos--show");
      }
      if(value == 8){
        const tbTermi = document.querySelector(".tbterminacion");
        const tbDetaTermi = document.querySelector(".tbdetaterminacion");
        tbTermi.classList.add("tbprocesos--show");
        tbDetaTermi.classList.add("tbprocesos--show");
      }
    }
  });
    //FACTURAR
    $("#costos").on("submit",function (e) {
      e.preventDefault();
      var descripcion = $("#descripfactura").val();
      var fecha = $("#fecha").val();
      var cliente = $("#cliente").val();
      var cotizacion = $("#cotizacion").val();
      var ica = $("#ica").val();
      var iva = $("#iva").val();
      var rete = $("#rete").val();
      var cif = $("#cif").val();
      if ( cif.trim() === ''){
        var cif = 0; 
      }
      var submitutilidad = parseFloat($("#utilidad").val());
      var utilidad = submitutilidad.toFixed(3);
      var action = "facturar";

      if (fecha.trim() === '' || descripcion.trim() === '' || cliente.trim() === '' ) {
        var validateinputs = false;
        var message = 'Ingrese los campos requeridos * ';
      } else {
        var validateinputs = true;
        var message = '';
      }
      if (validateinputs == true) {
      
        $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: {
          action: action,
          descripcion: descripcion,
          fecha: fecha,
          cliente: cliente,
          cotizacion: cotizacion,
          ica: ica,
          iva: iva,
          rete: rete,
          cif: cif,
          utilidad: utilidad
        },
        success: function (response) {
          if (response != 'error') {
            console.log(response);
          generarPDF(response);
          location.reload();

  
             } else {
              console.log('no data');
             }
        },
        error: function (error) {
          console.log(error);
        },
      });
      } else {
        alert (message);
      }
    });
      //cancelar factura
      $("#cancelar").click(function (e) {
        function cancelar(e) {
          if (confirm("¿Está seguro que desea eliminar este registro?")) {
            let confirmar = true;
            return confirmar;
        }
        }
        if (cancelar() == true) {
          e.preventDefault();
          var rowstela = $("#detatela tr").length;
          var rowscuero = $("#detacuero tr").length;
          var rowsinsumos = $("#detainsumos tr").length;
          var rowssublimacion = $("#detasublimacion tr").length;
          var rowscortemanual = $("#detacortemanual tr").length;
          var rowsconfeccion = $("#detaconfeccion tr").length;
          var rowsterminacion = $("#detaterminacion tr").length;
          var rowsentretelado = $("#detaentretelado tr").length;
          var rowscortedigital = $("#detacortedigital tr").length;
          var rowslaser = $("#detalaser tr").length;
          var rowsbordado = $("#detabordado tr").length;
          

    if (rowstela > 0 || rowscuero > 0 || rowsinsumos > 0 || rowssublimacion > 0 || rowscortemanual > 0 || rowsconfeccion > 0 || rowsterminacion  > 0 || rowsentretelado > 0 || rowscortedigital > 0 || rowslaser > 0 || rowsbordado > 0) {
      var action = "cancelarVenta";

      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action },
        success: function (response) {
          if (response != "error") {
            location.reload();
          }
        },
        error: function (error) {},
      });
    }
        } else {
          e.preventDefault();
        }
      });
}); //fin del ready

//generar PDF
function generarPDF(factura) {
  var ancho = 1000;
  var alto = 800;
  //centrar ventana
  var x = parseInt(window.screen.width / 2 - ancho / 2);
  var y = parseInt(window.screen.height / 2 - alto / 2);

  $url = "factura/generaFactura.php?f=" + factura;
  window.open(
    $url,
    "Factura",
    "left=" +
      x +
      ",top=" +
      y +
      ",height=" +
      alto +
      ",width=" +
      ancho +
      ",scrollbar=si,location=no,resizable=si,menubar=no"
  );
}
// prevenir recarga
function recargar(event) {
  event.preventDefault();
}

//TELAS
// cerrar modal al seleccionar tela
function selectTela(id) {

  const selectModalTela = document.querySelector('.modal--telas');
  seleccionarTela = id;
  selectModalTela.classList.remove('modal--show');

  var telaSeleccionada = seleccionarTela;
    var action = "infoTela";

        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, telaSeleccionada: telaSeleccionada},
          success: function (response) {
            if (response == 0) {
              $("#preciotela").html("0");
              $("#cantela").val("0");
              $("#costo").html("0");
              //bloquear cantidad
              $("#cantela").attr("disabled", "disabled");
              //ocultar boton agregar
              $("#aggtela").slideUp();
            } else {
              var data = $.parseJSON(response);
              $("#nomtela").val(data.Descripcion_tela);
              $("#cantela").val("0");
              $("#preciotela").html(data.Valor_uni);
              $("#costo").html("0");
              //Activar cantidad
              $("#cantela").removeAttr("disabled");
            }
          },
          error: function (error) {},
        });
 };


//modal telas
const openModalTela = document.querySelector('.buscar--telas');
const modalTela = document.querySelector('.modal--telas');
const cerrarModal = document.querySelector('.modal__btn');
openModalTela.addEventListener('click', (e)=>{
  e.preventDefault();
  modalTela.classList.add('modal--show');
});
 cerrarModal.addEventListener('click', (e)=>{
  e.preventDefault();
  modalTela.classList.remove('modal--show');
});

//CUEROS

// cerrar modal al seleccionar cuero
function selectCuero(id) {
  const modalCuero = document.querySelector('.modal--cueros');
    seleccionarCuero = id;
    modalCuero.classList.remove('modal--show');
        //pasar nombre de cuero seleccionada
    var cueroSeleccionado = seleccionarCuero;
    var action = "infoCuero";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, cueroSeleccionado: cueroSeleccionado},
      success: function (response) {
        if (response == 0 || response == 'error') {
          $("#preciocuero").html("0");
          //ocultar boton agregar
          $("#aggcuero").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#nomcuero").val(data.Descripcion_cuero);
          $("#preciocuero").html(data.Valor_uni);
        }
      },
    error: function (error) {},
    });
 }
//modal cuero
const openModalCuero = document.querySelector('.buscar--cueros');
const modalCuero = document.querySelector('.modal--cueros');
const cerrarModalCuero = document.querySelector('.modal__btn--cueros');
  openModalCuero.addEventListener('click', (e)=>{
  e.preventDefault();
  modalCuero.classList.add('modal--show');
  });
cerrarModalCuero.addEventListener('click', (e)=>{
  e.preventDefault();
  modalCuero.classList.remove('modal--show');
  });

  //TROQUEL

  // cerrar modal al seleccionar troquel
function selectTroquel(id) {
  const modalTroquel = document.querySelector('.modal--troquel');
    const seleccionarTroquel = id;
    modalTroquel.classList.remove('modal--show');
        //pasar nombre de cuero seleccionada
    var troquelSeleccionado = seleccionarTroquel;
    var action = "infoTroquel";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, troquelSeleccionado: troquelSeleccionado},

      success: function (response) {
            if (response == 0 || response == 'error'){
              $("#consumotroquel").html("0");
              //ocultar boton agregar
              $("#aggcuero").slideUp();
            } else {
              var data = $.parseJSON(response);
              $("#nomtroquel").val(data.Nombre_troquel);
              $("#consumotroquel").html(data.DCM);
              $("#cantcuero").val("0");
              //Activar cantidad
              $("#cantcuero").removeAttr("disabled");
            }
          },
        error: function (error) {},
    });
 }
//modal troquel
const openModalTroquel = document.querySelector('.buscar--troquel');
const modalTroquel = document.querySelector('.modal--troquel');
const cerrarModalTroquel = document.querySelector('.modal__btn--troquel');
openModalTroquel.addEventListener('click', (e)=>{
  e.preventDefault();
  modalTroquel.classList.add('modal--show');
});
cerrarModalTroquel.addEventListener('click', (e)=>{
  e.preventDefault();
  modalTroquel.classList.remove('modal--show');
});

//INSUMOS
// cerrar modal al seleccionar insumo
function selectInsumo(id) {

  const selectModalInsumo = document.querySelector('.modal--insumos');
  seleccionarInsumo = id;
  selectModalInsumo.classList.remove('modal--show');

  var insumoSeleccionado = seleccionarInsumo;
    var action = "infoInsumo";

        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, insumoSeleccionado: insumoSeleccionado},
          success: function (response) {
            if (response == 0) {
              $("#proveedorinsumo").html("--");
              $("#cantinsumo").val("0");
              $("#precioinsumo").html("0");
              $("#costo--insumo").html("0");
              //bloquear cantidad
              $("#cantinsumo").attr("disabled", "disabled");
              //ocultar boton agregar
              $("#agginsumo").slideUp();
            } else {
              var data = $.parseJSON(response);
              $("#nominsumo").val(data.Descripcion_insumo);
              $("#proveedorinsumo").html(data.Proveedor_insumo);
              $("#cantinsumo").val("0");
              $("#precioinsumo").html(data.Valor_uni);
              $("#costo--insumo").html("0");
              //Activar cantidad
              $("#cantinsumo").removeAttr("disabled");
            }
          },
          error: function (error) {},
        });
 };


//modal insumos
const openModalInsumo = document.querySelector('.buscar--insumo');
const modalInsumo = document.querySelector('.modal--insumos');
const cerrarModalInsumo = document.querySelector('.modal__btn--insumos');
openModalInsumo.addEventListener('click', (e)=>{
  e.preventDefault();
  modalInsumo.classList.add('modal--show');
});
 cerrarModalInsumo.addEventListener('click', (e)=>{
  e.preventDefault();
  modalInsumo.classList.remove('modal--show');
});

//SUBLIMACION
// cerrar modal al seleccionar sublimacion
function selectSublimacion(id) {

  const selectModalSublimacion = document.querySelector('.modal--sublimacion');
  seleccionarSublimacion = id;
  selectModalSublimacion.classList.remove('modal--show');

  var sublimacionSeleccionado = seleccionarSublimacion;
    var action = "infoSublimacion";

        $.ajax({
          type: "POST",
          url: "ajax.php",
          async: true,
          data: { action: action, sublimacionSeleccionado: sublimacionSeleccionado},
          success: function (response) {
            if (response == 0) {
               $("#metrosublimacion").html("1");
               $("#preciosublimacion").html("0");
               $("#cantsublimacion").val("0");
               $("#costo--sublimacion").html("0");
               //bloquear cantidad
               $("#cantsublimacion").attr("disabled", "disabled");
               //ocultar boton agregar
               $("#aggsublimacion").slideUp();
             } else {
               var data = $.parseJSON(response);
               $("#provsublimacion").val(data.Proveedores);
               $("#metrosublimacion").html(data.Metro);
               $("#cantsublimacion").val("0");
               $("#preciosublimacion").html(data.Precio);
               $("#costo--sublimacion").html("0");
               //Activar cantidad
               $("#cantsublimacion").removeAttr("disabled");
             }
          },
          error: function (error) {},
        });
 };

//modal sublimacion
 const openModalSublimacion = document.querySelector('.buscar--sublimacion');
 const modalSublimacion = document.querySelector('.modal--sublimacion');
 const cerrarModalSublimacion = document.querySelector('.modal__btn--sublimacion');
 openModalSublimacion.addEventListener('click', (e)=>{
   e.preventDefault();
   modalSublimacion.classList.add('modal--show');
 });
  cerrarModalSublimacion.addEventListener('click', (e)=>{
   e.preventDefault();
   modalSublimacion.classList.remove('modal--show');
 });

//  CORTE MANUAL
// cerrar modal al seleccionar corte manual
function selectCorteManual(id) {

  const selectModalCorteManual = document.querySelector('.modal--cortemanual');
  seleccionarCorteManual = id;
  selectModalCorteManual.classList.remove('modal--show');

  var corteManualSeleccionado = seleccionarCorteManual;
    var action = "infoCorteManual";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, corteManualSeleccionado: corteManualSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#anchocortemanual").html("1");
          $("#largocortemanual").html("1");
          $("#preciocortemanual").html("0");
          $("#cantcortemanual").val("0");
          $("#costo--cortemanual").html("0");
          //bloquear cantidad
          $("#cantcortemanual").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggcortemanual").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#codigocortemanual").val(data.Codigo);
          $("#anchocortemanual").html(data.Media_ancho);
          $("#largocortemanual").html(data.Media_largo);
          $("#preciocortemanual").html(data.Valor_uni);
          $("#cantcortemanual").val("0");
          $("#costo--cortemanual").html("0");
          //Activar cantidad
          $("#cantcortemanual").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });
 };
//modal cortemanual
 const openModalCorteManual = document.querySelector('.buscar--cortemanual');
 const modalCorteManual = document.querySelector('.modal--cortemanual');
 const cerrarModalCorteManual = document.querySelector('.modal__btn--cortemanual');
 openModalCorteManual.addEventListener('click', (e)=>{
   e.preventDefault();
   modalCorteManual.classList.add('modal--show');
 });
  cerrarModalCorteManual.addEventListener('click', (e)=>{
   e.preventDefault();
   modalCorteManual.classList.remove('modal--show');
 });

 //  CONFECCIÓN
// cerrar modal al seleccionar confección
function selectConfeccion(id) {

  const selectModalConfeccion = document.querySelector('.modal--confeccion');
  seleccionarConfeccion = id;
  selectModalConfeccion.classList.remove('modal--show');

  var confeccionSeleccionado = seleccionarConfeccion;
    var action = "infoConfeccion";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, confeccionSeleccionado: confeccionSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#precioconfeccion").html("0");
          $("#cantconfeccion").val("0");
          $("#costo--confeccion").html("0");
          //bloquear cantidad
          $("#cantconfeccion").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggconfeccion").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#descripcionconfeccion").val(data.Descripcion_confeccion);
          $("#precioconfeccion").html(data.Valor_confeccion);
          $("#cantconfeccion").val("0");
          $("#costo--confeccion").html("0");
          //Activar cantidad
          $("#cantconfeccion").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });

  
 };
//modal confección
 const openModalConfeccion = document.querySelector('.buscar--confeccion');
 const modalConfeccion = document.querySelector('.modal--confeccion');
 const cerrarModalConfeccion = document.querySelector('.modal__btn--confeccion');
 openModalConfeccion.addEventListener('click', (e)=>{
   e.preventDefault();
   modalConfeccion.classList.add('modal--show');
 });
  cerrarModalConfeccion.addEventListener('click', (e)=>{
   e.preventDefault();
   modalConfeccion.classList.remove('modal--show');
 });

  //  TERMINACIÓN
// cerrar modal al seleccionar terminación
function selectTerminacion(id) {

  const selectModalTerminacion = document.querySelector('.modal--terminacion');
  seleccionarTerminacion = id;
  selectModalTerminacion.classList.remove('modal--show');

  var terminacionSeleccionado = seleccionarTerminacion;
    var action = "infoTerminacion";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, terminacionSeleccionado: terminacionSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#precioterminacion").html("0");
          $("#canterminacion").val("0");
          $("#costo--terminacion").html("0");
          //bloquear cantidad
          $("#canterminacion").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggterminacion").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#descripcionterminacion").val(data.Descripcion_terminacion);
          $("#precioterminacion").html(data.Valor_terminacion);
          $("#canterminacion").val("0");
          $("#costo--terminacion").html("0");
          //Activar cantidad
          $("#canterminacion").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });

  
 };
//modal terminación
 const openModalTerminacion = document.querySelector('.buscar--terminacion');
 const modalTerminacion = document.querySelector('.modal--terminacion');
 const cerrarModalTerminacion = document.querySelector('.modal__btn--terminacion');
 openModalTerminacion.addEventListener('click', (e)=>{
   e.preventDefault();
   modalTerminacion.classList.add('modal--show');
 });
  cerrarModalTerminacion.addEventListener('click', (e)=>{
   e.preventDefault();
   modalTerminacion.classList.remove('modal--show');
 });

  //  ENTRETELADO
// cerrar modal al seleccionar entretelado
function selectEntretelado(id) {

  const selectModalEntretelado = document.querySelector('.modal--entretelado');
  seleccionarEntretelado = id;
  selectModalEntretelado.classList.remove('modal--show');

  var entreteladoSeleccionado = seleccionarEntretelado;
    var action = "infoEntretelado";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, entreteladoSeleccionado: entreteladoSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#precioentretelado").html("0");
          $("#cantentretelado").val("0");
          $("#costo--entretelado").html("0");
          //bloquear cantidad
          $("#cantentretelado").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggentretelado").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#descripcionentretelado").val(data.Descripcion_entretelado);
          $("#precioentretelado").html(data.Valor_entretelado);
          $("#cantentretelado").val("0");
          $("#costo--entretelado").html("0");
          //Activar cantidad
          $("#cantentretelado").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });

  
 };
//modal entretelado
 const openModalEntretelado = document.querySelector('.buscar--entretelado');
 const modalEntretelado = document.querySelector('.modal--entretelado');
 const cerrarModalEntretelado = document.querySelector('.modal__btn--entretelado');
 openModalEntretelado.addEventListener('click', (e)=>{
   e.preventDefault();
   modalEntretelado.classList.add('modal--show');
 });
  cerrarModalEntretelado.addEventListener('click', (e)=>{
   e.preventDefault();
   modalEntretelado.classList.remove('modal--show');
 });

   //  CORTE DIGITAL
// cerrar modal al seleccionar corte digital
function selectCorteDigital(id) {

  const selectModalCorteDigital = document.querySelector('.modal--cortedigital');
  seleccionarCorteDigital = id;
  selectModalCorteDigital.classList.remove('modal--show');

  var corteDigitalSeleccionado = seleccionarCorteDigital;
    var action = "infoCorteDigital";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, corteDigitalSeleccionado: corteDigitalSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#preciocortedigital").html("0");
          $("#cantcortedigital").val("0");
          $("#costo--cortedigital").html("0");
          //bloquear cantidad
          $("#cantcortedigital").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggcortedigital").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#descripcioncortedigital").val(data.Descripcion_cortedigital);
          $("#preciocortedigital").html(data.Valor_cortedigital);
          $("#cantcortedigital").val("0");
          $("#costo--cortedigital").html("0");
          //Activar cantidad
          $("#cantcortedigital").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });

  
 };
//modal corte digital
 const openModalCorteDigital = document.querySelector('.buscar--cortedigital');
 const modalCorteDigital = document.querySelector('.modal--cortedigital');
 const cerrarModalCorteDigital = document.querySelector('.modal__btn--cortedigital');
 openModalCorteDigital.addEventListener('click', (e)=>{
   e.preventDefault();
   modalCorteDigital.classList.add('modal--show');
 });
  cerrarModalCorteDigital.addEventListener('click', (e)=>{
   e.preventDefault();
   modalCorteDigital.classList.remove('modal--show');
 }); 

   //  Laser
// cerrar modal al seleccionar laser
function selectLaser(id) {

  const selectModalLaser = document.querySelector('.modal--laser');
  seleccionarLaser = id;
  selectModalLaser.classList.remove('modal--show');

  var laserSeleccionado = seleccionarLaser;
    var action = "infoLaser";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, laserSeleccionado: laserSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#descripcionlaser").html("--");
          $("#preciolaser").html("0");
          $("#cantlaser").val("0");
          $("#costo--laser").html("0");
          //bloquear cantidad
          $("#cantlaser").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#agglaser").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#nombrelaser").val(data.Nombre_laser);
          $("#descripcionlaser").html(data.Descripcion_laser);
          $("#preciolaser").html(data.Valor_laser);
          $("#cantlaser").val("0");
          $("#costo--laser").html("0");
          //Activar cantidad
          $("#cantlaser").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });

  
 };
//modal laser
 const openModalLaser = document.querySelector('.buscar--laser');
 const modalLaser = document.querySelector('.modal--laser');
 const cerrarModalLaser = document.querySelector('.modal__btn--laser');
 openModalLaser.addEventListener('click', (e)=>{
   e.preventDefault();
   modalLaser.classList.add('modal--show');
 });
  cerrarModalLaser.addEventListener('click', (e)=>{
   e.preventDefault();
   modalLaser.classList.remove('modal--show');
 }); 

   //  Bordado
// cerrar modal al seleccionar bordado
function selectBordado(id) {

  const selectModalBordado = document.querySelector('.modal--bordado');
  seleccionarBordado = id;
  selectModalBordado.classList.remove('modal--show');

  var bordadoSeleccionado = seleccionarBordado;
    var action = "infoBordado";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action, bordadoSeleccionado: bordadoSeleccionado},
      success: function (response) {
        if (response == 0) {
          $("#descripcionbordado").html("--");
          $("#preciobordado").html("0");
          $("#cantbordado").val("0");
          $("#costo--bordado").html("0");
          //bloquear cantidad
          $("#cantbordado").attr("disabled", "disabled");
          //ocultar boton agregar
          $("#aggbordado").slideUp();
        } else {
          var data = $.parseJSON(response);
          $("#nombrebordado").val(data.Nombre_bordado);
          $("#descripcionbordado").html(data.Descripcion_bordado);
          $("#preciobordado").html(data.Precio_bordado);
          $("#cantbordado").val("0");
          $("#costo--bordado").html("0");
          //Activar cantidad
          $("#cantbordado").removeAttr("disabled");
        }
      },
      error: function (error) {},
    });

  
 };
//modal bordado
 const openModalBordado = document.querySelector('.buscar--bordado');
 const modalBordado = document.querySelector('.modal--bordado');
 const cerrarModalBordado = document.querySelector('.modal__btn--bordado');
 openModalBordado.addEventListener('click', (e)=>{
   e.preventDefault();
   modalBordado.classList.add('modal--show');
 });
  cerrarModalBordado.addEventListener('click', (e)=>{
   e.preventDefault();
   modalBordado.classList.remove('modal--show');
 });  

// buscar detalles temporales tela
function serchForDetalle() {
    var action = "serchForDetalle";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detatela").html(info.detalle);
          $("#telatotal").html(info.totales);
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
};
//buscar detalles temporales cuero
  function serchForDetalleCuero() {
    var action = "serchForDetalleCuero";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detacuero").html(info.detalle);
          $("#cuerototal").html(info.totales);
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  };
//buscar detalles temporales insumo
  function serchForDetalleInsumo() {
    var action = "serchForDetalleInsumo";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detainsumo").html(info.detalle);
          $("#insumototal").html(info.totales);
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  };
//buscar detalles temporales sublimacion y mostrarlos
  function serchForDetalleSublimacion() {
    var action = "serchForDetalleSublimacion";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detasublimacion").html(info.detalle);
          $("#sublimaciontotal").html(info.totales);
        const tbDetaSubli = document.querySelector(".tbdetasublimacion");
        tbDetaSubli.classList.add("tbprocesos--show");
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  };
//buscar detalles temporales corte manual y mostrarlos
  function serchForDetalleCorteManual() {
    var action = "serchForDetalleCorteManual";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detacortemanual").html(info.detalle);
          $("#cortemanualtotal").html(info.totales);
        const tbDetaCorteManual = document.querySelector(".tbdetacortemanual");
        tbDetaCorteManual.classList.add("tbprocesos--show");
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  };
  //buscar detalles temporales confección y mostrarlos
  function serchForDetalleConfeccion() {
    var action = "serchForDetalleConfeccion";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detaconfeccion").html(info.detalle);
          $("#confecciontotal").html(info.totales);
        const tbDetaConfeccion = document.querySelector(".tbdetaconfeccion");
        tbDetaConfeccion.classList.add("tbprocesos--show");
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  };
   //buscar detalles temporales terminación y mostrarlos
   function serchForDetalleTerminacion() {
    var action = "serchForDetalleTerminacion";

    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != 'error') {
          var info = JSON.parse(response);
          $("#detaterminacion").html(info.detalle);
          $("#terminaciontotal").html(info.totales);
        const tbDetaTerminacion = document.querySelector(".tbdetaterminacion");
        tbDetaTerminacion.classList.add("tbprocesos--show");
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  };
    //buscar detalles temporales entretelado y mostrarlos
    function serchForDetalleEntretelado() {
      var action = "serchForDetalleEntretelado";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action },
        success: function (response) {
          if (response != 'error') {
            var info = JSON.parse(response);
            $("#detaentretelado").html(info.detalle);
            $("#entreteladototal").html(info.totales);
          const tbDetaEntretelado = document.querySelector(".tbdetaentretelado");
          tbDetaEntretelado.classList.add("tbprocesos--show");
          } else {
            console.log("no data");
          }
        },
        error: function (error) {},
      });
    };
    //buscar detalles temporales corte digital y mostrarlos
    function serchForDetalleCorteDigital() {
      var action = "serchForDetalleCorteDigital";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action },
        success: function (response) {
          if (response != 'error') {
            var info = JSON.parse(response);
            $("#detacortedigital").html(info.detalle);
            $("#cortedigitaltotal").html(info.totales);
          const tbDetaCorteDigital = document.querySelector(".tbdetacortedigital");
          tbDetaCorteDigital.classList.add("tbprocesos--show");
          } else {
            console.log("no data");
          }
        },
        error: function (error) {},
      });
    };    
    //buscar detalles temporales laser y mostrarlos
    function serchForDetalleLaser() {
      var action = "serchForDetalleLaser";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action },
        success: function (response) {
          if (response != 'error') {
            var info = JSON.parse(response);
            $("#detalaser").html(info.detalle);
            $("#lasertotal").html(info.totales);
          const tbDetaLaser = document.querySelector(".tbdetalaser");
          tbDetaLaser.classList.add("tbprocesos--show");
          } else {
            console.log("no data");
          }
        },
        error: function (error) {},
      });
    };   
    //buscar detalles temporales bordado y mostrarlos
    function serchForDetalleBordado() {
      var action = "serchForDetalleBordado";
  
      $.ajax({
        type: "POST",
        url: "ajax.php",
        async: true,
        data: { action: action },
        success: function (response) {
          if (response != 'error') {
            var info = JSON.parse(response);
            $("#detabordado").html(info.detalle);
            $("#bordadototal").html(info.totales);
          const tbDetaBordado = document.querySelector(".tbdetabordado");
          tbDetaBordado.classList.add("tbprocesos--show");
          } else {
            console.log("no data");
          }
        },
        error: function (error) {},
      });
    };         