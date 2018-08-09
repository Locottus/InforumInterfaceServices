using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InListaKit_D
    {
        public string Cod_Kit_H { get; set; }
        public string Articulo { get; set; }
        public string Descripcion { get; set; }
        public double Cantidad { get; set; }
        public string Almacen { get; set; }
        public int Procesado { get; set; }
    }
}