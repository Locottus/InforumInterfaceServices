using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InInv_D
    {
        public int DocNum { get; set; }
        public int LineNum { get; set; }
        public string ItemCode { get; set; }
        public string Dscription { get; set; }
        public string WhsCode { get; set; }
        public string AcctCode { get; set; }
        public double Quantity { get; set; }
        public double PriceUnit { get; set; }
        public double Price { get; set; }
        public int Procesado { get; set; }
    }
}