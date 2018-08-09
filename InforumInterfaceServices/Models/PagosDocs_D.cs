using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class PagosDocs_D
    {
        public double Cod_Pagos_H { get; set; }
        public int Cod_PagosDocs_D { get; set; }
        public int BPLID { get; set; }
        public string U_FacSerie { get; set; }
        public string SAPSerie { get; set; }
        public string U_TipoDoc { get; set; }
        public double SumApplied { get; set; }
    }
}

