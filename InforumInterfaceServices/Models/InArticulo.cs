using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InArticulo
    {
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public int CodeDepartamento { get; set; }
        public string NameDepartamento { get; set; }
        public double PrecioMinimo { get; set; }
        public string Garantia { get; set; }
        public string U_FAMILIA { get; set; }
        public string U_SUBFAMILIA { get; set; }
        public int Procesado { get; set; }
    }
}