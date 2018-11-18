
$(document).ready(function () {
    $('#content').load("default.html");
    $("#defaultView").on("click", function () {
        $('#content').load("default.html");
    });

    $("#Articulos").on("click", function () {
        $('#content').load("articulos.html");
    });
    $("#faseSolicitud").on("click", function () {
        $('#content').load("dummy.html");
    });
    $("#maestroSolicitud").on("click", function () {
        $('#content').load("dummy.html");
    });
    $("#detalleSolicitud").on("click", function () {
        $('#content').load("dummy.html");
    });



    var t = sessionStorage.getItem("token");
    if (t == null) {
        //errTxt("Aviso!, No se ha registrado en el sistema.")
        $(location).attr('href', 'index.html');
        console.log("on doc ready");
    }

    return false;
});
function errTxt(mensaje) {//snack function
    var x = document.getElementById("snackbar");
    $("#snackbar").text(mensaje);
    x.className = "show";
    setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
    return false;
}


