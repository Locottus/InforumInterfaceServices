console.log(autor);
var idProyecto;
var proyecto;



$(document).ready(function () {
    $('#proyectosDropDown').on('change', function () {
        //var optionValue = $(this).val();
        //var optionText = $('#dropdownList option[value="'+optionValue+'"]').text();
        proyecto = $("#proyectosDropDown option:selected").text();
        idProyecto = $(this).val();
        //alert("Selected Option Text: " + proyecto + " " + idProyecto);
        window.sessionStorage.setItem("proyecto", proyecto);
        window.sessionStorage.setItem("idProyecto", idProyecto);
    });
    //return false;


    $('#submit').on('click', function () {
        var usuario = $("#inputEmail").val();
        var password = $("#inputPassword").val();
        var t = "0";

        window.sessionStorage.setItem("usuario", usuario);
        window.sessionStorage.setItem("password", password);

        var r = url + "api/Registro?usr=" + usuario + "&pwd=" + password + "&proyecto=" + idProyecto
        if (idProyecto > 0 && usuario.length > 0 && password.length > 0) {

            $.get(r, function (data) {
                //console.log(data);
                var jsonData = JSON.parse(data);
                window.sessionStorage.setItem("token", jsonData.token);
                t = jsonData.token;
                console.log(t);
                if (t.length > 1) {
                    $(location).attr('href', 'menu.html');
                } else {
                    errTxt("Error al ingresar las credenciales, intente nuevamente.");
                    //$("#warning").text( "Revise las credenciales para ingresar");
                }
            });

        } else {
            errTxt("Revise las credenciales para ingresar");
            //console.log("revise las credenciales para ingresar");
        }

    });



    $.get(url + "api/proyecto", function (data) {
        //console.log(data);
        //var myObject = JSON.parse(data);
        var jsonData = JSON.parse(data);
        for (var i = 0; i < jsonData.length; i++) {
            var counter = jsonData[i];
            //console.log(counter.id + ":" + counter.nombre);
            $('#proyectosDropDown').append($('<option>', {
                value: counter.id,
                text: counter.nombre
            }));
        }
        //return false;
    });
    return false;
});





function errTxt(mensaje) {//snack function
    var x = document.getElementById("snackbar");
    $("#snackbar").text(mensaje);
    x.className = "show";
    setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
    return false;
}