using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class PagosCuentas_D
    {
        public double Cod_Pagos_H { get; set; }
        public int BPLID { get; set; }
        public int Cod_PagosCuentas_D { get; set; }
        public string AcctCode { get; set; }
        public double SumApplied { get; set; }
        public string ProfitCenter { get; set; }
        public string Project { get; set; }
        public string ProfitCenter2 { get; set; }
        public string ProfitCenter3 { get; set; }
        public string ProfitCenter4 { get; set; }
        public string ProfitCenter5 { get; set; }

        public string Description { get; set; }
    }
}