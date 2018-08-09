using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class FactCl_D
    {
        public int Cod_FactCl_H { get; set; }
        public int Cod_FactCl_D { get; set; }
        public string U_FacSerie { get; set; }
        public int BPLID { get; set; }
        public string SAPSerie { get; set; }
        public string ItemCode { get; set; }
        public string Dscription { get; set; }
        public string WhsCode { get; set; }
        public double Quantity { get; set; }
        public double PriceAftVat { get; set; }
        public string TaxCode { get; set; }
        public string AcctCode { get; set; }
        public string OcrCode { get; set; }
        public string OcrCode2 { get; set; }
        public string OcrCode3 { get; set; }
        public string OcrCode4 { get; set; }
        public string UoMEntry { get; set; }
        public double DiscPrcnt { get; set; }
        public double Porcent_Comision { get; set; }
        public double Monto_Comision { get; set; }
    }
}