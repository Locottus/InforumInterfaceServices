console.log(url + "api/proyecto");
token = "";//reinicializada la variable de autenticacion
var warning = "";

function cargaDropDownProyectos() {
    console.log(autor);
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
    });
}


$(document).ready(function () {
    $('#proyectosDropDown').on('change', function () {
        //var optionValue = $(this).val();
        //var optionText = $('#dropdownList option[value="'+optionValue+'"]').text();
        proyecto = $("#proyectosDropDown option:selected").text();
        idProyecto = $(this).val();
        //alert("Selected Option Text: " + proyecto + " " + idProyecto);
    });
});


/*
document.getElementById("submit").onclick .onclick = function () {
    
    usuario = $("#inputEmail").val;
    if (idProyecto > 0 && usuario.length > 0) {
        console.log("presionado! y bien " + idProyecto + " " + usuario);
        //$(location).attr('href', 'menu.html')
        //window.location.href('menu.html');
        location.href = "menu.html";

    } else {
        console.log("revise las credenciales para ingresar");
        $("#warning").text("revise las credenciales para ingresar");
    }

};
*/

/*
$(document).ready(function () {
    $('#submit').on('click', function () {
        usuario = $("#inputEmail").val;
        if (idProyecto > 0 && usuario.length > 0) {
            console.log("presionado! y bien " + idProyecto + " " + usuario);
            //$(location).attr('href', 'menu.html')
            window.location.href('menu.html');


        } else {
            console.log("revise las credenciales para ingresar");
            $("#warning").text( "revise las credenciales para ingresar");
        }
            //alert("revise las credenciales");

    });
}); */





$(function () {

    var submit = function () {
        usuario = $("#inputEmail").val;
        if (idProyecto > 0 && usuario.length > 0) {
            console.log("presionado! y bien " + idProyecto + " " + usuario);
            //$(location).attr('href', 'menu.html')
            //window.location.href('menu.html');


        } else {
            console.log("revise las credenciales para ingresar");
            $("#warning").text("revise las credenciales para ingresar");
        }
    };

    $("#submit").click(submit);

});


