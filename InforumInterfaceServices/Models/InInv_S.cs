using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InInv_S
    {
public int DocNum { get; set; }
        public int LineNum { get; set; }
        public string ItemCode { get; set; }
        public string Dscription { get; set; }
        public string SerieFabricante { get; set; }
        public string NumeroSerie { get; set; }
        public string SerieLote { get; set; }
        public string FechaExp { get; set; }
        public string FechaManu { get; set; }
        public string FechaAdmi { get; set; }
        public string FechaIni { get; set; }
        public string FechaEnd { get; set; }
        public int Procesado { get; set; }
    }
}