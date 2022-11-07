$(document).ready(function () {
    $("#search").on("change", function () {
        var date = $("#search").val();
        var action = "searchCostos";

        $.ajax({
            type: "POST",
            url: "ajax.php",
            async: true,
            data: {
                action: action,
                date: date
            },
            success: function (response) {
                if (response != "error") {
                    var info = JSON.parse(response);
                    $("#costos").html(info.detalle);
                } else {
                    console.log("no data");
                }
            }
        });
    });
});
serchForDetalle();
// buscar detalles temporales tela
function serchForDetalle() {
    var action = "serchForDetalleCostos";
    $.ajax({
      type: "POST",
      url: "ajax.php",
      async: true,
      data: { action: action },
      success: function (response) {
        if (response != "error") {
          var info = JSON.parse(response);
          $("#costos").html(info.detalle);
        } else {
          console.log("no data");
        }
      },
      error: function (error) {},
    });
  }
  function confirmacion(e) {
    if (confirm("¿Está seguro que desea eliminar este registro?")) {
        return true;
    } else {
        event.preventDefault();
    }
}
if (window.history.replaceState) { // verificamos disponibilidad
    window.history.replaceState(null, null, window.location.href);
}