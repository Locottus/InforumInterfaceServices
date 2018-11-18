
$(document).ready(function () {

    $.post(
        //"http://simpleone.cloudapp.net/simpleone/api/ARTICULOS/ObtieneArticulos",
    "http://localhost:15220/api/ARTICULOS/ObtieneArticulos",
        {},
        function (data) {

            var response = jQuery.parseJSON(data);
            //console.log(response);

            $("#jsGrid").jsGrid({
                width: "100%",
                height: "500px",


                heading: true,
                inserting: true,
                editing: true,
                sorting: true,
                paging: true,
                autoload: true,
                noDataContent: "Not found",
                confirmDeleting: true,
                deleteConfirm: "Are you sure?",
                pageIndex: 1,
                pageSize: 20,
                pageButtonCount: 15,
                pagerFormat: "Pages: {first} {prev} {pages} {next} {last}    {pageIndex} of {pageCount}",
                pagePrevText: "Prev",
                pageNextText: "Next",
                pageFirstText: "First",
                pageLastText: "Last",
                pageNavigatorNextText: "...",
                pageNavigatorPrevText: "...",
                loadIndication: true,
                loadIndicationDelay: 500,
                loadMessage: "Please, wait...",
                loadShading: true,
                updateOnResize: true,
                rowRenderer: null,
                headerRowRenderer: null,
                filterRowRenderer: null,
                insertRowRenderer: null,
                editRowRenderer: null,

                invalidNotify: function (args) { /*funcion aqui*/ },
                invalidMessage: "Invalid data entered!",
                onItemInserted: function (item) { console.log(item + " Inserted"); },
                onItemUpdated: function (item) { console.log(item + " Updated"); },
                onItemDeleted: function (item) { console.log(item + " Deleted"); },

                data: response,

                fields: [
                    { name: "AvgPrice", type: "number", width: 150 },
                    { name: "Cod_Empresa", type: "number", width: 150 },
                    { name: "FrgnName", type: "text", width: 150 },
                    { name: "ItemCode", type: "number", width: 150 },
                    { name: "ItemName", type: "number", width: 150 },
                    { name: "ItmsGrpCod", type: "number", width: 150 },
                    { name: "Procesado", type: "number", width: 150 },
                    { name: "U_CatFamilia", type: "number", width: 150 },
                    { name: "U_Catalogo", type: "number", width: 150 },
                    { name: "U_CodigoAnterior", type: "number", width: 150 },
                    { name: "U_Decorado", type: "number", width: 150 },
                    { name: "U_Dimensional", type: "number", width: 150 },
                    { name: "U_Distintivo", type: "number", width: 150 },
                    { name: "U_Estado", type: "number", width: 150 },
                    { name: "U_Familia", type: "number", width: 150 },
                    { name: "U_FechaCompra", type: "number", width: 150 },
                    { name: "U_Gasto", type: "number", width: 150 },
                    { name: "U_Hoja", type: "number", width: 150 },
                    { name: "U_IdMarca", type: "number", width: 150 },
                    { name: "U_Linea", type: "number", width: 150 },
                    { name: "U_Nacionalidad", type: "number", width: 150 },
                    { name: "U_Neto", type: "number", width: 150 },
                    { name: "U_NetoEsp", type: "number", width: 150 },
                    { name: "U_NetoFin", type: "number", width: 150 },
                    { name: "U_Oferta", type: "number", width: 150 },
                    { name: "U_Ofertado", type: "number", width: 150 },
                    { name: "U_Piezas", type: "number", width: 150 },
                    { name: "U_PreOferta", type: "number", width: 150 },
                    { name: "U_Precio", type: "number", width: 150 },
                    { name: "U_Proveedor", type: "number", width: 150 },
                    { name: "U_Rango", type: "number", width: 150 },
                    { name: "U_SubGrupo", type: "number", width: 150 },
                    { name: "U_Tamanio", type: "number", width: 150 },
                    { name: "U_Temporada", type: "number", width: 150 },
                    { name: "U_TipoA2", type: "number", width: 150 },
                    { name: "U_TipoCompra", type: "number", width: 150 },
                    { name: "U_UltCompra", type: "number", width: 150 },
                    { type: "control" }
                ]
            });
        });


});