using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InMerca_S
    {
        public int DocNum { get; set; }
        public int LineNum { get; set; }
        public string ItemCode { get; set; }
        public string SerieFabricante { get; set; }
        public string NumeroSerie { get; set; }
        public string SerieLote { get; set; }
        public string FechaVencimiento { get; set; }
        public string FechaFabricacion { get; set; }
        public string FechaAdmision { get; set; }
        public string FechaIniGarantia { get; set; }
        public string FechaFinGarantia { get; set; }
        public int Procesado { get; set; }
    }
}