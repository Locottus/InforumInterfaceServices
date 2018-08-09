using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class PagosCheques_D
    {
        public double Cod_Pagos_H { get; set; }
        public int BPLID { get; set; }
        public int Cod_PagosCheques_D { get; set; }
        public string DueDate { get; set; }
        public string CheckNumber { get; set; }
        public string BankCode { get; set; }
        public double CheckSum { get; set; }
        public string CheckAccount { get; set; }
        public string Currency { get; set; }
        public string CountryCode { get; set; }
    }
}