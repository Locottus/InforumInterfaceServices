using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InTraslados_D
    {
        public int DocNum { get; set; }
        public int LineNum { get; set; }
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
        public double Quantity { get; set; }
        public string WhsOrigen { get; set; }
        public string WhsDestino { get; set; }
        public string SerieFabricante { get; set; }
        public string NumeroSerie { get; set; }
        public string SerieLote { get; set; }
        public int Procesado { get; set; }
    }
}